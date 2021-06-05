unit u_PanelAdministratora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Datasnap.Provider, Datasnap.DBClient, frxClass, frxDBSet, Vcl.Menus;

type
  TfrmPanelAdministratora = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    edtNazwaA: TDBEdit;
    edtPktZyciaA: TDBEdit;
    edtPktAtakuA: TDBEdit;
    edtPktObronyA: TDBEdit;
    lblNazwaKlasy: TLabel;
    lblPktZyciaKlasy: TLabel;
    lblPktAtakuKlasy: TLabel;
    lblPktObronyKlasy: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    edtNazwaAW: TDBEdit;
    edtPktZyciaAW: TDBEdit;
    edtPktAtakuAW: TDBEdit;
    edtPktObronyAW: TDBEdit;
    lblNazwaWroga: TLabel;
    lblPktZyciaWroga: TLabel;
    lblPktAtakuWroga: TLabel;
    lblPktObronyWroga: TLabel;
    lblEdycjaKlas: TLabel;
    lblEdycjaWrogow: TLabel;
    ADOConEdycja: TADOConnection;
    DataSourceKlasy: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ADOTKlasy: TADOTable;
    ADOQKlasa: TADOQuery;
    ADOTWrogowie: TADOTable;
    DataSourceWrogowie: TDataSource;
    Panel1: TPanel;
    lblWitaj: TLabel;
    btnWyloguj: TButton;
    lblNazwaKonta: TLabel;
    MainMenu1: TMainMenu;
    Raporty: TMenuItem;
    RaportKlasPostaci: TMenuItem;
    Raportowrogach1: TMenuItem;
    Raportouzytkownikach1: TMenuItem;
    Raportohistoriigier1: TMenuItem;
    frxReportKlasPostaci: TfrxReport;
    frxReportWrogow: TfrxReport;
    frxReportUzytkownikow: TfrxReport;
    frxReportHistorigier: TfrxReport;
    frxDBDatasetRaportyAdminaKlasy: TfrxDBDataset;
    ADOQRaporty: TADOQuery;
    ADOQRaportKlasy: TADOQuery;
    ADOQRaportAdminWrogow: TADOQuery;
    frxDBDatasetRapAdminWrog: TfrxDBDataset;
    frxDBDatasetRaportUzytkownik: TfrxDBDataset;
    frxDBDatasetRaportHistoriiGier: TfrxDBDataset;
    ADOQRaportAdminUzytkownicy: TADOQuery;
    ADOQRaportAdminHistoria: TADOQuery;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure btnWylogujClick(Sender: TObject);
    procedure RaportKlasPostaciClick(Sender: TObject);
    procedure Raportowrogach1Click(Sender: TObject);
    procedure Raportouzytkownikach1Click(Sender: TObject);
    procedure Raportohistoriigier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPanelAdministratora: TfrmPanelAdministratora;

implementation

{$R *.dfm}

procedure TfrmPanelAdministratora.btnWylogujClick(Sender: TObject);
var
  i: integer;
begin
  WinExec(PansiChar(application.exename), EWX_Force);
  // application.Terminate;
  Self.Close;
  application.Run;
end;

procedure TfrmPanelAdministratora.DBGrid1TitleClick(Column: TColumn);
begin
  ADOTKlasy.IndexFieldNames := Column.FieldName;
end;

procedure TfrmPanelAdministratora.DBGrid2TitleClick(Column: TColumn);
begin
  ADOTWrogowie.IndexFieldNames := Column.FieldName;
end;

procedure TfrmPanelAdministratora.RaportKlasPostaciClick(Sender: TObject);
begin

  ADOQRaportKlasy.Active:=false;
  ADOQRaporty.SQL.Clear;
  ADOQRaporty.SQL.Text :=
    'Select * from TBL_Klasy';
  ADOQRaporty.ExecSQL;
  ADOQRaporty.Open;

  ADOQRaportKlasy.Active:=true;

  frxReportKlasPostaci.ShowReport(True);
end;

procedure TfrmPanelAdministratora.Raportohistoriigier1Click(Sender: TObject);
begin
  frxReportHistorigier.ShowReport(True);
end;

procedure TfrmPanelAdministratora.Raportouzytkownikach1Click(Sender: TObject);
begin
  frxReportUzytkownikow.ShowReport(True);
end;

procedure TfrmPanelAdministratora.Raportowrogach1Click(Sender: TObject);
begin
  frxReportWrogow.ShowReport(True);
end;

end.
