object frmCadastrarEspecialidades: TfrmCadastrarEspecialidades
  Left = 0
  Top = 0
  Caption = 'Cadastrar Especialidade'
  ClientHeight = 121
  ClientWidth = 593
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
    Left = 8
    Top = 1
    Width = 457
    Height = 33
    Caption = 'Insira a especialidade a ser cadastrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbledtEspecialidadeDes: TLabeledEdit
    Left = 8
    Top = 56
    Width = 553
    Height = 21
    EditLabel.Width = 64
    EditLabel.Height = 13
    EditLabel.Caption = 'Especialidade'
    TabOrder = 0
  end
  object btnCadastrarEspecialidade: TButton
    Left = 224
    Top = 88
    Width = 129
    Height = 25
    Caption = 'Cadastrar Especialidade'
    TabOrder = 1
    OnClick = btnCadastrarEspecialidadeClick
  end
end
