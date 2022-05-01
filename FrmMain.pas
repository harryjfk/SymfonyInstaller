unit FrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,                 JFKBAseConnection,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCustomWizardControl, dxWizardControl,
  dxSkinscxPCPainter, dxLayoutContainer, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxLabel, Vcl.ExtCtrls, dxLayoutLookAndFeels, dxSkinsForm, cxClasses,
  dxLayoutControl, cxTextEdit, cxMaskEdit, cxDropDownEdit, ApacheServers,
  cxImageComboBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, cxButtonEdit, JvBaseDlg, JvBrowseFolder, cxCheckBox,
  dximctrl, cxProgressBar, JFKSymfony, Vcl.ImgList, cxCheckListBox, cxGroupBox,
  JFKConnection, Data.DB, Data.Win.ADODB, JFKADOConnection, Vcl.ComCtrls,
  cxListView, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxmdaset, cxGridLevel, System.Generics.Collections,
  cxGridCustomView, cxGrid, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type

  TForm1 = class(TForm)
    dxWizardControl1: TdxWizardControl;
    PHPGlobalChecker: TdxWizardControlPage;
    SourceFilePage: TdxWizardControlPage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxSkinController1: TdxSkinController;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl1Item1: TdxLayoutItem;
    Image2: TImage;
    dxLayoutControl1Item2: TdxLayoutItem;
    Image1: TImage;
    ApacheLabel: TcxLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    PhpLabel: TcxLabel;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    Image3: TImage;
    dxLayoutControl1Item7: TdxLayoutItem;
    MySqlLabel: TcxLabel;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    ApacheDirLabel: TcxLabel;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    PhpDirLabel: TcxLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    MySqlDirLabel: TcxLabel;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxImageComboBox1: TcxImageComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    CreateVars: TcxButton;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Group8: TdxLayoutGroup;
    ProjectPage: TdxWizardControlPage;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxLabel2: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    JvBrowseForFolderDialog1: TJvBrowseForFolderDialog;
    dxLayoutControl2Item1: TdxLayoutItem;
    FinalAddress: TcxLabel;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxButtonEdit2: TcxButtonEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    ServerDirLabel: TcxLabel;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    NamespaceEdit: TcxTextEdit;
    ProjectEdit: TcxTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    OutputNameSpaceLabel: TcxLabel;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    OutputProjectLabel: TcxLabel;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxButtonEdit3: TcxButtonEdit;
    FileTypeProject: TcxComboBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxCheckBox1: TcxCheckBox;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    ProgressPage: TdxWizardControlPage;
    DriverConnPage: TdxWizardControlPage;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxProgressBar1: TcxProgressBar;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxImageListBox1: TdxImageListBox;
    InstallPage: TdxWizardControlPage;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    DriverComboBox: TcxComboBox;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxLayoutControl5Item3: TdxLayoutItem;
    cxCheckListBox1: TcxCheckListBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl5Item4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl5Item5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    cxImageList1: TcxImageList;
    FinishPage: TdxWizardControlPage;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Item1: TdxLayoutItem;
    dxImageListBox2: TdxImageListBox;
    dxLayoutControl3Item8: TdxLayoutItem;
    TemplateFormat: TcxComboBox;
    RouterPage: TdxWizardControlPage;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl7Item1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1Ruta: TStringField;
    dxMemData1Accion: TStringField;
    cxGrid1DBTableView1RecId1: TcxGridDBColumn;
    cxGrid1DBTableView1Ruta1: TcxGridDBColumn;
    cxGrid1DBTableView1Accion1: TcxGridDBColumn;
    dxLayoutControl7Item2: TdxLayoutItem;
    cxCheckBox2: TcxCheckBox;
    SecurityPage: TdxWizardControlPage;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    SecurityTable: TcxComboBox;
    dxLayoutControl8Item1: TdxLayoutItem;
    LoginPattern: TcxTextEdit;
    dxLayoutControl8Item2: TdxLayoutItem;
    CheckPattern: TcxTextEdit;
    dxLayoutControl8Item3: TdxLayoutItem;
    LogoutPattern: TcxTextEdit;
    dxLayoutControl8Item4: TdxLayoutItem;
    TargetPattern: TcxTextEdit;
    dxLayoutControl8Item5: TdxLayoutItem;
    dxLayoutControl8Item6: TdxLayoutItem;
    SecurityField: TcxComboBox;
    dxLayoutControl8Group1: TdxLayoutGroup;
    dxLayoutControl8Item7: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    dxLayoutControl8Group2: TdxLayoutGroup;
    CryptEdit: TcxComboBox;
    dxLayoutControl8Item8: TdxLayoutItem;
    dxLayoutControl8Item9: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    Anonimous: TcxCheckBox;
    dxLayoutControl8Item10: TdxLayoutItem;
    GlobalPattern: TcxTextEdit;
    dxLayoutControl8Item11: TdxLayoutItem;
    dxLayoutControl8Group3: TdxLayoutGroup;
    dxLayoutControl8Group4: TdxLayoutGroup;
    dxLayoutControl8Group7: TdxLayoutGroup;
    dxMemData2: TdxMemData;
    dxMemData3: TdxMemData;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    dxMemData2Rol: TStringField;
    dxMemData2Value: TStringField;
    dxMemData3Value: TStringField;
    cxGrid2DBTableView1RecId1: TcxGridDBColumn;
    cxGrid2DBTableView1Rol1: TcxGridDBColumn;
    cxGrid2DBTableView1Value1: TcxGridDBColumn;
    cxGrid3DBTableView1RecId1: TcxGridDBColumn;
    cxGrid3DBTableView1Value1: TcxGridDBColumn;
    SecurityTempsPage: TdxWizardControlPage;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dxLayoutControl9Item1: TdxLayoutItem;
    SecRegisterTemp: TcxButtonEdit;
    dxLayoutControl9Item2: TdxLayoutItem;
    SecLoginTemp: TcxButtonEdit;
    dxLayoutControl9Item3: TdxLayoutItem;
    SecIndexTemp: TcxButtonEdit;
    dxLayoutControl9Item4: TdxLayoutItem;
    SecControllerTemp: TcxButtonEdit;
    dxLayoutControl9Item5: TdxLayoutItem;
    SecTableAddon: TcxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxImageComboBox1PropertiesChange(Sender: TObject);
    procedure CreateVarsClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure dxWizardControl1ButtonClick(Sender: TObject;
      AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxMemData1NewRecord(DataSet: TDataSet);

  private
    FPanel: TJFKConnectionPanel;
    FServers: TJFKApacheServers;
    OkInstall: Boolean;
    function GetSelectedServer: TJFKApacheServer;
    procedure UpdateUIServer(Server: TJFKApacheServer = nil);
    procedure UpdateImage(Image: TImage; value: Boolean);
    procedure StartInstall;
    procedure UpdateFinalResult;
    procedure FillDrivers;
    procedure UpdateUiConnection;
    procedure PanelStateChanged(Sender: TObject);
    procedure CheckList(value: Boolean);
    function GetSelectedTables: TStrings;
    function GetRutes: TDictionary<string, string>;
    function GetRoles: TDictionary<string, string>;
    function GetAccessControl: TList<string>;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses JFKProgress, Rtti, JFKStrings;

procedure TForm1.CheckList(value: Boolean);
var
  I: Integer;
begin
  for I := 0 to cxCheckListBox1.Count - 1 do
    cxCheckListBox1.Items[I].Checked := value;
end;

procedure TForm1.CreateVarsClick(Sender: TObject);
begin
  GetSelectedServer.RegisterVars;
  cxLabel1.Caption :=
    'Es necesario que reinice la pc para crear las variables al iniciar el sistema y continuar con la instalacion';

  UpdateUIServer();
end;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
  CheckList(TcxButton(Sender).Tag = 0);
end;

procedure TForm1.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog1.Execute(Handle) then
    if FileExists(OpenDialog1.FileName) then
      TcxButtonEdit(Sender).Text := OpenDialog1.FileName;
end;

procedure TForm1.cxButtonEdit1PropertiesChange(Sender: TObject);
begin
  FinalAddress.Caption := GetSelectedServer.InstallDir +
    TJFKStrings.SearchAndReplace(cxButtonEdit2.Text,
    GetSelectedServer.InstallDir, '');
  dxWizardControl1.Buttons.Next.Enabled := FileExists(cxButtonEdit1.Text) and
    (DirectoryExists(FinalAddress.Caption));

end;

procedure TForm1.cxButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if JvBrowseForFolderDialog1.Execute then
    if DirectoryExists(JvBrowseForFolderDialog1.Directory) then
      TcxButtonEdit(Sender).Text := JvBrowseForFolderDialog1.Directory;

end;

procedure TForm1.cxComboBox1PropertiesChange(Sender: TObject);
begin
  UpdateUiConnection();
end;

procedure TForm1.cxImageComboBox1PropertiesChange(Sender: TObject);
begin
  UpdateUIServer();
end;

procedure TForm1.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  OutputNameSpaceLabel.Caption := NamespaceEdit.Text + '/' + ProjectEdit.Text
    + 'Bundle';
  OutputProjectLabel.Caption := NamespaceEdit.Text + '' + ProjectEdit.Text
    + 'Bundle';
end;

procedure TForm1.dxMemData1NewRecord(DataSet: TDataSet);
begin
  dxMemData1.FieldByName('Ruta').AsString := 'ruta';
  dxMemData1.FieldByName('Accion').AsString := '/pagina;' +
    OutputProjectLabel.Caption + ':Default:action';
end;

procedure TForm1.dxWizardControl1ButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
begin
  if AKind = wcbkNext then
  begin
    if (dxWizardControl1.ActivePage = PHPGlobalChecker) then
      cxButtonEdit1PropertiesChange(cxButtonEdit1)
    else if (dxWizardControl1.ActivePage = SourceFilePage) then
      cxButtonEdit3.Text := FinalAddress.Caption + '\src'
    else if dxWizardControl1.ActivePage = InstallPage then
    begin
      dxWizardControl1.ActivePage := ProgressPage;
      AHandled := true;
      StartInstall();
    end;
    if dxWizardControl1.ActivePage = DriverConnPage then
      dxWizardControl1.Buttons.Next.Caption := 'Install'

  end
  else if AKind = wcbkBack then
    if dxWizardControl1.ActivePage = InstallPage then
      dxWizardControl1.Buttons.Next.Caption := 'Next'
    else if AKind = wcbkFinish then
      Application.Terminate
end;

procedure TForm1.FillDrivers;
var
  T: TList<TRttiType>;
  I: Integer;
  inst: TJFKConnectionClass;
  c: TJFKConnection;
begin
  DriverComboBox.Clear;
  DriverComboBox.Properties.Items.AddObject('Ninguno', nil);
  T := TJFKConnection.GetConnectionClasses;
  for I := 0 to T.Count - 1 do
  begin
    inst := TJFKConnectionClass(TRttiInstanceType(T[I]).MetaclassType);
    c := inst.Create;
    DriverComboBox.Properties.Items.AddObject(c.TypedName, c);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
  itm: TcxImageComboBoxItem;
  A: TStrings;
begin
  FPanel := nil;
  OkInstall := true;
  FServers := TJFKApacheServers.Create;
  FServers.LoadFromFile('');
  for I := 0 to FServers.Count - 1 do
  begin
    itm := cxImageComboBox1.Properties.Items.Add;
    itm.Description := FServers.Items[I].Name;
    itm.value := Integer(FServers.Items[I]);

  end;
  if FServers.Count > 0 then
    cxImageComboBox1.ItemIndex := 0;
  A := TJFKSymfony.GetFileTypes;
  FileTypeProject.Properties.Items.Assign(A);
  FileTypeProject.ItemIndex := 0;
  A.Free;
  A := TJFKSymfony.GetTemplateTypes;
  TemplateFormat.Properties.Items.Assign(A);
  TemplateFormat.ItemIndex := 0;
  A.Free;
  FillDrivers;
  SecControllerTemp.Text := ExtractFilePath(Application.ExeName) +
    'templates\AdminController.php';
  SecIndexTemp.Text := ExtractFilePath(Application.ExeName) +
    'templates\index.html.twig';
  SecLoginTemp.Text := ExtractFilePath(Application.ExeName) +
    'templates\login.html.twig';
  SecRegisterTemp.Text := ExtractFilePath(Application.ExeName) +
    'templates\register.html.twig';
    SecTableAddon.Text := ExtractFilePath(Application.ExeName) +
    'templates\tableaddon.php';
end;

function TForm1.GetAccessControl: TList<string>;
begin
  Result := TList<string>.Create;
  dxMemData3.First;
  while not dxMemData3.Eof do
  begin
    Result.Add(dxMemData3.FieldByName('Value').AsString);
    dxMemData3.Next;
  end;
end;

function TForm1.GetRoles: TDictionary<string, string>;
begin
  Result := TDictionary<string, string>.Create;
  dxMemData2.First;
  while not dxMemData2.Eof do
  begin
    Result.Add(dxMemData2.FieldByName('Rol').AsString,
      dxMemData2.FieldByName('Value').AsString);
    dxMemData2.Next;
  end;
end;

function TForm1.GetRutes: TDictionary<string, string>;
begin
  Result := TDictionary<string, string>.Create;
  dxMemData1.First;
  while not dxMemData1.Eof do
  begin

    Result.Add(dxMemData1.FieldByName('Ruta').AsString,
      dxMemData1.FieldByName('Accion').AsString);
    dxMemData1.Next;
  end;
end;

function TForm1.GetSelectedServer: TJFKApacheServer;
begin
  Result := TJFKApacheServer
    (Integer(cxImageComboBox1.Properties.Items
    [cxImageComboBox1.ItemIndex].value));
end;

function TForm1.GetSelectedTables: TStrings;
var
  I: Integer;
begin
  Result := TStringList.Create;
  for I := 0 to cxCheckListBox1.Count - 1 do
    if cxCheckListBox1.Items[I].Checked then
      Result.Add(cxCheckListBox1.Items[I].Text);
end;

procedure TForm1.PanelStateChanged(Sender: TObject);
var
  A: TStrings;
  T: cxCheckListBox.TcxCheckListBoxItem;
  I: Integer;
begin

  with TJFKConnectionPanel(Sender) do
  begin
    dxLayoutControl5Item3.Enabled := TestState = cstConnected;
    if TestState = cstConnected then
    begin
      TJFKConnectionPanel(Sender).UpdateConnection;
      A := TJFKConnectionPanel(Sender).Connection.GetTables(true, false);
      cxCheckListBox1.Clear;
      for I := 0 to A.Count - 1 do
      begin
        T := cxCheckListBox1.Items.Add;
        T.Text := A[I];
        T.Index := I;
      end;
      // cxCheckListBox1.Items.CheckListBox.Items.AddStrings(A);
      A.Free;
    end
    else
      cxCheckListBox1.Clear;
  end;

end;

procedure ProgressMsgs(Sender: TObject; Msg: string; State: TJFKProgressState;
  pv, pm: Integer);
var
  A, I: Integer;
  ST: TStrings;
begin
  I := 0;
  Form1.cxProgressBar1.Properties.Max := pm;
  Form1.cxProgressBar1.EditValue := pv;
  ST := TJFKStrings.SplitStrings(Msg, chr(13) + chr(10));
  for A := 0 to ST.Count - 1 do
    if (Trim(ST[A]) <> '') then
    begin
      Application.ProcessMessages;
      Form1.dxImageListBox1.Items.Add(Trim(ST[A]));
      if (Pos('failed', LowerCase(ST[A])) > 0) and (State = syOk) then
        State := syError;
      case State of
        syOk:
          begin
            I := 0;
            if (Form1.OkInstall) then
              Form1.OkInstall := true;

          end;
        syError:
          begin
            I := 1;
            Form1.OkInstall := false;
          end;
        syWarning:
          I := 2;
      end;
      Form1.dxImageListBox1.ImageIndexes[Form1.dxImageListBox1.Count - 1] := I
    end;
end;

procedure TForm1.StartInstall;
var
  S: TJFKSymfony;
  A: TDictionary<String, Variant>;

begin
  S := TJFKSymfony.Create;
  A := TDictionary<String, Variant>.Create;
  A.Add('ZipFile', cxButtonEdit1.Text);
  A.Add('OutputFolder', cxButtonEdit2.Text);
  A.Add('Namespace', OutputNameSpaceLabel.Caption);
  A.Add('BundleName', OutputProjectLabel.Caption);
  A.Add('BundleFolder', cxButtonEdit3.Text);
  A.Add('OutputFileType', FileTypeProject.Text);
  A.Add('GenerateAll', BoolToStr(cxCheckBox1.Checked));
  A.Add('TemplateFormat', TemplateFormat.Text);
  if FPanel = nil then
    A.Add('Connection', Null)
  else
  begin
    A.Add('Connection', Integer(FPanel.Connection));
    A.Add('TableList', Integer(GetSelectedTables));
  end;
  A.Add('Rutes', Integer(GetRutes));
  A.Add('RutesIndividual', cxCheckBox2.Checked);
  A.Add('SecurityTable', SecurityTable.Text);
  A.Add('SecurityField', SecurityField.Text);
  A.Add('SecurityLoginPattern', LoginPattern.Text);
  A.Add('SecurityCheckPattern', CheckPattern.Text);
  A.Add('SecurityLogoutPattern', LogoutPattern.Text);
  A.Add('SecurityLogoutTarget', TargetPattern.Text);
  A.Add('SecurityGlobalPattern', GlobalPattern.Text);
  A.Add('SecurityCrypt', CryptEdit.Text);
  A.Add('SecurityAnonimous', Anonimous.Checked);
  A.Add('SecurityRoles', Integer(GetRoles));
  A.Add('SecurityAccessControl', Integer(GetAccessControl));
  A.Add('SecurityIndexTemplate', SecIndexTemp.Text);
  A.Add('SecurityLoginTemplate', SecLoginTemp.Text);
  A.Add('SecurityRegisterTemplate', SecRegisterTemp.Text);
  A.Add('SecurityControllerTemplate', SecControllerTemp.Text);
  A.Add('SecurityControllerAddon', SecTableAddon.Text);

  dxWizardControl1.Buttons.Back.Enabled := false;
  dxWizardControl1.Buttons.Next.Enabled :=
    dxWizardControl1.Buttons.Back.Enabled;
  S.Install(A, nil);
  dxWizardControl1.ActivePage := FinishPage;
  UpdateFinalResult;

  { dxWizardControl1.Buttons.Back.Enabled := true;
    dxWizardControl1.Buttons.Next.Enabled :=
    dxWizardControl1.Buttons.Back.Enabled; }
end;

procedure TForm1.UpdateFinalResult;
var
  h, d: string;
begin
  dxImageListBox2.Assign(dxImageListBox1);
  if OkInstall then
  begin
    h := 'Instalacion Finalizada';
    d := 'Se realizo la instalacion de manera satisfactoria';
  end
  else
  begin
    h := 'Error instalando';
    d := 'Se encontraron errores mientas se realizaba la instalacion.';
  end;
  FinishPage.Header.Title := h;
  FinishPage.Header.Description := d;
end;

procedure TForm1.UpdateImage(Image: TImage; value: Boolean);
var
  Pic: TBitmap;
  I: Integer;
begin
  if value then
    I := 0
  else
    I := 1;
  Pic := TBitmap.Create;
  Pic.Width := 16;
  Pic.Height := 16;
  cxImageList1.GetBitmap(I, Pic);
  Pic.Transparent := true;
  Image.Picture.Graphic := Pic;
end;

procedure TForm1.UpdateUiConnection;
var
  c: TJFKConnection;
begin
  dxLayoutControl5Item3.Enabled := false;
  if FPanel <> nil then
    FreeAndNil(FPanel);
  if DriverComboBox.ItemObject = nil then
    Exit;

  c := TJFKConnection(DriverComboBox.ItemObject);
  cxCheckListBox1.Clear;

  FPanel := c.GetPanel;

  FPanel.OnStateChange := PanelStateChanged;
  FPanel.Parent := cxGroupBox1;
  FPanel.BorderStyle := bsNone;

  FPanel.WindowState := wsMaximized;
  FPanel.Align := alClient;
  FPanel.Show;
end;

procedure TForm1.UpdateUIServer(Server: TJFKApacheServer);
var
  S: TJFKApacheServer;
begin
  if Server = nil then
    S := GetSelectedServer
  else
    S := Server;
  ApacheLabel.Caption := 'Apache ' + S.Version;
  ApacheDirLabel.Caption := S.InstallDir;
  UpdateImage(Image1, S.ApacheVarState);
  PhpLabel.Caption := 'PHP ' + S.PhpVersion;
  PhpDirLabel.Caption := S.PhpPath;
  UpdateImage(Image2, S.PhpVarState);
  MySqlLabel.Caption := 'MySQl ' + S.MySQlVersion;
  MySqlDirLabel.Caption := S.MySqlPath;
  UpdateImage(Image3, S.MySqlVarState);
//  dxWizardControl1.Buttons.Next.Enabled := not S.HasErrors;
  CreateVars.Enabled := S.HasErrors;
  ServerDirLabel.Caption := 'Servidor: Apache ' + S.Version + ' en ' +
    S.InstallDir;
end;

end.
