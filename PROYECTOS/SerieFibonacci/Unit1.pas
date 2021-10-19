unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var n,a,b,c,I :integer;
begin
  Memo1.Lines.Clear;
  n := StrToInt(Edit1.Text);
  a := 1;
  b := 1;
  c := 0;

  for I := 1 to n do
  begin
    a := b;
    b := c;
    c := a+b;
    Memo1.Lines.Add(IntToStr(c));
  end;


end;

end.
