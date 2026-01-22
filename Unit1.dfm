object Form1: TForm1
  Left = 179
  Top = 88
  Width = 1201
  Height = 675
  Caption = #27231#31278#20381#23384#25991#23383#22793#25563
  Color = clBtnFace
  Font.Charset = SHIFTJIS_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Meiryo UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 265
    Width = 63
    Height = 383
    Align = alLeft
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
  end
  object Memo2: TMemo
    Left = 63
    Top = 265
    Width = 62
    Height = 383
    Align = alLeft
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 125
    Top = 265
    Width = 1068
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object LtBF: TListBox
      Left = 0
      Top = 0
      Width = 399
      Height = 383
      Align = alLeft
      ItemHeight = 13
      TabOrder = 0
    end
    object LtAF: TListBox
      Left = 399
      Top = 0
      Width = 669
      Height = 383
      Align = alClient
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1193
    Height = 139
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      1193
      139)
    object SpeedButton1: TSpeedButton
      Left = 394
      Top = 2
      Width = 35
      Height = 40
      Caption = #22793#25563
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 227
      Top = 2
      Width = 125
      Height = 40
      Caption = #27231#31278#20381#23384#25991#23383#34892#34920#31034
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 10
      Top = 2
      Width = 164
      Height = 19
      Caption = #12463#12522#12483#12503#12508#12540#12489#12363#12425#36028#12426#20184#12369
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 10
      Top = 23
      Width = 164
      Height = 19
      Caption = #12467#12500#12540#12375#12383#12501#12449#12452#12523#12434#34920#31034
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object Label1: TLabel
      Left = 193
      Top = 2
      Width = 16
      Height = 16
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 367
      Top = 11
      Width = 16
      Height = 16
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 449
      Top = 2
      Width = 16
      Height = 16
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 481
      Top = 2
      Width = 111
      Height = 19
      Caption = #12463#12522#12483#12503#12508#12540#12489#12395#12467#12500#12540
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 481
      Top = 23
      Width = 111
      Height = 19
      Caption = #12501#12449#12452#12523#12395#19978#26360#12365#20445#23384
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object Label4: TLabel
      Left = 193
      Top = 24
      Width = 16
      Height = 16
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 449
      Top = 24
      Width = 16
      Height = 16
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 10
      Top = 50
      Width = 247
      Height = 20
      Caption = #12467#12500#12540#12375#12383#12501#12457#12523#12480#20869#12398#12501#12449#12452#12523#12434#26908#32034
      OnClick = SpeedButton7Click
    end
    object Label6: TLabel
      Left = 282
      Top = 45
      Width = 19
      Height = 19
      Caption = #8593
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object LtFiles: TListBox
      Left = 22
      Top = 75
      Width = 873
      Height = 60
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      OnClick = LtFilesClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 139
    Width = 1193
    Height = 126
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object ListBox1: TListBox
      Left = 0
      Top = 0
      Width = 1099
      Height = 126
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object ListBox2: TListBox
      Left = 1099
      Top = 0
      Width = 94
      Height = 126
      Align = alRight
      ItemHeight = 13
      TabOrder = 1
    end
  end
end
