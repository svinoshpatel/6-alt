object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Area Calculator'
  ClientHeight = 250
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelResult: TLabel
    Left = 40
    Top = 200
    Width = 80
    Height = 13
    Caption = 'Area: 0'
  end
  object EditValue1: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object EditValue2: TEdit
    Left = 40
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object ButtonRectangle: TButton
    Left = 200
    Top = 40
    Width = 100
    Height = 25
    Caption = 'Rectangle'
    Tag = 1
    TabOrder = 2
    OnClick = CalculateArea
  end
  object ButtonCircle: TButton
    Left = 200
    Top = 80
    Width = 100
    Height = 25
    Caption = 'Circle'
    Tag = 2
    TabOrder = 3
    OnClick = CalculateArea
  end
  object ButtonTriangle: TButton
    Left = 200
    Top = 120
    Width = 100
    Height = 25
    Caption = 'Triangle'
    Tag = 3
    TabOrder = 4
    OnClick = CalculateArea
  end
end
