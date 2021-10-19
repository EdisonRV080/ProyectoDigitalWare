object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 141
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 40
    Height = 13
    Caption = 'Nombre '
  end
  object Label2: TLabel
    Left = 240
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Horas'
  end
  object Edit1: TEdit
    Left = 24
    Top = 43
    Width = 210
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 240
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 128
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Calcular Salario'
    TabOrder = 2
    OnClick = Button1Click
  end
end
