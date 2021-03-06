unit u_Statystyki;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, frxClass,
  frxDBSet, Vcl.Menus;

type
  TfrmStatystyki = class(TForm)
    imgStatystyki: TImage;
    imgWygrane: TImage;
    imgPrzegrane: TImage;
    lblLiczbaPrzegranych: TLabel;
    lblLiczbaWygranych: TLabel;
    DBGrid1: TDBGrid;
    btnPokazHistorie: TButton;
    ADOConPokazHistorie: TADOConnection;
    ADOTabPokazHistorie: TADOTable;
    DataSourcePokazHistorie: TDataSource;
    ADOQPokazHistorie: TADOQuery;
    lblProcentWygranych: TLabel;
    lblProcentPrzegranych: TLabel;
    lblProcWygrane: TLabel;
    lblProcPrzegranych: TLabel;
    MainMenu1: TMainMenu;
    Raporty: TMenuItem;
    GenerujRaport1: TMenuItem;
    frxReportHistoria: TfrxReport;
    ADOQReport: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    procedure btnPokazHistorieClick(Sender: TObject);
    procedure GenerujRaport1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //funkcje
     idUzytkownika : integer;
    //procedury
  end;

var
  frmStatystyki: TfrmStatystyki;

implementation

{$R *.dfm}




procedure TfrmStatystyki.btnPokazHistorieClick(Sender: TObject);
begin
ADOTabPokazHistorie.Active := true;
ADOQPokazHistorie.SQL.Clear;
ADOQPokazHistorie.SQL.Text:='Select h.IdUzytkownika, h.Wynik, p.NazwaPrzeciwnika  from TBL_Historia as h, TBL_Przeciwnicy as p where h.IdPrzeciwnika = p.IdPrzeciwnika and IdUzytkownika= ' + idUzytkownika.ToString;
ADOQPokazHistorie.ExecSQL;
ADOQPokazHistorie.Open;

end;

procedure TfrmStatystyki.GenerujRaport1Click(Sender: TObject);
begin
//ADOQReport.SQL.Clear;
ADOQReport.SQL.Text:='Select * From TBL_Historia Where IdUzytkownika= ' + idUzytkownika.ToString;
ADOQReport.ExecSQL;
 frxReportHistoria.ShowReport(True);
end;

end.
