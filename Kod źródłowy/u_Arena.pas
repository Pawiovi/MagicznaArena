unit u_Arena;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.GIFImg, u_Statystyki, Data.Win.ADODB, Data.DB;

type
  TfrmArena = class(TForm)
    grpbKartaPostaci: TGroupBox;
    LabelZycie: TLabel;
    labelAtak: TLabel;
    labelObrona: TLabel;
    lblPktZycia: TLabel;
    lblPktAtaku: TLabel;
    lblPktObrony: TLabel;
    imgAvatar: TImage;
    grpbKartaPrzeciwnika: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblPktZyciaWroga: TLabel;
    lblPktAtakuWroga: TLabel;
    lblPktObronyWroga: TLabel;
    imgWrogow: TImage;
    grpbWalki: TGroupBox;
    btnWalcz: TButton;
    imgKostka: TImage;
    grpbObrazen: TGroupBox;
    LabelGracz: TLabel;
    LabelWrog: TLabel;
    lblPktObrazenGracz: TLabel;
    lblPktObrazenWroga: TLabel;
    imgPoddaj: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    imgKostkaW: TImage;
    Panel1: TPanel;
    imgIkona: TImage;
    ADOConHisotria: TADOConnection;
    ADOTabHistoria: TADOTable;
    DataSourceHistoria: TDataSource;
    ADOQHistoria: TADOQuery;
    ADOQStatystykiArena: TADOQuery;
    ADOTStatystykiArena: TADOTable;
    procedure btnWalczClick(Sender: TObject);
    procedure imgPoddajClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    // funkcje
    idUzytkownika: integer;
    idPrzeciwnika: integer;
    function Throw(sides: integer): integer;
    function ThrowW(sides: integer): integer;
    // procedury

  end;

var
  frmArena: TfrmArena;

implementation

{$R *.dfm}
{ TfrmArena }

procedure TfrmArena.btnWalczClick(Sender: TObject);
var
  liczbaOczek, liczbaOczekW: Real;
  atakWroga, zycieGracza, atakGracza, zycieWroga: double;
  pktAtaku, pktObrony, pktZycia: double;
  pktAtakuW, pktObronyW, pktZyciaW: double;
  wygrana, przegrana: integer;
  wygrane, przegrane: integer;

