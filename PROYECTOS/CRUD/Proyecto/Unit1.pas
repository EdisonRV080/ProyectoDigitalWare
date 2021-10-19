unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Numero: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label10: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label12: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabSheet4Enter(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule2.CLIENTES.CLOSE;
  DataModule2.CLIENTES.SQL.Clear;
  DataModule2.CLIENTES.SQL.Add('SELECT * FROM CLIENTES ');
  DataModule2.CLIENTES.SQL.Add('WHERE CLIENTE = '+Edit1.Text);
  DataModule2.CLIENTES.OPEN;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DataModule2.PRODUCTOS.CLOSE;
  DataModule2.PRODUCTOS.SQL.Clear;
  DataModule2.PRODUCTOS.SQL.Add('SELECT * FROM PRODUCTOS ');
  DataModule2.PRODUCTOS.SQL.Add('WHERE PRODUCTO = '+QuotedStr(Edit2.Text));
  DataModule2.PRODUCTOS.OPEN;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DataModule2.CABEZA_FACTURA.CLOSE;
  DataModule2.CABEZA_FACTURA.SQL.Clear;
  DataModule2.CABEZA_FACTURA.SQL.Add('SELECT * FROM CABEZA_FACTURA ');
  DataModule2.CABEZA_FACTURA.SQL.Add('WHERE NUMERO = '+QuotedStr(Edit3.Text));
  DataModule2.CABEZA_FACTURA.OPEN;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
 if PageControl1.TabIndex = 0 then
 begin
   DBNavigator1.DataSource := DataModule2.DTSCLIENTES;
 end
 else
 if PageControl1.TabIndex = 1 then
 begin
   DBNavigator1.DataSource := DataModule2.DTSPRODUCTOS;
 end
 else
 if PageControl1.TabIndex = 2 then
 begin
   DBNavigator1.DataSource := DataModule2.DTSCABEZA_FACTURA;

 end
 else
 if PageControl1.TabIndex = 1 then
 begin
   DBNavigator1.DataSource := DataModule2.DTSDETALLE_FACTURA;
 end;

end;

procedure TForm1.TabSheet2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
   DBNavigator1.DataSource := DataModule2.DTSPRODUCTOS;
end;

procedure TForm1.TabSheet3Enter(Sender: TObject);
begin
  DBNavigator1.DataSource := DataModule2.DTSCABEZA_FACTURA;
end;

procedure TForm1.TabSheet4Enter(Sender: TObject);
begin
   DBNavigator1.DataSource := DataModule2.DTSDETALLE_FACTURA;
end;

end.
