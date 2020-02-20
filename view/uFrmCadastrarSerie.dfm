object frmCadastrarSerie: TfrmCadastrarSerie
  Left = 0
  Top = 0
  Caption = 'Cadastrar Serie'
  ClientHeight = 324
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTopo: TLabel
    Left = 48
    Top = 24
    Width = 476
    Height = 24
    Caption = 'Para cadastrar uma s'#233'rie preencha os campos abaixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblSexo: TLabel
    Left = 48
    Top = 104
    Width = 74
    Height = 13
    Caption = 'Escolher alunos'
  end
  object Label1: TLabel
    Left = 48
    Top = 160
    Width = 100
    Height = 13
    Caption = 'Escolher professores'
  end
  object lbledtNome: TLabeledEdit
    Left = 48
    Top = 77
    Width = 273
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 0
  end
  object cbxEscolherAlunos: TComboBox
    Left = 48
    Top = 123
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'M'
      'F')
  end
  object memoAlunos: TMemo
    Left = 352
    Top = 77
    Width = 193
    Height = 204
    Lines.Strings = (
      'memoAlunos')
    TabOrder = 2
  end
  object memoProfessores: TMemo
    Left = 576
    Top = 77
    Width = 193
    Height = 204
    Lines.Strings = (
      'memoAlunos')
    TabOrder = 3
  end
  object cbxEscolherprofessores: TComboBox
    Left = 48
    Top = 179
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'M'
      'F')
  end
end
