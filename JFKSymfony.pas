unit JFKSymfony;

interface

uses Classes, Windows, SysUtils, Forms, Zip, JFKProgress,
  System.Generics.Collections, JFKConsole, JFKConnection;

type

  TJFKSymfony = class
  private
    FEvent: TJFKProgressLogEvent;
    FCurrent, FMax: integer;
    function GetStringAsYML(Str: String): String;
    function GetDriverAttribs(Connection: TJFKConnection)
      : TDictionary<string, string>;
    procedure DoEvent(Msg: PAnsiChar; State: TJFKProgressState);
    function GetValidTableName(TableName: String): String;
    procedure CreateSecurity(args: TDictionary<string, Variant>);
    procedure UpdateUserEntity(args: TDictionary<string, Variant>);
    procedure UpdateUserController(args: TDictionary<string, Variant>);
  public
    class function GetFileTypes: TStrings;
    class function GetTemplateTypes: TStrings;
    function Decompress(FileName: String; Folder: String): boolean;
    procedure Install(args: TDictionary<String, Variant>;
      Event: TJFKProgressLogEvent);
    procedure CreateDataBaseSupport(OutputFolder: String; BundleFolder: string;
      BundleName: String; OutType: String; NameSpace: String;
      TemplateFormat: String; Connection: TJFKConnection; Tables: TStrings);
    procedure CreateRutes(NameSpace: String; OutputFolder: String;
      BundleName: String; BundleFolder: String;
      Rutes: TDictionary<string, string>; CreateIndiv: boolean = false);
  end;

implementation

uses Variants, JFKSQLServerConnection, JFKMySQLConnection, JFKSQLLiteConnection,
  JFKPostGresConnection, JFKStrings;
{ TJFKSymfony }

procedure TJFKSymfony.CreateDataBaseSupport(OutputFolder: String;
  BundleFolder: string; BundleName: String; OutType: String; NameSpace: String;
  TemplateFormat: String; Connection: TJFKConnection; Tables: TStrings);
var
  F: TStringList;
  A: TDictionary<string, string>;
  paramfile: string;
  I: integer;
  n, b, s: String;

