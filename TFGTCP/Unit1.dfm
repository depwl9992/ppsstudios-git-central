object ButtonConnect: TButtonConnect
  Left = 0
  Top = 0
  Caption = 'TCP Client'
  ClientHeight = 457
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAddr: TLabel
    Left = 23
    Top = 24
    Width = 43
    Height = 13
    Caption = 'Address:'
  end
  object LabelPort: TLabel
    Left = 42
    Top = 51
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object EditAddr: TEdit
    Left = 72
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditPort: TEdit
    Left = 72
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Output: TMemo
    Left = 8
    Top = 112
    Width = 522
    Height = 289
    Lines.Strings = (
      'Output')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Input: TMemo
    Left = 8
    Top = 407
    Width = 473
    Height = 42
    Lines.Strings = (
      'Input')
    TabOrder = 3
  end
  object ButtonSend: TButton
    Left = 487
    Top = 407
    Width = 43
    Height = 42
    Caption = 'Send'
    TabOrder = 4
  end
  object CheckConnect: TCheckBox
    Left = 13
    Top = 70
    Width = 73
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = ' :Connect'
    ParentBiDiMode = False
    TabOrder = 5
    OnClick = CheckConnectClick
  end
  object TimerRead: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerReadTimer
    Left = 464
    Top = 8
  end
  object TcpClient1: TTcpClient
    Left = 408
    Top = 8
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 344
    Top = 8
  end
end