begin

  imgKostka.Picture := nil;
  // Statystyki gracza
  pktAtaku := StrToFloat(lblPktAtaku.Caption);
  pktObrony := StrToFloat(lblPktObrony.Caption);
  pktZycia := StrToFloat(lblPktZycia.Caption);

  // Statystyki wroga
  pktAtakuW := StrToFloat(lblPktAtakuWroga.Caption);
  pktObronyW := StrToFloat(lblPktObronyWroga.Caption);
  pktZyciaW := StrToFloat(lblPktZyciaWroga.Caption);
  // lblPktZycia.Caption:=floattostr(pktZycia-pktAtakuW);

  // Label4.Caption := inttostr(Throw(6));
  liczbaOczek := Throw(6);
  liczbaOczekW := ThrowW(6);

  // Atak wroga i zycie gracz
  atakWroga := pktAtakuW * liczbaOczekW * 0.1 - pktObrony * 0.1;
  zycieGracza := pktZycia - atakWroga;
  if atakWroga <= 0 then
    // nic
  else
  begin
    lblPktZycia.Caption := floattostr(zycieGracza);
  end;

  // Atak gracza i zycie wroga
  atakGracza := pktAtaku * liczbaOczek * 0.1 - pktObronyW * 0.1;
  zycieWroga := pktZyciaW - atakGracza;

  if atakGracza <= 0 then
    // nic
  else
  begin
    lblPktZyciaWroga.Caption := floattostr(zycieWroga);
  end;

  // Wy?wietlanie zadanych obra?e?
  lblPktObrazenGracz.Caption := floattostr(atakGracza);
  lblPktObrazenWroga.Caption := floattostr(atakWroga);

  // LOSOWANIE DLA GRACZA
  if liczbaOczek = 1 then // w tym przypadku nie mo?e by? ":" przed "="
  begin
    imgKostka.Picture.LoadFromFile('Grafika\Kostka\Kostka1.png');
  end
  else if liczbaOczek = 2 then
  begin
    imgKostka.Picture.LoadFromFile('Grafika\Kostka\Kostka2.png');
  end
  else if liczbaOczek = 3 then
  begin
    imgKostka.Picture.LoadFromFile('Grafika\Kostka\Kostka3.png');
  end
  else if liczbaOczek = 4 then
  begin
    imgKostka.Picture.LoadFromFile('Grafika\Kostka\Kostka4.png');
  end
  else if liczbaOczek = 5 then
  begin
    imgKostka.Picture.LoadFromFile('Grafika\Kostka\Kostka5.png');
  end
  else if liczbaOczek = 6 then
  begin
    imgKostka.Picture.LoadFromFile('Grafika\Kostka\Kostka6.png');
  end;

  // LOSOWANIE DLA WROGA
  if liczbaOczekW = 1 then // w tym przypadku nie mo?e by? ":" przed "="
  begin
    imgKostkaW.Picture.LoadFromFile('Grafika\Kostka\KostkaW1.png');
  end
  else if liczbaOczekW = 2 then
  begin
    imgKostkaW.Picture.LoadFromFile('Grafika\Kostka\KostkaW2.png');
  end
  else if liczbaOczekW = 3 then
  begin
    imgKostkaW.Picture.LoadFromFile('Grafika\Kostka\KostkaW3.png');
  end
  else if liczbaOczekW = 4 then
  begin
    imgKostkaW.Picture.LoadFromFile('Grafika\Kostka\KostkaW4.png');
  end
  else if liczbaOczekW = 5 then
  begin
    imgKostkaW.Picture.LoadFromFile('Grafika\Kostka\KostkaW5.png');
  end
  else if liczbaOczekW = 6 then
  begin
    imgKostkaW.Picture.LoadFromFile('Grafika\Kostka\KostkaW6.png');
  end;

  // Zako?czenie walki

  if zycieGracza <= 0 then
  begin

    ShowMessage('Przegra?e?!');

    // for i := 1 to 1 do
    begin
      przegrana :=
        strtoint(u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption);
      przegrana := przegrana + 1;
      u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption :=
        inttostr(przegrana);

      // Dodanie zmiennych do TBL_Historia
      ADOTabHistoria.Active := TRUE;

      with ADOQHistoria do
      begin
        Close;
        SQL.Clear; // czy?ci piolecenie sql je?li istnieje
        SQL.Add('select * from TBL_Historia where IdUzytkownika=' +
          inttostr(idUzytkownika));
        Open;
      end;

      // if ADOQHistoria.RecordCount = 0 then
      begin
        ADOTabHistoria.Append;
        ADOTabHistoria['IdUzytkownika'] := idUzytkownika;
        ADOTabHistoria['Wynik'] := 'Przegrana';
        ADOTabHistoria['IdPrzeciwnika'] := idPrzeciwnika;

        ADOTabHistoria.Post;
      end;
      (* else
        begin

        ShowMessage('Nie uda?o si? przes?a? danych na serwer');
        end;
      *)

      // Przes?anie danych na serwer
      begin

        wygrane :=
          strtoint(u_Statystyki.frmStatystyki.lblLiczbaWygranych.Caption);
        przegrane :=
          strtoint(u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption);
        ADOTStatystykiArena.Active := TRUE;

        with ADOQStatystykiArena do
        begin
          Close;
          SQL.Clear; // czy?ci piolecenie sql je?li istnieje
          SQL.Add('select * from TBL_Statystyk where IdUzytkownika=' +
            inttostr(idUzytkownika));
          Open;
        end;

        if ADOQStatystykiArena.RecordCount = 1 then
        begin
          with ADOQStatystykiArena do
          begin
            ADOQStatystykiArena.Close;
            ADOQStatystykiArena.SQL.Clear;
            ADOQStatystykiArena.SQL.Add('UPDATE TBL_Statystyk SET Wygrane =' +
              inttostr(wygrane) + ', Przegrane = ' + inttostr(przegrane) +
              ' WHERE IdUzytkownika=' + inttostr(idUzytkownika) + ' ');
            ADOQStatystykiArena.ExecSQL;
          end;
          ShowMessage('Uda?o si? zaktualizowa? zapis');
        end
        else
        begin
           ADOQStatystykiArena.Append;

             ADOQStatystykiArena['Wygrane'] :=
            u_Statystyki.frmStatystyki.lblLiczbaWygranych.Caption;
            ADOQStatystykiArena['Przegrane'] :=
            u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption;
            ADOQStatystykiArena['IdUzytkownika'] := idUzytkownika;
          ShowMessage('Uda?o si? poprawnie wys?a? dane na serwer');


        end;

      end;
      // przegrana:= przegrana +1;

      Self.Close;

    end;
  end
  else if zycieWroga <= 0 then
  begin
    ShowMessage('Wygra?e?!');
    begin
      wygrana :=
        strtoint(u_Statystyki.frmStatystyki.lblLiczbaWygranych.Caption);
      wygrana := wygrana + 1;
      u_Statystyki.frmStatystyki.lblLiczbaWygranych.Caption :=
        inttostr(wygrana);

      // Dodanie zmiennych do TBL_Historia
      ADOTabHistoria.Active := TRUE;

      with ADOQHistoria do
      begin
        Close;
        SQL.Clear; // czy?ci piolecenie sql je?li istnieje
        SQL.Add('select * from TBL_Historia where IdUzytkownika=' +
          inttostr(idUzytkownika));
        Open;
      end;

      // if ADOQHistoria.RecordCount = 0 then
      begin
        ADOTabHistoria.Append;
        ADOTabHistoria['IdUzytkownika'] := idUzytkownika;
        ADOTabHistoria['Wynik'] := 'Wygrana';
        ADOTabHistoria['IdPrzeciwnika'] := idPrzeciwnika;

        ADOTabHistoria.Post;
      end;
      (* else
        begin

        ShowMessage('Nie uda?o si? przes?a? danych na serwer');
        end;
      *)
      // Przes?anie danych na serwer
      begin

        wygrane :=
          strtoint(u_Statystyki.frmStatystyki.lblLiczbaWygranych.Caption);
        przegrane :=
          strtoint(u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption);
        ADOTStatystykiArena.Active := TRUE;

        with ADOQStatystykiArena do
        begin
          Close;
          SQL.Clear; // czy?ci piolecenie sql je?li istnieje
          SQL.Add('select * from TBL_Statystyk where IdUzytkownika=' +
            inttostr(idUzytkownika));
          Open;
        end;

        if ADOQStatystykiArena.RecordCount = 1 then
        begin
          with ADOQStatystykiArena do
          begin
            ADOQStatystykiArena.Close;
            ADOQStatystykiArena.SQL.Clear;
            ADOQStatystykiArena.SQL.Add('UPDATE TBL_Statystyk SET Wygrane =' +
              inttostr(wygrane) + ',Przegrane = ' + inttostr(przegrane) +
              ' WHERE IdUzytkownika=' + inttostr(idUzytkownika) + ' ');
            ADOQStatystykiArena.ExecSQL;
          end;
          ShowMessage('Uda?o si? zaktualizowa? zapis');
        end
        else
        begin
          ADOQStatystykiArena.Append;

            ADOQStatystykiArena['Wygrane'] :=
            u_Statystyki.frmStatystyki.lblLiczbaWygranych.Caption;
            ADOQStatystykiArena['Przegrane'] :=
            u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption;
            ADOQStatystykiArena['IdUzytkownika'] := idUzytkownika;
          ADOQStatystykiArena.Post;
          ShowMessage('Uda?o si? poprawnie wys?a? dane na serwer');
        end;

      end;

    end;

    Self.Close;

  end;

