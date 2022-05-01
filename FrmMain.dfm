object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 432
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxWizardControl1: TdxWizardControl
    Left = 0
    Top = 0
    Width = 566
    Height = 432
    Buttons.CustomButtons.Buttons = <>
    OnButtonClick = dxWizardControl1ButtonClick
    object PHPGlobalChecker: TdxWizardControlPage
      Header.Description = 
        'En este dialogo se comprobara la existencia de los servidores ph' +
        'p y su declaracion global'
      Header.Title = 'Instalacion de PHP'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        ExplicitHeight = 361
        object Image2: TImage
          Left = 10
          Top = 83
          Width = 31
          Height = 34
          Center = True
          Proportional = True
          Transparent = True
        end
        object Image1: TImage
          Left = 10
          Top = 37
          Width = 31
          Height = 36
          Center = True
          Proportional = True
          Transparent = True
        end
        object Image3: TImage
          Left = 10
          Top = 129
          Width = 31
          Height = 34
          Center = True
          Proportional = True
          Transparent = True
        end
        object ApacheLabel: TcxLabel
          Left = 47
          Top = 37
          Caption = 'Apache'
          Style.HotTrack = False
          Transparent = True
        end
        object PhpLabel: TcxLabel
          Left = 47
          Top = 83
          Caption = 'PHP'
          Style.HotTrack = False
          Transparent = True
        end
        object MySqlLabel: TcxLabel
          Left = 47
          Top = 129
          Caption = 'MySQL'
          Style.HotTrack = False
          Transparent = True
        end
        object ApacheDirLabel: TcxLabel
          Left = 47
          Top = 60
          Caption = 'cxLabel1'
          Style.HotTrack = False
          Transparent = True
        end
        object PhpDirLabel: TcxLabel
          Left = 47
          Top = 106
          Caption = 'cxLabel1'
          Style.HotTrack = False
          Transparent = True
        end
        object MySqlDirLabel: TcxLabel
          Left = 47
          Top = 152
          Caption = 'cxLabel1'
          Style.HotTrack = False
          Transparent = True
        end
        object cxImageComboBox1: TcxImageComboBox
          Left = 125
          Top = 10
          Properties.Items = <>
          Properties.OnChange = cxImageComboBox1PropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Width = 409
        end
        object CreateVars: TcxButton
          Left = 419
          Top = 261
          Width = 115
          Height = 25
          Caption = 'Realizar Cambios'
          TabOrder = 8
          OnClick = CreateVarsClick
        end
        object cxLabel1: TcxLabel
          Left = 10
          Top = 261
          Style.HotTrack = False
          Properties.WordWrap = True
          Transparent = True
          Width = 7
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          Control = Image2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          Control = Image1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Control = ApacheLabel
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          Parent = dxLayoutControl1Group7
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          AlignHorz = ahClient
          CaptionOptions.Text = 'PHP'
          CaptionOptions.Visible = False
          Control = PhpLabel
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          Parent = dxLayoutControl1Group3
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          Parent = dxLayoutControl1Group7
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Parent = dxLayoutControl1Group4
          Control = Image3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Control = MySqlLabel
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          Parent = dxLayoutControl1Group7
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Control = ApacheDirLabel
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          Parent = dxLayoutControl1Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Control = PhpDirLabel
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Control = MySqlDirLabel
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Parent = dxLayoutControl1Group7
          AlignHorz = ahClient
          CaptionOptions.Text = 'Servidores disponibles:'
          Control = cxImageComboBox1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Parent = dxLayoutControl1Group8
          AlignHorz = ahRight
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = CreateVars
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Parent = dxLayoutControl1Group8
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group8: TdxLayoutGroup
          Parent = dxLayoutControl1Group7
          AlignVert = avBottom
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
      end
    end
    object SourceFilePage: TdxWizardControlPage
      Header.Description = 'Introduzca las direcciones del proyecto'
      Header.Title = 'Direcciones'
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        ExplicitHeight = 361
        object cxLabel2: TcxLabel
          Left = 20
          Top = 68
          Caption = 'Introduzca la direccion del archivo estandar de Symfony'
          Style.HotTrack = False
          Transparent = True
        end
        object cxButtonEdit1: TcxButtonEdit
          Left = 72
          Top = 41
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Properties.OnChange = cxButtonEdit1PropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Text = 'C:\xampp\htdocs\Symfony 2.3.7 Comp.zip'
          Width = 448
        end
        object FinalAddress: TcxLabel
          Left = 20
          Top = 185
          Caption = 'FinalAddress'
          Style.HotTrack = False
          Transparent = True
        end
        object cxButtonEdit2: TcxButtonEdit
          Left = 72
          Top = 158
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
          Properties.OnChange = cxButtonEdit1PropertiesChange
          Style.HotTrack = False
          TabOrder = 3
          Text = 'C:\xampp\htdocs\MyNewProject'
          Width = 448
        end
        object ServerDirLabel: TcxLabel
          Left = 20
          Top = 135
          Caption = 'Servidor:'
          Style.HotTrack = False
          Transparent = True
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Visible = False
          Control = cxLabel2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'Direccion:'
          Control = cxButtonEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Visible = False
          Control = FinalAddress
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Text = 'Direccion:'
          Control = cxButtonEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Visible = False
          Control = ServerDirLabel
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Archivo zip'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl2Group2: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Carpeta de salida'
          ButtonOptions.Buttons = <>
          Index = 1
        end
      end
    end
    object ProjectPage: TdxWizardControlPage
      Header.Description = 'Defina las propiedades del proyecto'
      Header.Title = 'Proyecto'
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        ExplicitHeight = 361
        object NamespaceEdit: TcxTextEdit
          Left = 135
          Top = 41
          Properties.OnChange = cxTextEdit1PropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Text = 'ACINOX'
          Width = 121
        end
        object ProjectEdit: TcxTextEdit
          Left = 369
          Top = 41
          Properties.OnChange = cxTextEdit1PropertiesChange
          Style.HotTrack = False
          TabOrder = 2
          Text = 'GMI'
          Width = 121
        end
        object OutputNameSpaceLabel: TcxLabel
          Left = 20
          Top = 68
          Style.HotTrack = False
        end
        object OutputProjectLabel: TcxLabel
          Left = 262
          Top = 68
          Style.HotTrack = False
        end
        object cxButtonEdit3: TcxButtonEdit
          Left = 135
          Top = 135
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
          Style.HotTrack = False
          TabOrder = 4
          Width = 355
        end
        object FileTypeProject: TcxComboBox
          Left = 135
          Top = 162
          Properties.DropDownListStyle = lsFixedList
          Style.HotTrack = False
          TabOrder = 5
          Width = 355
        end
        object cxCheckBox1: TcxCheckBox
          Left = 20
          Top = 216
          Caption = 'Generar todo el directorio'
          Style.HotTrack = False
          TabOrder = 7
        end
        object TemplateFormat: TcxComboBox
          Left = 135
          Top = 189
          Properties.DropDownListStyle = lsFixedList
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahClient
          CaptionOptions.Text = 'Espacio de nombre:'
          Control = NamespaceEdit
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          AlignHorz = ahClient
          CaptionOptions.Text = 'Nombre de proyecto:'
          Control = ProjectEdit
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Nombres'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Control = OutputNameSpaceLabel
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Control = OutputProjectLabel
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Directorio especifico:'
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          Control = cxButtonEdit3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Tipo de archivo a usar:'
          Control = FileTypeProject
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = cxCheckBox1
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Opciones'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          CaptionOptions.Text = 'Tipo de plantilla:'
          Control = TemplateFormat
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object DriverConnPage: TdxWizardControlPage
      Header.Description = 'Establezca una conexion valida con el servidor de base de datos'
      Header.Title = 'Base de datos'
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object DriverComboBox: TcxComboBox
          Left = 48
          Top = 10
          Properties.DropDownListStyle = lsFixedList
          Properties.OnChange = cxComboBox1PropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Width = 486
        end
        object cxCheckListBox1: TcxCheckListBox
          Left = 378
          Top = 55
          Width = 156
          Height = 200
          EditValueFormat = cvfIndices
          Items = <>
          TabOrder = 2
        end
        object cxGroupBox1: TcxGroupBox
          Left = 10
          Top = 55
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = clWhite
          Style.Edges = []
          TabOrder = 1
          Height = 231
          Width = 362
        end
        object cxButton1: TcxButton
          Left = 378
          Top = 261
          Width = 75
          Height = 25
          Caption = 'Todo'
          TabOrder = 3
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Tag = 1
          Left = 459
          Top = 261
          Width = 75
          Height = 25
          Caption = 'Nada'
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Driver:'
          Control = DriverComboBox
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Tablas a mapear'
          CaptionOptions.Layout = clTop
          Control = cxCheckListBox1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          Parent = dxLayoutControl5Group1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Conexion'
          CaptionOptions.Layout = clTop
          Control = cxGroupBox1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Group1: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item4: TdxLayoutItem
          Parent = dxLayoutControl5Group3
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item5: TdxLayoutItem
          Parent = dxLayoutControl5Group3
          AlignHorz = ahRight
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group2: TdxLayoutGroup
          Parent = dxLayoutControl5Group1
          AlignHorz = ahRight
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group3: TdxLayoutGroup
          Parent = dxLayoutControl5Group2
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
      end
    end
    object RouterPage: TdxWizardControlPage
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object cxGrid1: TcxGrid
          Left = 10
          Top = 35
          Width = 250
          Height = 200
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            object cxGrid1DBTableView1RecId1: TcxGridDBColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
            end
            object cxGrid1DBTableView1Ruta1: TcxGridDBColumn
              DataBinding.FieldName = 'Ruta'
              PropertiesClassName = 'TcxTextEditProperties'
            end
            object cxGrid1DBTableView1Accion1: TcxGridDBColumn
              DataBinding.FieldName = 'Accion'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 375
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxCheckBox2: TcxCheckBox
          Left = 10
          Top = 10
          Caption = 'Crear Rutas individuales'
          Style.HotTrack = False
          TabOrder = 0
        end
        object dxLayoutControl7Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl7Item1: TdxLayoutItem
          Parent = dxLayoutControl7Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item2: TdxLayoutItem
          Parent = dxLayoutControl7Group_Root
          CaptionOptions.Visible = False
          Control = cxCheckBox2
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object SecurityPage: TdxWizardControlPage
      object dxLayoutControl8: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object SecurityTable: TcxComboBox
          Left = 52
          Top = 10
          Style.HotTrack = False
          TabOrder = 0
          Text = 't_user'
          Width = 217
        end
        object LoginPattern: TcxTextEdit
          Left = 52
          Top = 36
          Style.HotTrack = False
          TabOrder = 2
          Text = '/login'
          Width = 221
        end
        object CheckPattern: TcxTextEdit
          Left = 317
          Top = 36
          Style.HotTrack = False
          TabOrder = 3
          Text = '/check'
          Width = 217
        end
        object LogoutPattern: TcxTextEdit
          Left = 52
          Top = 62
          Style.HotTrack = False
          TabOrder = 4
          Text = '/logout'
          Width = 218
        end
        object TargetPattern: TcxTextEdit
          Left = 317
          Top = 62
          Style.HotTrack = False
          TabOrder = 5
          Text = '/'
          Width = 217
        end
        object SecurityField: TcxComboBox
          Left = 317
          Top = 10
          Style.HotTrack = False
          TabOrder = 1
          Text = 'nameuser'
          Width = 217
        end
        object cxGrid2: TcxGrid
          Left = 10
          Top = 132
          Width = 250
          Height = 200
          TabOrder = 9
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.DataSource = DataSource2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid2DBTableView1RecId1: TcxGridDBColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
            end
            object cxGrid2DBTableView1Rol1: TcxGridDBColumn
              DataBinding.FieldName = 'Rol'
            end
            object cxGrid2DBTableView1Value1: TcxGridDBColumn
              DataBinding.FieldName = 'Value'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object CryptEdit: TcxComboBox
          Left = 285
          Top = 88
          Style.HotTrack = False
          TabOrder = 7
          Text = 'sha512'
          Width = 122
        end
        object cxGrid3: TcxGrid
          Left = 275
          Top = 132
          Width = 250
          Height = 200
          TabOrder = 10
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.DataSource = DataSource3
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid3DBTableView1RecId1: TcxGridDBColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
            end
            object cxGrid3DBTableView1Value1: TcxGridDBColumn
              DataBinding.FieldName = 'Value'
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object Anonimous: TcxCheckBox
          Left = 413
          Top = 88
          Caption = 'Anonimo'
          State = cbsChecked
          Style.HotTrack = False
          TabOrder = 8
          Transparent = True
        end
        object GlobalPattern: TcxTextEdit
          Left = 52
          Top = 88
          Style.HotTrack = False
          TabOrder = 6
          Text = '/'
          Width = 160
        end
        object dxLayoutControl8Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl8Item1: TdxLayoutItem
          Parent = dxLayoutControl8Group1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Tabla:'
          Control = SecurityTable
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item2: TdxLayoutItem
          Parent = dxLayoutControl8Group4
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Login:'
          Control = LoginPattern
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item3: TdxLayoutItem
          Parent = dxLayoutControl8Group4
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Check:'
          Control = CheckPattern
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Item4: TdxLayoutItem
          Parent = dxLayoutControl8Group3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Logout:'
          Control = LogoutPattern
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item5: TdxLayoutItem
          Parent = dxLayoutControl8Group3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Target:'
          Control = TargetPattern
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Item6: TdxLayoutItem
          Parent = dxLayoutControl8Group1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Campo:'
          Control = SecurityField
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Group1: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item7: TdxLayoutItem
          Parent = dxLayoutControl8Group2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Roles'
          CaptionOptions.Layout = clTop
          Control = cxGrid2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Group2: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl8Item8: TdxLayoutItem
          Parent = dxLayoutControl8Group7
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Encriptacion:'
          Control = CryptEdit
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Item9: TdxLayoutItem
          Parent = dxLayoutControl8Group2
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Direcciones'
          CaptionOptions.Layout = clTop
          Control = cxGrid3
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Item10: TdxLayoutItem
          Parent = dxLayoutControl8Group7
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Anonimo'
          CaptionOptions.Visible = False
          Control = Anonimous
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl8Item11: TdxLayoutItem
          Parent = dxLayoutControl8Group7
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Patron:'
          Control = GlobalPattern
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Group3: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl8Group4: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Group7: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
      end
    end
    object SecurityTempsPage: TdxWizardControlPage
      object dxLayoutControl9: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        object SecRegisterTemp: TcxButtonEdit
          Left = 76
          Top = 118
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 4
          Text = 'SecRegisterTemp'
          Width = 121
        end
        object SecLoginTemp: TcxButtonEdit
          Left = 76
          Top = 91
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Text = 'cxButtonEdit4'
          Width = 121
        end
        object SecIndexTemp: TcxButtonEdit
          Left = 76
          Top = 64
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Text = 'cxButtonEdit4'
          Width = 121
        end
        object SecControllerTemp: TcxButtonEdit
          Left = 76
          Top = 37
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Text = 'SecRegisterTemp'
          Width = 471
        end
        object SecTableAddon: TcxButtonEdit
          Left = 76
          Top = 10
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Text = 'SecRegisterTemp'
          Width = 458
        end
        object dxLayoutControl9Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl9Item1: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'Registrar:'
          Control = SecRegisterTemp
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl9Item2: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'Login:'
          Control = SecLoginTemp
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl9Item3: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'Inicio:'
          Control = SecIndexTemp
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl9Item4: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'Controlador:'
          Control = SecControllerTemp
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Item5: TdxLayoutItem
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'TableAddon'
          Control = SecTableAddon
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object InstallPage: TdxWizardControlPage
      Header.Description = 'Se encuentra listo para instalad'
      Header.Title = 'Instalar'
    end
    object ProgressPage: TdxWizardControlPage
      Header.Description = 'Progreso de la instalacion'
      Header.Title = 'Instalando'
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object cxProgressBar1: TcxProgressBar
          Left = 10
          Top = 10
          TabOrder = 0
          Width = 524
        end
        object dxImageListBox1: TdxImageListBox
          Left = 11
          Top = 54
          Width = 522
          Height = 229
          Alignment = taLeftJustify
          ImageAlign = dxliLeft
          ItemHeight = 0
          ImageList = cxImageList1
          MultiLines = False
          VertAlignment = tvaCenter
          BorderStyle = bsNone
          TabOrder = 1
          SaveStrings = ()
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          Control = cxProgressBar1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          AlignVert = avClient
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Text = 'Mensajes:'
          CaptionOptions.Layout = clTop
          Control = dxImageListBox1
          Index = 1
        end
      end
    end
    object FinishPage: TdxWizardControlPage
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 544
        Height = 296
        Align = alClient
        TabOrder = 0
        object dxImageListBox2: TdxImageListBox
          Left = 12
          Top = 30
          Width = 520
          Height = 254
          Alignment = taLeftJustify
          ImageAlign = dxliLeft
          ItemHeight = 0
          ImageList = cxImageList1
          MultiLines = False
          VertAlignment = tvaCenter
          BorderStyle = bsNone
          TabOrder = 0
          SaveStrings = ()
        end
        object dxLayoutControl6Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl6Item1: TdxLayoutItem
          Parent = dxLayoutControl6Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Registro de operaciones'
          CaptionOptions.Layout = clTop
          Control = dxImageListBox2
          Index = 0
        end
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 312
    Top = 8
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfStandard
    NativeStyle = False
    SkinName = 'Office2010Silver'
    UseImageSet = imsOriginal
    Left = 344
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Zip|*.zip'
    Left = 280
    Top = 8
  end
  object JvBrowseForFolderDialog1: TJvBrowseForFolderDialog
    Left = 376
    Top = 8
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 14680344
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000007000000110000001A00000021000000220000
          001C000000130000000900000002000000000000000000000000000000000000
          000000000003000000100010055701270CA5013B11D9024914F5024714F6023A
          11DB01260BAB0010045F00000015000000040000000000000000000000000000
          00020000001201220A8A05551BE9168635FF29A749FF39BC5BFF40BE61FF38AC
          55FF258D40FF0C541FED011F09940000001A0000000400000000000000010000
          000D01240A860F6D29F821A246FF20BC4BFF18B641FF11AF38FF0FAC35FF18AF
          3CFF29B54BFF32A650FF136A28FA011F09940000001500000001000000050014
          054D0B5D21E531AC56FF3EC969FF2FC35AFF0D962AFF49BB70FF17A740FF09A4
          2CFF09A92FFF17AD39FF29A148FF09521BED0010045D000000080000000A0233
          0E982A994BFF51D47EFF44CE72FF249E40FF62BD80FFFFFFFFFFE3F3E8FF0898
          28FF0CAF35FF0AAB30FF1DB241FF168231FF01280BA8000000120000000E0350
          17CF57C57FFF5FDB8CFF39B25EFF269A48FFFEFCFBFFFFFFFFFFFFFFFFFF6DC6
          8CFF0CA22DFF0CB037FF11B138FF1A9C3AFF013D11D90000001A0000000F0468
          1DF189E4ACFF63DE93FF14842FFFEAEEE5FFFFFCFBFF80C495FFEFF4EEFFF0F6
          EFFF0C992EFF11B53DFF0DB238FF1BAF3FFF024D16F50000001E0000000E056D
          1FF1A6EDC2FF75E3A0FF33964FFFFFFFFFFF7FBD8DFF0E6B1AFF84C497FFFFFF
          FFFF85CA9AFF0F9F30FF13B840FF14B03CFF025016F40000001D0000000A065C
          1CCBA1E4BBFF98ECBAFF318D48FF2A8F45FF228638FF4FCE7EFF12872EFFF0F2
          EAFFF8F8F3FF179C3BFF19BF4CFF0F9F37FF024313D500000016000000060640
          158F82CD9BFFBDF5D4FF84E6ACFF74DB9BFF6FE39EFF62DF95FF39AA5CFF68B3
          7BFFFFFFFFFF3AA85DFF1FC654FF0C892FFF012F0D9F0000000E00000002031C
          0A41348F4FE5C2EFD2FFB3F2CDFF88E7B0FF7DE5A8FF70E29FFF62DE93FF1B86
          34FF309C4FFF1D993CFF20AE4FFF05601EE50114055100000006000000000000
          0006073815745EB579F8CBF2D9FFCEF8DEFFABF0C7FF88E7AFFF7AE4A4FF79E5
          A3FF71E29DFF45BE70FF107E30F7012A0C820000000D00000001000000000000
          000100000007083A16743B9456E498D9AEFFC3EFD3FFCEF7DEFFBAF2D1FF87DB
          A7FF47B16AFF10702BE3012D0C7F0000000E0000000200000000000000000000
          00000000000100000005041E0C3F09461A8C096623C9097828F0087424F0045A
          19CB023B1192011807470000000A000000020000000000000000000000000000
          000000000000000000000000000200000005000000080000000A0000000B0000
          000A000000070000000300000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000007000000110000001A00000021000000220000
          001C000000130000000900000002000000000000000000000000000000000000
          000000000003000000100101185703033AA5030356D9060569F5060569F60303
          54DB030338AB0101175F00000015000000040000000000000000000000000000
          0002000000120203318A090E72E91421A0FF1B31B7FF223CC5FF253EC5FF1F34
          B6FF17249FFF0A0D6CEC02022D940000001A0000000400000000000000010000
          000D03043386131A8FF92135BAFF1B38CEFF1230C9FF0D2BC6FF0C2BC4FF102E
          C4FF1634C6FF182BB1FF0C1482FA02022D940000001500000001000000050202
          1B4D0E1279E52F41C1FF3047CEFF2841CDFF203ACAFF1733C8FF1632C7FF1833
          C7FF1833C7FF1A35C7FF1127ADFF070A6AEC0101175D000000080000000A0507
          45982735B2FF455FE2FF3048CFFFFCF9F7FFCBCFEEFF2A44CDFF233DCBFFC8CD
          EFFFFEFDFBFF1834C7FF0D2BC3FF091797FF030339A8000000120000000E070B
          6DCF485BD5FF4F68E8FF324AD1FFE6E6F2FFFCF9F6FFCCD0EDFFCBD0EEFFFCFB
          F9FFE6E6F5FF1833C6FF0C2AC4FF0A20ADFF040458D90000001A0000000F0911
          8CF17186EDFF576FEEFF3850D5FF5164D6FFE6E6F0FFFBF9F5FFFCF9F6FFE6E6
          F3FF3D54D0FF1733C8FF0C2BC6FF0C28BFFF07066DF50000001E0000000E0A13
          93F192A2F4FF6279F2FF4057DAFF3F55D3FFD2D3ECFFFBF7F3FFFBF8F5FFD1D4
          EDFF2B44CEFF1834CAFF0E2DCAFF102CC2FF060770F40000001D0000000A0912
          7CCB949FEDFF8295F8FF3E54D5FFCCCEE9FFF9F5F0FFE7E6EFFFE8E6EFFFFBF8
          F3FFC9CDECFF1F39CCFF1735D1FF162DB9FF05065DD50000001600000006070D
          578F7984DDFFB1BEFCFF4358D7FFF8F3EDFFE7E5EDFF5366D8FF4F62D7FFE6E5
          EFFFFBF7F2FF243DCDFF2845D8FF1927A8FF04043F9F0000000E000000020306
          2541303BA8E3C0C7F5FF6272D8FF4357D7FF3F54D6FF3C53D8FF374FD7FF3048
          D2FF2C45D1FF3047D1FF364AC9FF0D137DE502021B5100000006000000000000
          0006060C4A745C68CDF8D0D6F7FFCBD3FEFF97A7FBFF6880F8FF5C76F4FF657C
          F2FF687FEFFF5365D6FF1F27A1F8040538820000000D00000001000000000000
          000100000007060D4C743945B0E39BA5E8FFC9D0F7FFD4DAFCFFBFC8FAFF8D9A
          EBFF505DCEFF1A2190E404063B7F0000000E0000000200000000000000000000
          000000000001000000050307273F080F5D8C0A1588C90D18A4F00D189FF00A12
          7DCB060A5192030420470000000A000000020000000000000000000000000000
          000000000000000000000000000200000005000000080000000A0000000B0000
          000A000000070000000300000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000007000000110000001A00000021000000220000
          001C000000130000000900000002000000000000000000000000000000000000
          00000000000300000010210F0157522603A57B3803D9994605F5984505F67C39
          03DB522603AB220F015F00000015000000040000000000000000000000000000
          000200000012421F038A975117E9C98446FFDEA56BFFEBBA85FFECBC87FFE0A9
          73FFCD8A4EFF995419ED421E02940000001A0000000400000000000000010000
          000D44210486B2692CF8DEA46FFFF3C491FFE2A66BFFD08A4BFFD18B4CFFE0A0
          64FFEBB67DFFDDA46BFFB16829FA421E02940000001500000001000000052312
          034D9A581EE5E1AC78FFF7CEA2FFF7C999FFD18D50FFF9F5F0FFF9F5F0FFD28C
          4DFFEBAE6FFFEBB173FFDC9F64FF985015ED220F015D000000080000000A5B31
          0D98D2965CFFFCDCB4FFFBD6ADFFF9D1A5FFC47939FFF9F5F0FFF9F5F0FFC87F
          40FFEFB578FFECB072FFEDB478FFC77F3FFF522603A8000000120000000E9051
          1BCFEAC398FFE5B98DFFCA874DFFBA6D2CFFC07333FFF9F5F0FFF9F5F0FFC47A
          3BFFC77E3FFFD38D4FFFE2A468FFDB9B5DFF7B3903D90000001A0000000FBA70
          2CF1F9E3C8FFC8874DFFF9F5F0FFF9F5F0FFFCF9F6FFFCF9F6FFFCFBF9FFFEFB
          FAFFF9F5F0FFF9F5F0FFD28E51FFEBB378FF984706F50000001E0000000EC57C
          3AF1FBEBD2FFC5854AFFF9F5F0FFF9F5F0FFF9F5EFFFF9F5F0FFFBF8F3FFFBF8
          F5FFF9F5F0FFF9F5F0FFD28E52FFEDB980FF984807F40000001D0000000AA76F
          3ACBF6E0C4FFE4C09AFFC5844AFFB56422FFB96B2AFFF9F4EFFFF9F6F2FFBF73
          33FFC37939FFD19055FFE8B37DFFE0A970FF7C3C06D500000016000000067450
          2F8FF2CEA8FFFFF6E5FFFDEED1FFFDECCFFFB46421FFF9F5F0FFF9F5F0FFBA6C
          2BFFFBE0BAFFFBDDB5FFFBD8ADFFCD8C4EFF542A059F0000000E000000023123
          1641CF9E6DE3FBEDDDFFFEF4E0FFFEEFD3FFC5844BFFF9F5F0FFF9F5F0FFCA89
          4FFFFCE7C3FFFBE4C2FFE5B887FF9D5B1FE52311035100000006000000000000
          000661472D74EBC295F8FDF3E5FFFFF9EDFFE5C39FFFC5854CFFC8884FFFE6C1
          9BFFFEEED5FFEBC79EFFC07C3DF7482607820000000D00000001000000000000
          00010000000761482E74D3A576E3F8DFC2FFFDF4E8FFFFFCF8FFFEF9F0FFF7E3
          CBFFE6B888FFB17136E34E2B0C7F0000000E0000000200000000000000000000
          000000000001000000053125183F7857378CB37D4AC9D89352F0D38B48F0A66A
          33CB6C431E922B1A0A470000000A000000020000000000000000000000000000
          000000000000000000000000000200000005000000080000000A0000000B0000
          000A000000070000000300000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000007000000110000001A00000021000000220000
          001C000000130000000900000002000000000000000000000000000000000000
          00000000000300000010210F0157522603A57B3803D9994605F5984505F67C39
          03DB522603AB220F015F00000015000000040000000000000000000000000000
          000200000012421F038A975117E9C98446FFDEA56BFFEBBA85FFECBC87FFE0A9
          73FFCD8A4EFF995419ED421E02940000001A0000000400000000000000010000
          000D44210486B2692CF8DEA46FFFF3C491FFF1BC83FFEDB377FFEBAF72FFEBB0
          76FFEBB67DFFDDA46BFFB16829FA421E02940000001500000001000000052312
          034D9A581EE5E1AC78FFF7CEA2FFF7C999FFF4C592FFF2BE86FFEFB77BFFEDB1
          73FFEBAE6FFFEBB173FFDC9F64FF985015ED220F015D000000080000000A5B31
          0D98D2965CFFFCDCB4FFFBD6ADFFF9D1A5FFF8CD9EFFF5C997FFF3C28CFFF0BA
          80FFEFB578FFECB072FFEDB478FFC77F3FFF522603A8000000120000000E9051
          1BCFEAC398FFE5B98DFFCA874DFFBA6D2CFFC07333FFC07333FFC47A3BFFC47A
          3BFFC77E3FFFD38D4FFFE2A468FFDB9B5DFF7B3903D90000001A0000000FBA70
          2CF1F9E3C8FFC8874DFFF9F5F0FFF9F5F0FFFCF9F6FFFCF9F6FFFCFBF9FFFEFB
          FAFFF9F5F0FFF9F5F0FFD28E51FFEBB378FF984706F50000001E0000000EC57C
          3AF1FBEBD2FFC5854AFFF9F5F0FFF9F5F0FFF9F5EFFFF9F5F0FFFBF8F3FFFBF8
          F5FFF9F5F0FFF9F5F0FFD28E52FFEDB980FF984807F40000001D0000000AA76F
          3ACBF6E0C4FFE4C09AFFC5844AFFB56422FFB96B2AFFB96B2AFFBF7333FFBF73
          33FFC37939FFD19055FFE8B37DFFE0A970FF7C3C06D500000016000000067450
          2F8FF2CEA8FFFFF6E5FFFDEED1FFFDECCFFFFDEBCCFFFDE8C9FFFDE6C4FFFCE2
          BFFFFBE0BAFFFBDDB5FFFBD8ADFFCD8C4EFF542A059F0000000E000000023123
          1641CF9E6DE3FBEDDDFFFEF4E0FFFEEFD3FFFDEDD0FFFDEBCEFFFDEACBFFFDE8
          C7FFFCE7C3FFFBE4C2FFE5B887FF9D5B1FE52311035100000006000000000000
          000661472D74EBC295F8FDF3E5FFFFF9EDFFFEF4DFFFFDF0D6FFFDEED2FFFDEE
          D6FFFEEED5FFEBC79EFFC07C3DF7482607820000000D00000001000000000000
          00010000000761482E74D3A576E3F8DFC2FFFDF4E8FFFFFCF8FFFEF9F0FFF7E3
          CBFFE6B888FFB17136E34E2B0C7F0000000E0000000200000000000000000000
          000000000001000000053125183F7857378CB37D4AC9D89352F0D38B48F0A66A
          33CB6C431E922B1A0A470000000A000000020000000000000000000000000000
          000000000000000000000000000200000005000000080000000A0000000B0000
          000A000000070000000300000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          00020000000400000003010101060202020F030303180303031B0202021C0101
          011900000010000000070000000100000000000000000000000000000003150F
          0927352211570606061724150D4A693317B2974619EAA34A19F69F4517F68E37
          13EB58200CB31708034B0000000E000000020000000000000000010101074731
          1C6FA4632CEA5C371E98B06729F1D99746FFE2A24FFFE4A44AFFE09C3DFFD78D
          32FFC77524FF953C13F13311067B0000001000000002000000000404030B6446
          2994E1B683FFD79C4FFFEDBB75FFEBB76CFFE9B261FFE4AC60FFDFA75CFFDFA4
          58FFDE9E47FFD68B2FFFA44715F9240C04610000000A000000000707060F8566
          43B3F2D4AAFFF6D29DFFF1C689FFECBA72FFD19249FFA56A37E886502DCB9D5D
          2EE7C98A46FFDFA354FFD3882EFF7C2C0FDB0101001C000000010B0B0B15BB96
          6FE3F7DDB5FFF6D7A7FFF7D29FFFDCA45EFF865F42B4302E2B3C1717161E211E
          1A315636248AB97939F8E1A14BFFB75C1BFF290F04670000000710100F19D8B8
          96F6FBEACEFFF9E3C1FFF5DAB4FFE0B585FFA96430EC4D3F2F61060606070303
          03040F0F0E175C362199D18F40FFD1872FFF451508970000000B10100F17DDB3
          83FEE6CEB1FAC3A07DE5AA8358D48E755AAD5846356E31271D3D050505060000
          000004040305231D1738AE6128F9BA7634F930160968000000080808080B5547
          3368866E51A16C60527E2626252A131312150A0A0A0B06060607060606070808
          080A0E0E0D12151514223A23196C441D0F90250E065D0000000A000000023E2F
          1D53DAB07DF7CA9451F7110D07220000000200000000000000021B1107302A13
          075556270D956E290DC3853A12D8B55F1FF8963511FE0000001400000002694F
          3081F4DEB8FFEECFA3FF5B41217C000000070000000100000003301F0E4D9446
          19E4D18D3DFFE2A34FFFE2A44BFFE4A247FFA64F1AF400000015000000013F35
          284AEFD2A9FFFAEBCCFFD9B381F34B371D680A0704160000000905030118552E
          118CD89C4EFFECB76EFFE6A956FFE09F47FF8E4517DD00000011000000000202
          0104B99E7BCBF9ECD0FFFAE9C9FFEAC897FFB3874FD8865C2CB1AA763AD9DDA7
          63FFEFC286FFEDBD7AFFECBB75FFDFA450FF622D10A80000000C000000000000
          00013831273EE8D0ADF5FBF0D8FFFCEDD0FFF9E5C0FFF6DEB4FFF6DCAFFFF7D9
          A9FFF6D29CFFF1CC95FFDAA669FFD79C50FF4E250D8700000008000000000000
          00000000000151463858DBC3A2E9F7E9D1FFFAEED5FFFCEED3FFFBEACBFFF8E2
          C0FFEFD2A8FFC0935FEA51351A7AA6652BE53E26106100000004000000000000
          000000000000000000002620192A8A775E96CDB28FDFDCBF97F1D8B78FF1C09E
          77E07B5F41991F160C300000000633241449130D071D00000001}
      end>
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    OnNewRecord = dxMemData1NewRecord
    Left = 176
    Top = 80
    object dxMemData1Ruta: TStringField
      FieldName = 'Ruta'
    end
    object dxMemData1Accion: TStringField
      AutoGenerateValue = arDefault
      DefaultExpression = '/page;Bundle:Default:action'
      DisplayWidth = 50
      FieldName = 'Accion'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 176
    Top = 112
  end
  object dxMemData2: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F02000000FF00000001000400526F6C00FF00000001
      00060056616C756500010A000000524F4C455F41444D494E0109000000524F4C
      455F555345520110000000524F4C455F53555045525F41444D494E012F000000
      5B524F4C455F555345522C20524F4C455F41444D494E2C20524F4C455F414C4C
      4F5745445F544F5F5357495443485D}
    SortOptions = []
    Left = 208
    Top = 80
    object dxMemData2Rol: TStringField
      DisplayWidth = 25
      FieldName = 'Rol'
      Size = 255
    end
    object dxMemData2Value: TStringField
      DisplayWidth = 50
      FieldName = 'Value'
      Size = 255
    end
  end
  object dxMemData3: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F01000000FF0000000100060056616C756500011B00
      00005E2F70726F66696C652C20726F6C65733A20524F4C455F55534552011A00
      00005E2F61646D696E2C20726F6C65733A20524F4C455F41444D494E}
    SortOptions = []
    Left = 240
    Top = 80
    object dxMemData3Value: TStringField
      DisplayWidth = 50
      FieldName = 'Value'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = dxMemData2
    Left = 208
    Top = 112
  end
  object DataSource3: TDataSource
    DataSet = dxMemData3
    Left = 240
    Top = 112
  end
end
