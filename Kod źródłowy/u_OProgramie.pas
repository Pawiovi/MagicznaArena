unit u_OProgramie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmOProgramie = class(TForm)
    imgOProgamie: TImage;
    LabelTworcy: TLabel;
    LabelDaniel: TLabel;
    LabelSebastian: TLabel;
    LabelPatryk: TLabel;
    LabelKrzysztof: TLabel;
    LabelNrAlbumuD: TLabel;
    LabelNrAlbumuS: TLabel;
    LabelNrAlbumuP: TLabel;
    LabelNrAlbumuK: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOProgramie: TfrmOProgramie;

implementation

{$R *.dfm}

end.