begin
  Inc(FMax, Tables.Count * 3 + 6);

  paramfile := 'app\config\parameters';
  A := GetDriverAttribs(Connection);
  F := TStringList.Create;
  F.Add('# This file is auto-generated during the composer install');
  F.Add('parameters:');
  F.Add('    database_driver : ' + A['DriverName']);
  F.Add('    database_host : ' + A['Instance']);
  F.Add('    database_port : ' + A['Port']);
  F.Add('    database_name : ' + A['DB']);
  F.Add('    database_user : ' + A['User']);
  F.Add('    database_password : ' + A['Pass']);
  F.Add('    mailer_transport: smtp');
  F.Add('    mailer_host: 127.0.0.1');
  F.Add('    mailer_user: null');
  F.Add('    mailer_password: null');
  F.Add('    locale: en');
  F.Add('    secret: ThisTokenIsNotSoSecretChangeIt');
  if FileExists(OutputFolder + '\' + paramfile + '.ini') then
    F.SaveToFile(OutputFolder + '\' + paramfile + '.ini')
  else if FileExists(OutputFolder + '\' + paramfile + '.yml') then
    F.SaveToFile(OutputFolder + '\' + paramfile + '.yml');
  if FileExists(OutputFolder + '\' + paramfile + '.ini.dist') then
    F.SaveToFile(OutputFolder + '\' + paramfile + '.ini.dist')
  else if FileExists(OutputFolder + '\' + paramfile + '.yml.dist') then
    F.SaveToFile(OutputFolder + '\' + paramfile + '.yml.dist');
  DoEvent('Configuración de base de datos ', syOk);
  DoEvent('Generando datos de tablas ', syOk);
  n := TJFKStrings.LeftFromPoint(NameSpace, '/');
  b := TJFKStrings.RightFromPoint(NameSpace, '/');
  for I := 0 to Tables.Count - 1 do
  begin
    { s := 'php ' + OutputFolder +
      '\app\console doctrine:mapping:import --filter="' +
      GetValidTableName(Tables[I]) + '" ' + BundleName + ' ' + OutType;
    }
    s := 'php ' + OutputFolder +
      '\app\console doctrine:mapping:convert xml --filter="' +
      GetValidTableName(Tables[I]) + '" ./src/' + n + '/' + b +
      '/Resources/config/doctrine/metadata/orm --from-database --force ';
    TJFKConsole.CaptureConsoleOutput(s, '',
      procedure(const Line: PAnsiChar)
      begin
        if (Pos('exception', LowerCase(Line)) = 0) and
          (Pos('error', LowerCase(Line)) = 0) then
          DoEvent(Line, syOk)
        else
          DoEvent(Line, syError);
      end);
    s := 'php ' + OutputFolder + '\app\console doctrine:mapping:import ' +
      BundleName + ' annotation --filter="' + GetValidTableName
      (Tables[I]) + '" ';
    TJFKConsole.CaptureConsoleOutput(s, '',
      procedure(const Line: PAnsiChar)
      begin
        if (Pos('exception', LowerCase(Line)) = 0) and
          (Pos('error', LowerCase(Line)) = 0) then
          DoEvent(Line, syOk)
        else
          DoEvent(Line, syError);
      end);
  end;
  s := 'php ' + OutputFolder + '\app\console doctrine:generate:entities ' +
    BundleName + ' ';
  { php app/console doctrine:mapping:convert xml ./src/Acme/BlogBundle/Resources/config/doctrine/metadata/orm --from-database --force


    php app/console doctrine:mapping:import AcmeBlogBundle annotation
    php app/console doctrine:generate:entities AcmeBlogBundle }
  DoEvent('Generando entidades ', syOk);
  TJFKConsole.CaptureConsoleOutput(s, '',
    procedure(const Line: PAnsiChar)
    begin
      if (Pos('exception', LowerCase(Line)) = 0) and
        (Pos('error', LowerCase(Line)) = 0) then
        DoEvent(Line, syOk)
      else
        DoEvent(Line, syError);
    end);
  { DoEvent('Generando controladores ', syOk);
    for I := 0 to Tables.Count - 1 do
    begin
    s := 'php ' + OutputFolder +
    '\app\console generate:controller  --controller="' + BundleName + ':' +
    GetValidTableName(Tables[I]) + '"  --template-format="' + TemplateFormat +
    '" --route-format="' + OutType + '" --no-interaction';
    TJFKConsole.CaptureConsoleOutput(s, '',
    procedure(const Line: PAnsiChar)
    begin
    if (Pos('exception', LowerCase(Line)) = 0) and
    (Pos('error', LowerCase(Line)) = 0) then
    DoEvent(Line, syOk)
    else
    DoEvent(Line, syError);
    end);
    end; }
  F.Clear;
  DoEvent('Generando CRUDs ', syOk);
  for I := 0 to Tables.Count - 1 do
  begin
    s := 'php ' + OutputFolder +
      '\app\console doctrine:generate:crud  --entity="' + BundleName + ':' +
      GetValidTableName(Tables[I]) + '" --with-write --format="' + 'yml' +
      '" --route-prefix="/' +

      LowerCase(GetValidTableName(Tables[I])) +
      '" --overwrite  --no-interaction';
    TJFKConsole.CaptureConsoleOutput(s, '',
      procedure(const Line: PAnsiChar)
      begin
        if (Pos('exception', LowerCase(Line)) = 0) and
          (Pos('error', LowerCase(Line)) = 0) then
        begin
          if (Pos('failed', LowerCase(Line)) = 0) then
            DoEvent(Line, syOk)
          else if I = 0 then
            DoEvent(Line, syWarning)
          else
          begin
            DoEvent('Importing the CRUD routes:OK', syOk);
            DoEvent('You can now start using the generated code!', syOk);
          end;
        end
        else
          DoEvent(Line, syWarning);
      end);
    F.Add(LowerCase(n) + TJFKStrings.SearchAndReplace(LowerCase(b), 'bundle',
      '') + '_' + LowerCase(GetValidTableName(Tables[I])) + ':');
    F.Add('    resource: "@' + BundleName + '/Resources/config/routing/' +
      LowerCase(GetValidTableName(Tables[I])) + '.' + 'yml' + '"');
    F.Add('    prefix: /' + LowerCase(GetValidTableName(Tables[I])))
  end;
  F.Add('adminindex: ');
  F.Add('   pattern: /admin');
  F.Add('   defaults: {  _controller:OnTheRoadOnTheRoadBundle:Admin:index}');

  F.SaveToFile(BundleFolder + '\' + n + '\' + b +
    '\Resources\config\routing.yml');

  { DoEvent('Generando Formularios ', syOk);
    for I := 0 to Tables.Count - 1 do
    begin
    s := 'php ' + OutputFolder + '\app\console doctrine:generate:form ' +
    GetValidTableName(Tables[I]) + '     --no-interaction';
    TJFKConsole.CaptureConsoleOutput(s, '',
    procedure(const Line: PAnsiChar)
    begin
    if (Pos('exception', LowerCase(Line)) = 0) and
    (Pos('error', LowerCase(Line)) = 0) then
    DoEvent(Line, syOk)
    else
    DoEvent(Line, syError);
    end);
    end; }
end;

procedure TJFKSymfony.CreateRutes(NameSpace: String; OutputFolder: String;
BundleName: String; BundleFolder: String; Rutes: TDictionary<string, string>;
CreateIndiv: boolean = false);
var
  F: TStringList;
  I: integer;
  k: TArray<string>;
  n, b: string;
begin
  n := TJFKStrings.LeftFromPoint(NameSpace, '/');
  b := TJFKStrings.RightFromPoint(NameSpace, '/');

  F := TStringList.Create;
  F.Add(LowerCase(n) + '_' + LowerCase(TJFKStrings.SearchAndReplace(b, 'Bundle',
    '')) + ':');
  F.Add('    resource: "@' + BundleName + '/Resources/config/routing.yml"');
  F.Add('    prefix:   /');

  k := Rutes.Keys.ToArray;
  F.Add('index:');
  F.Add('  pattern: /');
  F.Add('  defaults: { _controller:' + BundleName + ':Default:index }');

  F.Add('login:    ');
  F.Add('  pattern: /login ');
  F.Add('  defaults: { _controller:OnTheRoadOnTheRoadBundle:TUser:login } ');
  F.Add('logout:   ');
  F.Add('  pattern: /logout    ');
  // F.Add('  defaults: { _controller:OnTheRoadOnTheRoadBundle:TUser:logout } ');
  F.Add('check:  ');
  F.Add('  pattern: /check ');
  // F.Add('  defaults: { _controller:OnTheRoadOnTheRoadBundle:TUser:check } ');
  F.Add('register:  ');
  F.Add('  pattern: /register ');
  F.Add('  defaults: { _controller:OnTheRoadOnTheRoadBundle:TUser:register } ');

  if CreateIndiv then

    for I := 0 to Rutes.Count - 1 do
    begin
      F.Add(k[I] + ':');
      F.Add('    pattern: ' + TJFKStrings.LeftFromPoint(Rutes[k[I]], ';'));
      F.Add('    defaults: { _controller:' + TJFKStrings.RightFromPoint
        (Rutes[k[I]], ';') + ' } ');

    end
  else
  begin
    F.Add('route:');
    F.Add('    pattern: /{name}');
    F.Add('    defaults: { _controller:' + BundleName + ':Default:route } ');
  end;
  F.SaveToFile(OutputFolder + '\app\config\routing.yml');
  F.Clear;
  F.Add('<?php');
  F.Add('namespace ' + n + '\' + b + '\Controller;');
  F.Add('use Symfony\Bundle\FrameworkBundle\Controller\Controller;');
  F.Add('class DefaultController extends Controller');
  F.Add('{');
  F.Add('public function indexAction()');
  F.Add('{');
  F.Add('    return $this->render("' + BundleName +
    ':Default:index.html.twig");');
  F.Add('}');

  if CreateIndiv then

    for I := 0 to Rutes.Count - 1 do
    begin
      F.Add('public function ' + k[I] + 'Action()');
      F.Add('{');
      F.Add('    return $this->render("' + BundleName + ':Default:' + k[I] +
        '.html.twig");');
      F.Add('}');

    end
  else
  begin
    F.Add('public function routeAction($name)');
    F.Add('{');
    F.Add('    return $this->render("' + BundleName +
      ':Default:".$name.".html.twig");');
    F.Add('}');

  end;

  F.Add('}');
  F.SaveToFile(BundleFolder + '\' + n + '\' + b +
    '\Controller\DefaultController.php');
  F.Clear;

  for I := 0 to Rutes.Count - 1 do
    F.SaveToFile(BundleFolder + '\' + n + '\' + b + '\Resources\views\Default\'
      + k[I] + '.html.twig');
  F.Clear;
  F.Free;
end;

procedure TJFKSymfony.CreateSecurity(args: TDictionary<string, Variant>);
var
  F: TStrings;
  n, b: string;
  A: TArray<string>;
  L: TList<string>;
  D: TDictionary<string, string>;
  I: integer;
begin
  n := TJFKStrings.LeftFromPoint(args['Namespace'], '/');
  b := TJFKStrings.RightFromPoint(args['Namespace'], '/');
  F := TStringList.Create;
  F.Add('security:');
  F.Add('    encoders:');
  F.Add('        ' + n + '\' + b + '\Entity\' +
    GetValidTableName(args['SecurityTable']) + ': ' + args['SecurityCrypt']);

  F.Add('    role_hierarchy:');
  D := TDictionary<string, string>(integer(args['SecurityRoles']));
  A := D.Keys.ToArray;
  for I := 0 to D.Keys.Count - 1 do
    F.Add('        ' + A[I] + ':       ' + UpperCase(D[A[I]]));

  F.Add('    providers: ');
  F.Add('        main:        ');
  F.Add('            entity:          ');
  F.Add('                class: 	' + n + '\' + b + '\Entity\' +
    GetValidTableName(args['SecurityTable']));
  F.Add('                property: ' + args['SecurityField']);
  F.Add('    firewalls: ');
  F.Add('        dev:   ');
  F.Add('            pattern:  ^/(_(profiler|wdt)|css|images|js)/  ');
  F.Add('            security: false ');

  F.Add('        login:     ');
  F.Add('            pattern:  ^login$');
  F.Add('            security: false  ');
  F.Add('                        ');
  F.Add('        secured_area:  ');
  F.Add('            pattern:    ^' + args['SecurityGlobalPattern']);
  F.Add('            form_login:  ');
  F.Add('                check_path: ' + args['SecurityCheckPattern']);
  F.Add('                login_path: ' + args['SecurityLoginPattern']);
  F.Add('            logout:  ');
  F.Add('                path:   ' + args['SecurityLogoutPattern']);
  F.Add('                target: ' + args['SecurityLogoutTarget']);
  if boolean(args['SecurityAnonimous']) then

    F.Add('            anonymous: ~    ');

  F.Add('    access_control:   ');
  L := TList<string>(integer(args['SecurityAccessControl']));
  for I := 0 to L.Count - 1 do
    F.Add('        - { path: ' + L[I] + ' }');
  F.SaveToFile(args['OutputFolder'] + '\app\config\security.yml');
  F.Free;

  // despues mejoro el systema cuando le ponga el soporte del lenguajge

  UpdateUserEntity(args);
  UpdateUserController(args);
end;

function TJFKSymfony.Decompress(FileName, Folder: String): boolean;
var
  A: TZipFile;
begin
  Application.ProcessMessages;
  A := TZipFile.Create;

  { A.ZipDirectoryContents('c:\Sym.zip', 'C:\xampp\htdocs\Symfony\');

  }

  try
    A.ExtractZipFile(FileName, Folder);
    Result := true;
  except
    Result := false;
  end;

end;

procedure TJFKSymfony.DoEvent(Msg: PAnsiChar; State: TJFKProgressState);
begin
  Inc(FCurrent);
  FEvent(Self, Msg, State, FCurrent, FMax);
end;

function TJFKSymfony.GetDriverAttribs(Connection: TJFKConnection)
  : TDictionary<string, string>;
begin
  Result := TDictionary<String, String>.Create();
  if Connection is TJFKMySQLConnection then
    with TJFKMySQLConnection(Connection) do
    begin
      Result.Add('DriverName', 'pdo_mysql');
      Result.Add('Instance', GetStringAsYML(Instance));
      Result.Add('Port', GetStringAsYML(Port));
      Result.Add('DB', GetStringAsYML(DB));
      Result.Add('User', GetStringAsYML(User));
      Result.Add('Pass', GetStringAsYML(Password));
    end
  else if Connection is TJFKSQLServerConnection then
    with TJFKSQLServerConnection(Connection) do
    begin
      Result.Add('DriverName', 'pdo_sqlserver');
      Result.Add('Instance', GetStringAsYML(Instance));
      Result.Add('Port', GetStringAsYML(''));
      Result.Add('DB', GetStringAsYML(DB));
      Result.Add('User', GetStringAsYML(User));
      Result.Add('Pass', GetStringAsYML(Password));
    end
  else if Connection is TJFKPostGresConnection then
    with TJFKPostGresConnection(Connection) do
    begin
      Result.Add('DriverName', 'pdo_postgre');
      Result.Add('Instance', GetStringAsYML(Instance));
      Result.Add('Port', GetStringAsYML(Port));
      Result.Add('DB', GetStringAsYML(InitialDatabase));
      Result.Add('User', GetStringAsYML(User));
      Result.Add('Pass', GetStringAsYML(Password));
    end
  else if Connection is TJFKSQLLiteConnection then
    with TJFKSQLLiteConnection(Connection) do
    begin
      Result.Add('DriverName', 'pdo_sqlite');
      Result.Add('Instance', GetStringAsYML(Instance));
      Result.Add('Port', GetStringAsYML(''));
      Result.Add('DB', GetStringAsYML(DataBaseFile));
      Result.Add('User', GetStringAsYML(''));
      Result.Add('Pass', GetStringAsYML(''));
    end;

end;

class function TJFKSymfony.GetFileTypes: TStrings;
begin
  Result := TStringList.Create;
  Result.Add('annotation');
  Result.Add('yml');
  Result.Add('xml');
  Result.Add('php');

end;

function TJFKSymfony.GetStringAsYML(Str: String): String;
begin
  if Str = '' then
    Result := 'null'
  else
    Result := Str;
end;

class function TJFKSymfony.GetTemplateTypes: TStrings;
begin
  Result := TStringList.Create;
  Result.Add('twig');
  Result.Add('php');
end;

function TJFKSymfony.GetValidTableName(TableName: String): String;
var
  I: integer;
  m: boolean;
begin
  m := false;
  Result := '';
  for I := 1 to Length(TableName) do
    if (LowerCase(TableName[I]) = 't') and (I = 1) then
      Result := Result + 'T'
    else if (TableName[I] = '_') then
      m := true
    else if m then
    begin
      Result := Result + UpperCase(TableName[I]);
      m := false;
    end
    else
      Result := Result + TableName[I];
end;

procedure TJFKSymfony.Install(args: TDictionary<String, Variant>;
Event: TJFKProgressLogEvent);
var
  s: String;
begin
  FEvent := Event;
  FMax := 8;
  FCurrent := 0;
 { DoEvent('Iniciando extraccion de archivos', syOk);
  if Decompress(args['ZipFile'], args['OutputFolder']) then
    DoEvent('Extraccion completada', syOk)
  else
    DoEvent('Error extrayendo archivos', syError);
  TJFKConsole.CaptureConsoleOutput('php ' + args['OutputFolder'] +
    '\app\console --version', '',
    procedure(const Line: PAnsiChar)
    begin
      if (Pos('exception', LowerCase(Line)) = 0) and
        (Pos('error', LowerCase(Line)) = 0) then
        DoEvent(Line, syOk)
      else
        DoEvent(Line, syError);
    end);
  s := 'php ' + args['OutputFolder'] +
    '\app\console generate:bundle --namespace="' + args['Namespace'] +
    '" --dir="' + args['BundleFolder'] + '" --bundle-name="' +
    args['BundleName'] + '" --format="' + args['OutputFileType'] +
    '" --no-interaction ';
  if StrToBool(args['GenerateAll']) then
    s := s + ' --structure ';
  TJFKConsole.CaptureConsoleOutput(s, '',
    procedure(const Line: PAnsiChar)
    begin
      if (Pos('exception', LowerCase(Line)) = 0) and
        (Pos('error', LowerCase(Line)) = 0) then
        DoEvent(Line, syOk)
      else
        DoEvent(Line, syError);
    end);
  if args['Connection'] <> Variants.Null then
    CreateDataBaseSupport(args['OutputFolder'], args['BundleFolder'],
      args['BundleName'], args['OutputFileType'], args['Namespace'],
      args['TemplateFormat'], TJFKConnection(integer(args['Connection'])),
      TStrings(integer(args['TableList'])));  }
  CreateRutes(args['Namespace'], args['OutputFolder'], args['BundleName'],
    args['BundleFolder'], TDictionary<string, string>(integer(args['Rutes'])),
    args['RutesIndividual']);
  CreateSecurity(args);
end;

procedure TJFKSymfony.UpdateUserController(args: TDictionary<string, Variant>);
var
  n, b: string;
  s: string;
  F: TStrings;
  W: TStrings;
begin

  n := TJFKStrings.LeftFromPoint(args['Namespace'], '/');
  b := TJFKStrings.RightFromPoint(args['Namespace'], '/');
  s := args['BundleFolder'] + '\' + n + '\' + b + '\Resources\views\Admin\';
  CreateDir(s);
  CopyFile(Pchar(string(args['SecurityIndexTemplate'])),
    Pchar(s + ExtractFileName(args['SecurityIndexTemplate'])), false);
  CopyFile(Pchar(string(args['SecurityLoginTemplate'])),
    Pchar(s + ExtractFileName(args['SecurityLoginTemplate'])), false);
  CopyFile(Pchar(string(args['SecurityRegisterTemplate'])),
    Pchar(s + ExtractFileName(args['SecurityRegisterTemplate'])), false);
  CopyFile(Pchar(string(args['SecurityControllerTemplate'])),
    Pchar(string(args['BundleFolder']) + '\' + n + '\' + b + '\Controller\' +
    ExtractFileName(args['SecurityControllerTemplate'])), false);
  F := TStringList.Create;
  F.LoadFromFile(string(args['BundleFolder']) + '\' + n + '\' + b +
    '\Controller\' + GetValidTableName(args['SecurityTable']) +
    'Controller.php');
  F.Insert(3, 'use Symfony\Component\Security\Core\SecurityContext;');
  F.Delete(F.Count - 1);
  W := TStringList.Create;
  W.LoadFromFile(args['SecurityControllerAddon']);
  F.AddStrings(W);
  F.Add('}');
  F.SaveToFile(string(args['BundleFolder']) + '\' + n + '\' + b + '\Controller\'
    + GetValidTableName(args['SecurityTable']) + 'Controller.php');
  W.Free;
  F.Free;
  // falta crear el twig de cada uno de ellos
end;

procedure TJFKSymfony.UpdateUserEntity(args: TDictionary<string, Variant>);
var
  F: TStrings;
  n, b: string;
  t: boolean;
  I: integer;
begin
  n := TJFKStrings.LeftFromPoint(args['Namespace'], '/');
  b := TJFKStrings.RightFromPoint(args['Namespace'], '/');

  F := TStringList.Create;
  F.LoadFromFile(args['BundleFolder'] + '\' + n + '\' + b + '\Entity\' +
    GetValidTableName(args['SecurityTable']) + '.php');
  t := false;
  I := 0;
  while I < F.Count do
  begin
    if (Pos('use', F[I]) > 0) and (Pos('ORM', F[I]) > 0) and (t = false) then
    begin
      F.Insert(I + 1,
        'use Symfony\Component\Security\Core\User\UserInterface;');
      Inc(I);
      t := true;
    end;
    if Pos('class TUser', F[I]) > 0 then
    begin
      F[I] := F[I] + ' implements UserInterface';
      break;
    end;
    Inc(I);
  end;
  F.Delete(F.Count - 1);
  // if F[F.Count-1]='}' then
  // begin

  F.Add(' /**');
  F.Add('   * Returns the roles granted to the user.');
  F.Add('   *     ');
  F.Add('   * <code>*/');
  F.Add('    public function getRoles()');
  F.Add('    { ');
  F.Add('        return array(' + '''' + 'ROLE_USER' + '''' + '); ');
  F.Add('    } ');
  F.Add('   /* * </code> ');
  F.Add('   *   ');

  F.Add('  /**           ');
  F.Add('   * Returns the salt that was originally used to encode the password. ');
  F.Add('   *                   ');
  F.Add('   * This can return null if the password was not encoded using a salt. ');
  F.Add('   *                  ');
  F.Add('   * @return string|null The salt  ');
  F.Add('   */                              ');
  F.Add('  public function getSalt()    ');
  F.Add('  {                            ');
  F.Add('       return false;  ');
  F.Add('  }                       ');

  F.Add('  /** ');
  F.Add('   * Returns the username used to authenticate the user. ');
  F.Add('   *          ');
  F.Add('   * @return string The username   ');
  F.Add('   */         ');
  F.Add('  public function getUsername()     ');
  F.Add('  {                                 ');
  F.Add('      return $this->' + args['SecurityField'] + '; ');
  F.Add('  }                         ');

  F.Add('  /**                                      ');
  F.Add('   * Removes sensitive data from the user.  ');
  F.Add('   *                                          ');
  F.Add('   * This is important if, at any given point, sensitive information like ');
  F.Add('   * the plain-text password is stored on this object. ');
  F.Add('   */                                      ');
  F.Add('  public function eraseCredentials()      ');
  F.Add('  {                                        ');
  F.Add('        return false;   ');
  F.Add('  }    ');
  F.Add(' }    ');
  // end;
  F.SaveToFile(args['BundleFolder'] + '\' + n + '\' + b + '\Entity\' +
    GetValidTableName(args['SecurityTable']) + '.php');

  F.Free;
end;

end.
