object frmPanelAdministratora: TfrmPanelAdministratora
  Left = 0
  Top = 0
  Caption = 'frmPanelAdministratora'
  ClientHeight = 658
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 14
  object lblNazwaKlasy: TLabel
    Left = 8
    Top = 107
    Width = 35
    Height = 14
    Caption = 'Nazwa'
  end
  object lblPktZyciaKlasy: TLabel
    Left = 203
    Top = 107
    Width = 45
    Height = 14
    Caption = 'PktZycia'
  end
  object lblPktAtakuKlasy: TLabel
    Left = 408
    Top = 107
    Width = 50
    Height = 14
    Caption = 'PktAtaku'
  end
  object lblPktObronyKlasy: TLabel
    Left = 624
    Top = 107
    Width = 58
    Height = 14
    Caption = 'PktObrony'
  end
  object lblNazwaWroga: TLabel
    Left = 8
    Top = 395
    Width = 35
    Height = 14
    Caption = 'Nazwa'
  end
  object lblPktZyciaWroga: TLabel
    Left = 203
    Top = 395
    Width = 45
    Height = 14
    Caption = 'PktZycia'
  end
  object lblPktAtakuWroga: TLabel
    Left = 408
    Top = 395
    Width = 50
    Height = 14
    Caption = 'PktAtaku'
  end
  object lblPktObronyWroga: TLabel
    Left = 624
    Top = 395
    Width = 58
    Height = 14
    Caption = 'PktObrony'
  end
  object lblEdycjaKlas: TLabel
    Left = 8
    Top = 68
    Width = 201
    Height = 25
    Caption = 'Edycja klas postaci'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEdycjaWrogow: TLabel
    Left = 8
    Top = 356
    Width = 162
    Height = 25
    Caption = 'Edycja wrog'#243'w'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 168
    Width = 802
    Height = 153
    DataSource = DataSourceKlasy
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 137
    Width = 240
    Height = 25
    DataSource = DataSourceKlasy
    TabOrder = 1
  end
  object edtNazwaA: TDBEdit
    Left = 49
    Top = 104
    Width = 121
    Height = 22
    DataField = 'NazwaKlasa'
    DataSource = DataSourceKlasy
    TabOrder = 2
  end
  object edtPktZyciaA: TDBEdit
    Left = 254
    Top = 104
    Width = 121
    Height = 22
    DataField = 'PktZycia'
    DataSource = DataSourceKlasy
    TabOrder = 3
  end
  object edtPktAtakuA: TDBEdit
    Left = 464
    Top = 104
    Width = 121
    Height = 22
    DataField = 'PktAtaku'
    DataSource = DataSourceKlasy
    TabOrder = 4
  end
  object edtPktObronyA: TDBEdit
    Left = 688
    Top = 104
    Width = 121
    Height = 22
    DataField = 'PktObrony'
    DataSource = DataSourceKlasy
    TabOrder = 5
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 456
    Width = 801
    Height = 153
    DataSource = DataSourceWrogowie
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid2TitleClick
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 425
    Width = 240
    Height = 25
    DataSource = DataSourceWrogowie
    TabOrder = 7
  end
  object edtNazwaAW: TDBEdit
    Left = 49
    Top = 392
    Width = 121
    Height = 22
    DataField = 'NazwaPrzeciwnika'
    DataSource = DataSourceWrogowie
    TabOrder = 8
  end
  object edtPktZyciaAW: TDBEdit
    Left = 254
    Top = 392
    Width = 121
    Height = 22
    DataField = 'PktZyciaW'
    DataSource = DataSourceWrogowie
    TabOrder = 9
  end
  object edtPktAtakuAW: TDBEdit
    Left = 464
    Top = 392
    Width = 121
    Height = 22
    DataField = 'PktAtakuW'
    DataSource = DataSourceWrogowie
    TabOrder = 10
  end
  object edtPktObronyAW: TDBEdit
    Left = 688
    Top = 392
    Width = 121
    Height = 22
    DataField = 'PktObronyW'
    DataSource = DataSourceWrogowie
    TabOrder = 11
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 57
    Align = alTop
    TabOrder = 12
    object lblWitaj: TLabel
      Left = 16
      Top = 11
      Width = 400
      Height = 35
      Caption = 'Witaj w panelu administratoria '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblNazwaKonta: TLabel
      Left = 416
      Top = 12
      Width = 87
      Height = 35
      Caption = 'Konto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnWyloguj: TButton
      Left = 624
      Top = 12
      Width = 185
      Height = 35
      Caption = 'Wyloguj'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnWylogujClick
    end
  end
  object ADOConEdycja: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=MagicznaArenaDB;Data Source' +
      '="";Use Procedure for Prepare=1;Auto Translate=True;Packet Size=' +
      '4096;Workstation ID=DESKTOP-BEHPBA2;Initial File Name="";Use Enc' +
      'ryption for Data=False;Tag with column collation when possible=F' +
      'alse;MARS Connection=False;DataTypeCompatibility=0;Trust Server ' +
      'Certificate=False;Server SPN=DESKTOP-BEHPBA2;Application Intent=' +
      'READWRITE'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 280
    Top = 344
  end
  object DataSourceKlasy: TDataSource
    DataSet = ADOTKlasy
    Left = 720
    Top = 344
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQKlasa
    Left = 592
    Top = 608
  end
  object ADOTKlasy: TADOTable
    Active = True
    Connection = ADOConEdycja
    CursorType = ctStatic
    TableName = 'TBL_Klasy'
    Left = 648
    Top = 344
  end
  object ADOQKlasa: TADOQuery
    Connection = ADOConEdycja
    Parameters = <>
    Left = 720
    Top = 608
  end
  object ADOTWrogowie: TADOTable
    Active = True
    Connection = ADOConEdycja
    CursorType = ctStatic
    TableName = 'TBL_Przeciwnicy'
    Left = 256
    Top = 608
  end
  object DataSourceWrogowie: TDataSource
    DataSet = ADOTWrogowie
    Left = 369
    Top = 608
  end
  object MainMenu1: TMainMenu
    Left = 288
    Top = 64
    object Raporty: TMenuItem
      Caption = 'Raporty'
      object RaportKlasPostaci: TMenuItem
        Caption = 'Raport o klasach postaci'
        OnClick = RaportKlasPostaciClick
      end
      object Raportowrogach1: TMenuItem
        Caption = 'Raport o wrogach'
        OnClick = Raportowrogach1Click
      end
      object Raportouzytkownikach1: TMenuItem
        Caption = 'Raport o uzytkownikach'
        OnClick = Raportouzytkownikach1Click
      end
      object Raportohistoriigier1: TMenuItem
        Caption = 'Raport o historii gier'
        OnClick = Raportohistoriigier1Click
      end
    end
  end
  object frxReportKlasPostaci: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44258.572237766200000000
    ReportOptions.LastChange = 44258.572732430560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 248
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDatasetRaportyAdminaKlasy
        DataSetName = 'frxDBDatasetRaportyAdmina'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetRaportyAdmina."IdKlasy"'
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'IdKlasy'
          DataSet = frxDBDatasetRaportyAdminaKlasy
          DataSetName = 'frxDBDatasetRaportyAdmina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[frxDBDatasetRaportyAdmina."IdKlasy"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetRaportyAdminaKlasy
        DataSetName = 'frxDBDatasetRaportyAdmina'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 81.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'NazwaKlasa')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 99.897650000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NazwaKlasa'
          DataSet = frxDBDatasetRaportyAdminaKlasy
          DataSetName = 'frxDBDatasetRaportyAdmina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportyAdmina."NazwaKlasa"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 81.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'PktZycia')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 99.897650000000000000
          Top = 18.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PktZycia'
          DataSet = frxDBDatasetRaportyAdminaKlasy
          DataSetName = 'frxDBDatasetRaportyAdmina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportyAdmina."PktZycia"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 81.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'PktAtaku')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 99.897650000000000000
          Top = 37.795300000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PktAtaku'
          DataSet = frxDBDatasetRaportyAdminaKlasy
          DataSetName = 'frxDBDatasetRaportyAdmina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportyAdmina."PktAtaku"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 81.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'PktObrony')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 99.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PktObrony'
          DataSet = frxDBDatasetRaportyAdminaKlasy
          DataSetName = 'frxDBDatasetRaportyAdmina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportyAdmina."PktObrony"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 272.126160000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxReportWrogow: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44258.601678333330000000
    ReportOptions.LastChange = 44258.601678333330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDatasetRapAdminWrog
        DataSetName = 'frxDBDatasetRapAdminWrog'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetRapAdminWrog."IdPrzeciwnika"'
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'IdPrzeciwnika'
          DataSet = frxDBDatasetRapAdminWrog
          DataSetName = 'frxDBDatasetRapAdminWrog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[frxDBDatasetRapAdminWrog."IdPrzeciwnika"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetRapAdminWrog
        DataSetName = 'frxDBDatasetRapAdminWrog'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 122.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'NazwaPrzeciwnika')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 140.897650000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'NazwaPrzeciwnika'
          DataSet = frxDBDatasetRapAdminWrog
          DataSetName = 'frxDBDatasetRapAdminWrog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRapAdminWrog."NazwaPrzeciwnika"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 122.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'PktZyciaW')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 140.897650000000000000
          Top = 18.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PktZyciaW'
          DataSet = frxDBDatasetRapAdminWrog
          DataSetName = 'frxDBDatasetRapAdminWrog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRapAdminWrog."PktZyciaW"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 122.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'PktAtakuW')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 140.897650000000000000
          Top = 37.795300000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PktAtakuW'
          DataSet = frxDBDatasetRapAdminWrog
          DataSetName = 'frxDBDatasetRapAdminWrog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRapAdminWrog."PktAtakuW"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 122.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'PktObronyW')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 140.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'PktObronyW'
          DataSet = frxDBDatasetRapAdminWrog
          DataSetName = 'frxDBDatasetRapAdminWrog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRapAdminWrog."PktObronyW"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 272.126160000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxReportUzytkownikow: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44258.602498981480000000
    ReportOptions.LastChange = 44258.602498981480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 552
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDatasetRaportUzytkownik
        DataSetName = 'frxDBDatasetRaportUzytkownik'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetRaportUzytkownik."IdUzytkownika"'
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'IdUzytkownika'
          DataSet = frxDBDatasetRaportUzytkownik
          DataSetName = 'frxDBDatasetRaportUzytkownik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[frxDBDatasetRaportUzytkownik."IdUzytkownika"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetRaportUzytkownik
        DataSetName = 'frxDBDatasetRaportUzytkownik'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 68.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Login')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 86.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Login'
          DataSet = frxDBDatasetRaportUzytkownik
          DataSetName = 'frxDBDatasetRaportUzytkownik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportUzytkownik."Login"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 68.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Haslo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 86.897650000000000000
          Top = 18.897650000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Haslo'
          DataSet = frxDBDatasetRaportUzytkownik
          DataSetName = 'frxDBDatasetRaportUzytkownik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportUzytkownik."Haslo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 68.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Email')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 86.897650000000000000
          Top = 37.795300000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Email'
          DataSet = frxDBDatasetRaportUzytkownik
          DataSetName = 'frxDBDatasetRaportUzytkownik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportUzytkownik."Email"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 68.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'IdKlasy')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.897650000000000000
          Top = 56.692950000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'IdKlasy'
          DataSet = frxDBDatasetRaportUzytkownik
          DataSetName = 'frxDBDatasetRaportUzytkownik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportUzytkownik."IdKlasy"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 68.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'CzyAdmin')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 86.897650000000000000
          Top = 75.590600000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'CzyAdmin'
          DataSet = frxDBDatasetRaportUzytkownik
          DataSetName = 'frxDBDatasetRaportUzytkownik'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportUzytkownik."CzyAdmin"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 291.023810000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxReportHistorigier: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44258.605895381940000000
    ReportOptions.LastChange = 44258.605895381940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 704
    Top = 136
    Datasets = <
      item
        DataSet = frxDBDatasetRaportHistoriiGier
        DataSetName = 'frxDBDatasetRaportHistoriiGier'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDatasetRaportHistoriiGier."IdUzytkownika"'
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'IdUzytkownika'
          DataSet = frxDBDatasetRaportHistoriiGier
          DataSetName = 'frxDBDatasetRaportHistoriiGier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            '[frxDBDatasetRaportHistoriiGier."IdUzytkownika"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetRaportHistoriiGier
        DataSetName = 'frxDBDatasetRaportHistoriiGier'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 92.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'IdHistorii')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 110.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'IdHistorii'
          DataSet = frxDBDatasetRaportHistoriiGier
          DataSetName = 'frxDBDatasetRaportHistoriiGier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportHistoriiGier."IdHistorii"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 92.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Wynik')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 110.897650000000000000
          Top = 18.897650000000000000
          Width = 372.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Wynik'
          DataSet = frxDBDatasetRaportHistoriiGier
          DataSetName = 'frxDBDatasetRaportHistoriiGier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportHistoriiGier."Wynik"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 92.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'IdPrzeciwnika')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 110.897650000000000000
          Top = 37.795300000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'IdPrzeciwnika'
          DataSet = frxDBDatasetRaportHistoriiGier
          DataSetName = 'frxDBDatasetRaportHistoriiGier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetRaportHistoriiGier."IdPrzeciwnika"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 253.228510000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo11: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDatasetRaportyAdminaKlasy: TfrxDBDataset
    UserName = 'frxDBDatasetRaportyAdmina'
    CloseDataSource = False
    DataSet = ADOQRaportKlasy
    BCDToCurrency = False
    Left = 312
    Top = 136
  end
  object ADOQRaporty: TADOQuery
    Connection = ADOConEdycja
    Parameters = <>
    Left = 688
    Top = 64
  end
  object ADOQRaportKlasy: TADOQuery
    Active = True
    Connection = ADOConEdycja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From TBL_Klasy')
    Left = 280
    Top = 136
  end
  object ADOQRaportAdminWrogow: TADOQuery
    Connection = ADOConEdycja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From TBL_Przeciwnicy')
    Left = 424
    Top = 136
  end
  object frxDBDatasetRapAdminWrog: TfrxDBDataset
    UserName = 'frxDBDatasetRapAdminWrog'
    CloseDataSource = False
    DataSet = ADOQRaportAdminWrogow
    BCDToCurrency = False
    Left = 456
    Top = 136
  end
  object frxDBDatasetRaportUzytkownik: TfrxDBDataset
    UserName = 'frxDBDatasetRaportUzytkownik'
    CloseDataSource = False
    DataSet = ADOQRaportAdminUzytkownicy
    BCDToCurrency = False
    Left = 616
    Top = 136
  end
  object frxDBDatasetRaportHistoriiGier: TfrxDBDataset
    UserName = 'frxDBDatasetRaportHistoriiGier'
    CloseDataSource = False
    DataSet = ADOQRaportAdminHistoria
    BCDToCurrency = False
    Left = 768
    Top = 136
  end
  object ADOQRaportAdminUzytkownicy: TADOQuery
    Connection = ADOConEdycja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From TBL_Uzytkownicy')
    Left = 584
    Top = 136
  end
  object ADOQRaportAdminHistoria: TADOQuery
    Active = True
    Connection = ADOConEdycja
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TBL_Historia')
    Left = 736
    Top = 136
  end
end
