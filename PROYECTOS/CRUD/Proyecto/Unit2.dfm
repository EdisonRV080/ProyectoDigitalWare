object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 298
  Width = 433
  object dtbBaseDato_: TFDConnection
    ConnectionName = 'CONN'
    Params.Strings = (
      'Database=DESADB'
      'User_Name=apodes21'
      'Password=apot'
      'DriverID=Ora')
    FormatOptions.AssignedValues = [fvMapRules, fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility, fvFmtDisplayTime, fvFmtDisplayNumeric, fvFmtEditNumeric]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SizeMin = 256
        SourceDataType = dtAnsiString
        TargetDataType = dtMemo
      end
      item
        SizeMax = 255
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SizeMin = 256
        SourceDataType = dtWideString
        TargetDataType = dtMemo
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    Connected = True
    LoginPrompt = False
    Left = 25
    Top = 8
  end
  object CLIENTES: TFDQuery
    Connection = dtbBaseDato_
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 104
    Top = 8
    object CLIENTESCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object CLIENTESNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'NOMBRE_CLIENTE'
      Required = True
      Size = 40
    end
    object CLIENTESDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 40
    end
  end
  object CABEZA_FACTURA: TFDQuery
    OnNewRecord = CABEZA_FACTURANewRecord
    Connection = dtbBaseDato_
    SQL.Strings = (
      'SELECT * FROM CABEZA_FACTURA')
    Left = 104
    Top = 64
    object CABEZA_FACTURANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CABEZA_FACTURAFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CABEZA_FACTURACLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 12
    end
    object CABEZA_FACTURATOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
  object DTSCABEZA_FACTURA: TDataSource
    DataSet = CABEZA_FACTURA
    Left = 248
    Top = 72
  end
  object DTSCLIENTES: TDataSource
    DataSet = CLIENTES
    Left = 232
    Top = 24
  end
  object PRODUCTOS: TFDQuery
    Connection = dtbBaseDato_
    SQL.Strings = (
      'select * from PRODUCTOS')
    Left = 96
    Top = 168
    object PRODUCTOSPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object PRODUCTOSNOMBRE_PRODUCTO: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Origin = 'NOMBRE_PRODUCTO'
      Required = True
      Size = 40
    end
    object PRODUCTOSVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
  object DTSPRODUCTOS: TDataSource
    DataSet = PRODUCTOS
    Left = 248
    Top = 168
  end
  object DTSDETALLE_FACTURA: TDataSource
    DataSet = DETALLE_FACTURA
    Left = 248
    Top = 120
  end
  object DETALLE_FACTURA: TFDQuery
    Connection = dtbBaseDato_
    SQL.Strings = (
      'SELECT * FROM DETALLE_FACTURA')
    Left = 104
    Top = 120
    object DETALLE_FACTURANUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 12
    end
    object DETALLE_FACTURAPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
      Required = True
      Size = 40
    end
    object DETALLE_FACTURACANTIDAD: TStringField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      Size = 40
    end
    object DETALLE_FACTURAVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
end
