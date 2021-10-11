object FormTri: TFormTri
  Left = 209
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Mix sort'
  ClientHeight = 448
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 100
    Top = 424
    Width = 55
    Height = 16
    Caption = 'Unsorted'
  end
  object Label2: TLabel
    Left = 496
    Top = 424
    Width = 40
    Height = 16
    Caption = 'Sorted'
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 241
    Height = 409
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 256
    Top = 216
    Width = 129
    Height = 25
    Caption = 'Mix sort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 392
    Top = 0
    Width = 241
    Height = 409
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 256
    Top = 176
    Width = 129
    Height = 25
    Caption = 'Standart sort'
    TabOrder = 3
    OnClick = Button2Click
  end
end
