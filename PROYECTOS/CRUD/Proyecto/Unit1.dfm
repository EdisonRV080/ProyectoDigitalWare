object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 248
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataModule2.DTSCLIENTES
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 24
    Top = 39
    Width = 577
    Height = 193
    ActivePage = TabSheet4
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Clientes'
      ExplicitLeft = 0
      object Label10: TLabel
        Left = 24
        Top = 10
        Width = 71
        Height = 13
        Caption = 'Buscar clientes'
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 40
        Width = 560
        Height = 102
        TabOrder = 0
        object Label4: TLabel
          Left = 21
          Top = 30
          Width = 64
          Height = 13
          Caption = 'Identificacion'
        end
        object Label5: TLabel
          Left = 226
          Top = 30
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object Label6: TLabel
          Left = 21
          Top = 57
          Width = 46
          Height = 13
          Caption = 'Direccion '
        end
        object DBEdit5: TDBEdit
          Left = 91
          Top = 27
          Width = 121
          Height = 21
          DataField = 'CLIENTE'
          DataSource = DataModule2.DTSCLIENTES
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 269
          Top = 27
          Width = 265
          Height = 21
          DataField = 'NOMBRE_CLIENTE'
          DataSource = DataModule2.DTSCLIENTES
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 91
          Top = 54
          Width = 443
          Height = 21
          DataField = 'DIRECCION'
          DataSource = DataModule2.DTSCLIENTES
          TabOrder = 2
        end
      end
      object Edit1: TEdit
        Left = 107
        Top = 7
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button1: TButton
        Left = 242
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Productos'
      ImageIndex = 1
      OnContextPopup = TabSheet2ContextPopup
      object Label11: TLabel
        Left = 30
        Top = 18
        Width = 81
        Height = 13
        Caption = ' Buscar producto'
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 57
        Width = 563
        Height = 105
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 19
          Width = 43
          Height = 13
          Caption = 'Producto'
        end
        object Label8: TLabel
          Left = 216
          Top = 19
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object Label9: TLabel
          Left = 16
          Top = 59
          Width = 27
          Height = 13
          Caption = 'Valor '
        end
        object DBEdit8: TDBEdit
          Left = 72
          Top = 16
          Width = 121
          Height = 21
          DataField = 'PRODUCTO'
          DataSource = DataModule2.DTSPRODUCTOS
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 259
          Top = 16
          Width = 270
          Height = 21
          DataField = 'NOMBRE_PRODUCTO'
          DataSource = DataModule2.DTSPRODUCTOS
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 72
          Top = 56
          Width = 121
          Height = 21
          DataField = 'VALOR'
          DataSource = DataModule2.DTSPRODUCTOS
          TabOrder = 2
        end
      end
      object Edit2: TEdit
        Left = 122
        Top = 15
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button2: TButton
        Left = 249
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Encabezado Factura'
      ImageIndex = 2
      OnEnter = TabSheet3Enter
      ExplicitLeft = 0
      object Label12: TLabel
        Left = 19
        Top = 6
        Width = 71
        Height = 13
        Caption = 'Buscar numero'
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 43
        Width = 547
        Height = 105
        Caption = 'ENCABEZADO FACTURA'
        TabOrder = 0
        object Numero: TLabel
          Left = 24
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Numero'
        end
        object Label1: TLabel
          Left = 229
          Top = 24
          Width = 29
          Height = 13
          Caption = 'Fecha'
        end
        object Label2: TLabel
          Left = 24
          Top = 51
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object Label3: TLabel
          Left = 232
          Top = 51
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object DBEdit1: TDBEdit
          Left = 80
          Top = 21
          Width = 121
          Height = 21
          DataField = 'NUMERO'
          DataSource = DataModule2.DTSCABEZA_FACTURA
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 272
          Top = 21
          Width = 121
          Height = 21
          DataField = 'FECHA'
          DataSource = DataModule2.DTSCABEZA_FACTURA
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 48
          Width = 121
          Height = 21
          DataField = 'CLIENTE'
          DataSource = DataModule2.DTSCABEZA_FACTURA
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 272
          Top = 48
          Width = 121
          Height = 21
          DataField = 'TOTAL'
          DataSource = DataModule2.DTSCABEZA_FACTURA
          TabOrder = 3
        end
      end
      object Edit3: TEdit
        Left = 101
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Button3: TButton
        Left = 228
        Top = 1
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Detalles Factura'
      ImageIndex = 3
      OnEnter = TabSheet4Enter
      object DBGrid1: TDBGrid
        Left = 3
        Top = 0
        Width = 563
        Height = 120
        DataSource = DataModule2.DTSDETALLE_FACTURA
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUCTO'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
    end
  end
end
