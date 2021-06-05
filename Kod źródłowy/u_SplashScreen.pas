unit u_SplashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSplashScreen = class(TForm)
    imgOkonoWczytywania: TImage;
    prgb: TProgressBar;
    lblInfo: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplashScreen: TfrmSplashScreen;

implementation

{$R *.dfm}

(*begin
  Application.Initialize;
  with frmSplashScreen.Create (nil) do
    try
      Application.MainFormOnTaskBar := true;
      prgb.Max := 100;
      Show;
      Update;

      prgb.StepBy(10);
      lblinfo.Caption := 'Sprz¹tanie areny';
      Update;
      Sleep(3000);

      prgb.StepBy(25);
      lblinfo.Caption := 'Sprzedawanie biletów';
      Update;
      Sleep(3000);

      prgb.StepBy(45);
      lblinfo.Caption := 'Wypuszczanie bestii';
      Update;
      Sleep(3000);

      prgb.StepBy(20);
      lblinfo.Caption := 'Ostanie przygotowania';
      Update;
      Sleep(3000);

    finally
      Free;
    end;

Application.Run;*)
end.
