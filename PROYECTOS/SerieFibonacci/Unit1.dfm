object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 354
  ClientWidth = 445
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
    Left = 40
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Edit1: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 40
    Top = 59
    Width = 369
    Height = 270
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 167
    Top = 28
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
