unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b :extended;
begin
  if StrToInt(Edit2.Text) <= 35 then
  begin
    a := (15000 * StrToInt(Edit2.Text));
    MessageDlg('Al Empleado '+Edit1.Text+' se le debe pagar la suma de '+formatfloat('#,##0',a)+' pesos.',mtInformation,[mbOK],0);
  end
  else
  if StrToInt(Edit2.Text) > 35 then
  begin
    b := (StrToInt(Edit2.Text)- 35);
    a := ((15000*35)+(19000*b));
    MessageDlg('Al Empleado '+Edit1.Text+' se le debe pagar la suma de '+formatfloat('#,##0',a)+' pesos.',mtInformation,[mbOK],0);
  end;

end;

end.
