unit ApacheServers;

interface

uses Classes;

type
  TJFKApacheServer = class
  private
    FName: String;
    FVersion: String;
    FInstallDir: String;
    FMySqlVersion: String;
    FPhpVersion: String;
    function GetMySqlPath: String;
    function GetPhpPath: String;
    function GetApacheVarState: boolean;
    function GetMySqlVarState: boolean;
    function GetPhpVarState: boolean;

  public
    procedure RegisterVars;
    function HasErrors: boolean;
    property Name: String read FName Write FName;
    property Version: String read FVersion Write FVersion;
    property InstallDir: String read FInstallDir write FInstallDir;
    property PhpVersion: String read FPhpVersion write FPhpVersion;
    property MySQlVersion: String read FMySqlVersion write FMySqlVersion;
    property PhpPath: String read GetPhpPath;
    property MySqlPath: String read GetMySqlPath;
    property ApacheVarState: boolean read GetApacheVarState;
    property PhpVarState: boolean read GetPhpVarState;
    property MySqlVarState: boolean read GetMySqlVarState;

  end;

  TJFKApacheServers = class(TList)

    procedure Load;
  private
    function GetItem(index: integer): TJFKApacheServer;
  public
    procedure LoadFromFile(FileName: String);
    property Items[index: integer]: TJFKApacheServer read GetItem;
  end;

implementation

uses EnviromentVariables, Registry, WIndows;
{ TApacheServers }

function TJFKApacheServers.GetItem(index: integer): TJFKApacheServer;
begin
  Result := TJFKApacheServer(inherited Items[index]);
end;

procedure TJFKApacheServers.Load;
var
  A: TJFKApacheServer;
begin
  A := TJFKApacheServer.Create;
  A.Name := 'XAMPP';
  A.Version := '1810';
  A.InstallDir := 'C:\xampp';
  A.PhpVersion := '5.4.7';
  A.MySQlVersion := '5.3';
  Add(A);

end;

procedure TJFKApacheServers.LoadFromFile(FileName: String);
begin
  Load;
end;

{ TJFKApacheServer }

function TJFKApacheServer.GetApacheVarState: boolean;
begin
  Result := Pos(InstallDir + '\', TJFKEnviromentVars.GetEnvVarValue
    ('Path')) > 0;
end;

function TJFKApacheServer.GetMySqlPath: String;
begin
  Result := InstallDir + '\mysql\'
end;

function TJFKApacheServer.GetMySqlVarState: boolean;
begin
  Result := Pos(MySqlPath, TJFKEnviromentVars.GetEnvVarValue('Path')) > 0;
end;

function TJFKApacheServer.GetPhpPath: String;
begin
  Result := InstallDir + '\php\'
end;

function TJFKApacheServer.GetPhpVarState: boolean;
begin

  Result := Pos(PhpPath, TJFKEnviromentVars.GetEnvVarValue('Path')) > 0;
end;

function TJFKApacheServer.HasErrors: boolean;
begin
  Result := (not PhpVarState) or (not MySqlVarState) or (not ApacheVarState);
end;

procedure TJFKApacheServer.RegisterVars;
var
  s, t: String;
  R: TRegistry;
begin
  t := TJFKEnviromentVars.GetEnvVarValue('Path');
  s := '';
  if (not PhpVarState) then
    s := PhpPath + ';';
  if (not ApacheVarState) then
    s := s + InstallDir + ';';
  if (not MySqlVarState) then
    s := s + MySqlPath + ';';
  if (t <> '') then
    if (t[Length(t)] <> ';') then
      t := t + ';';
  R := TRegistry.Create();
  R.RootKey:=HKEY_LOCAL_MACHINE;
  R.OpenKey('SYSTEM\ControlSet001\Control\Session Manager\Environment',true);
  R.WriteString('Path', t + s);
  // TJFKEnviromentVars.SetEnvVarValue();
end;

end.
