object frmExcluirEscola: TfrmExcluirEscola
  Left = 0
  Top = 0
  Caption = 'Excluir Escola'
  ClientHeight = 92
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblExcluirEscola: TLabel
    Left = 0
    Top = 0
    Width = 635
    Height = 33
    Align = alTop
    Caption = 'Digite o c'#243'digo da Escola a ser exclu'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 465
  end
  object lblNome: TLabel
    Left = 432
    Top = 39
    Width = 27
    Height = 13
    Caption = 'Nome'
    Visible = False
  end
  object lblNomeEscola: TLabel
    Left = 184
    Top = 58
    Width = 3
    Height = 13
    Visible = False
  end
  object lbledtCodigoEscola: TLabeledEdit
    Left = 32
    Top = 56
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Codigo'
    TabOrder = 0
    OnChange = lbledtCodigoEscolaChange
  end
  object btnExcluir: TButton
    Left = 184
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = btnExcluirClick
  end
end