end;

procedure TfrmArena.imgPoddajClick(Sender: TObject);
var
  buttonSelected, przegrana: integer;
begin
  buttonSelected := MessageDlg('Jeste? pewien poddania si??', mtCustom,
    [mbYes, mbNo], 0);
  if buttonSelected = mrYES then
  begin
    przegrana :=
      strtoint(u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption);
    przegrana := przegrana + 1;
    u_Statystyki.frmStatystyki.lblLiczbaPrzegranych.Caption :=
      inttostr(przegrana);
    Self.Close;

    ADOTabHistoria.Active := TRUE;

    with ADOQHistoria do
    begin
      Close;
      SQL.Clear; // czy?ci piolecenie sql je?li istnieje
      SQL.Add('select * from TBL_Historia where IdUzytkownika=' +
        inttostr(idUzytkownika));
      Open;
    end;

    // if ADOQHistoria.RecordCount = 0 then
    begin
      ADOTabHistoria.Append;
      ADOTabHistoria['IdUzytkownika'] := idUzytkownika;
      ADOTabHistoria['Wynik'] := 'Przegrana';
      ADOTabHistoria['IdPrzeciwnika'] := idPrzeciwnika;

      ADOTabHistoria.Post;
    end;

  end
  else
  begin

  end;
end;

function TfrmArena.Throw(sides: integer): integer;
begin
  Result := Random(sides) + 1;
end;

function TfrmArena.ThrowW(sides: integer): integer;
begin
  Result := Random(sides) + 1;
end;

end.
