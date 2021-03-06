unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDataModule2 = class(TDataModule)
    dtbBaseDato_: TFDConnection;
    CLIENTES: TFDQuery;
    CLIENTESCLIENTE: TStringField;
    CLIENTESNOMBRE_CLIENTE: TStringField;
    CLIENTESDIRECCION: TStringField;
    CABEZA_FACTURA: TFDQuery;
    CABEZA_FACTURANUMERO: TStringField;
    CABEZA_FACTURAFECHA: TDateTimeField;
    CABEZA_FACTURACLIENTE: TStringField;
    CABEZA_FACTURATOTAL: TFloatField;
    DTSCABEZA_FACTURA: TDataSource;
    DTSCLIENTES: TDataSource;
    PRODUCTOS: TFDQuery;
    PRODUCTOSPRODUCTO: TStringField;
    PRODUCTOSNOMBRE_PRODUCTO: TStringField;
    PRODUCTOSVALOR: TFloatField;
    DTSPRODUCTOS: TDataSource;
    DTSDETALLE_FACTURA: TDataSource;
    DETALLE_FACTURA: TFDQuery;
    DETALLE_FACTURANUMERO: TStringField;
    DETALLE_FACTURAPRODUCTO: TStringField;
    DETALLE_FACTURACANTIDAD: TStringField;
    DETALLE_FACTURAVALOR: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure CABEZA_FACTURANewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.CABEZA_FACTURANewRecord(DataSet: TDataSet);
begin
   DataModule2.CABEZA_FACTURACLIENTE.AsString := DataModule2.CLIENTESCLIENTE.AsString;
end;

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  CLIENTES.Close;
  CLIENTES.Open;

  CABEZA_FACTURA.Close;
  CABEZA_FACTURA.Open;

  PRODUCTOS.Close;
  PRODUCTOS.Open;

  DETALLE_FACTURA.Close;
  DETALLE_FACTURA.Open;
end;

end.
