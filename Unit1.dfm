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
  TextHeight = 17
  object Memo1: TMemo
    Left = 0
    Top = 347
    Width = 82
    Height = 289
    Align = alLeft
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
  end
  object Memo2: TMemo
    Left = 82
    Top = 347
    Width = 81
    Height = 289
    Align = alLeft
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 163
    Top = 347
    Width = 1022
    Height = 289
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object LtBF: TListBox
      Left = 0
      Top = 0
      Width = 522
      Height = 289
      Align = alLeft
      ItemHeight = 17
      TabOrder = 0
    end
    object LtAF: TListBox
      Left = 522
      Top = 0
      Width = 500
      Height = 289
      Align = alClient
      ItemHeight = 17
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1185
    Height = 182
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      1185
      182)
    object SpeedButton1: TSpeedButton
      Left = 515
      Top = 3
      Width = 46
      Height = 52
      Caption = #22793#25563
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 297
      Top = 3
      Width = 163
      Height = 52
      Caption = #27231#31278#20381#23384#25991#23383#34892#34920#31034
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 13
      Top = 3
      Width = 215
      Height = 24
      Caption = #12463#12522#12483#12503#12508#12540#12489#12363#12425#36028#12426#20184#12369
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 13
      Top = 30
      Width = 215
      Height = 25
      Caption = #12467#12500#12540#12375#12383#12501#12449#12452#12523#12434#34920#31034
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object Label1: TLabel
      Left = 252
      Top = 3
      Width = 21
      Height = 26
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 480
      Top = 14
      Width = 21
      Height = 26
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 587
      Top = 3
      Width = 21
      Height = 26
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 629
      Top = 3
      Width = 145
      Height = 24
      Caption = #12463#12522#12483#12503#12508#12540#12489#12395#12467#12500#12540
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 629
      Top = 30
      Width = 145
      Height = 25
      Caption = #12501#12449#12452#12523#12395#19978#26360#12365#20445#23384
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object Label4: TLabel
      Left = 252
      Top = 31
      Width = 21
      Height = 26
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 587
      Top = 31
      Width = 21
      Height = 26
      Caption = #8658
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 13
      Top = 65
      Width = 323
      Height = 27
      Caption = #12467#12500#12540#12375#12383#12501#12457#12523#12480#20869#12398#12501#12449#12452#12523#12434#26908#32034
      OnClick = SpeedButton7Click
    end
    object Label6: TLabel
      Left = 369
      Top = 59
      Width = 24
      Height = 30
      Caption = #8593
      Font.Charset = SHIFTJIS_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Meiryo UI'
      Font.Style = []
      ParentFont = False
    end
    object LtFiles: TListBox
      Left = 29
      Top = 98
      Width = 1141
      Height = 79
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 17
      TabOrder = 0
      OnClick = LtFilesClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 182
    Width = 1185
    Height = 165
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object ListBox1: TListBox
      Left = 0
      Top = 0
      Width = 1062
      Height = 165
      Align = alClient
      ItemHeight = 17
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object ListBox2: TListBox
      Left = 1062
      Top = 0
      Width = 123
      Height = 165
      Align = alRight
      ItemHeight = 17
      TabOrder = 1
    end
  end
end
