object frmCadastrarAluno: TfrmCadastrarAluno
  Left = 0
  Top = 0
  Caption = 'Cadastrar Aluno'
  ClientHeight = 421
  ClientWidth = 624
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
    Width = 454
    Height = 24
    Caption = 'Para cadastrar o aluno preencha os campos abaixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 197
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lblDataMatricula: TLabel
    Left = 328
    Top = 104
    Width = 84
    Height = 13
    Caption = 'Data da Matr'#237'cula'
  end
  object lblSexo: TLabel
    Left = 48
    Top = 104
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  object Label2: TLabel
    Left = 144
    Top = 104
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Label3: TLabel
    Left = 490
    Top = 104
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lbledtEstado: TLabeledEdit
    Left = 490
    Top = 261
    Width = 89
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Estado'
    TabOrder = 0
  end
  object lbledtRua: TLabeledEdit
    Left = 144
    Top = 216
    Width = 249
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Rua'
    TabOrder = 1
  end
  object lbledtNumero: TLabeledEdit
    Left = 409
    Top = 216
    Width = 63
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero'
    TabOrder = 2
  end
  object lbledtComplemento: TLabeledEdit
    Left = 48
    Top = 261
    Width = 249
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Complemento'
    TabOrder = 3
  end
  object lbledtBairro: TLabeledEdit
    Left = 490
    Top = 216
    Width = 89
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    TabOrder = 4
  end
  object lbledtCidade: TLabeledEdit
    Left = 329
    Top = 261
    Width = 143
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Cidade'
    TabOrder = 5
  end
  object mskedtCep: TMaskEdit
    Left = 48
    Top = 216
    Width = 62
    Height = 21
    EditMask = '00000\-000;1;_'
    MaxLength = 9
    TabOrder = 6
    Text = '     -   '
  end
  object btnConfirmarCadastro: TButton
    Left = 179
    Top = 313
    Width = 225
    Height = 25
    Caption = 'Confirmar Cadastro'
    TabOrder = 7
  end
  object btnCancelarCadastro: TButton
    Left = 179
    Top = 358
    Width = 225
    Height = 25
    Caption = 'Cancelar Cadastro'
    TabOrder = 8
  end
  object lbledtNome: TLabeledEdit
    Left = 48
    Top = 77
    Width = 424
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 9
  end
  object dattimpickDataMatricula: TDateTimePicker
    Left = 328
    Top = 123
    Width = 144
    Height = 21
    Date = 43879.557137164350000000
    Time = 43879.557137164350000000
    TabOrder = 10
  end
  object cbxSexo: TComboBox
    Left = 48
    Top = 123
    Width = 64
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'M'
      'F')
  end
  object dattimpckDataNascimento: TDateTimePicker
    Left = 144
    Top = 123
    Width = 160
    Height = 21
    Date = 43879.557137164350000000
    Time = 43879.557137164350000000
    TabOrder = 12
  end
  object mskedtCPF: TMaskEdit
    Left = 490
    Top = 123
    Width = 89
    Height = 21
    EditMask = '000\.000\.000\.-00;1;_'
    MaxLength = 15
    TabOrder = 13
    Text = '   .   .   .-  '
  end
  object lbledtCodigoEscola: TLabeledEdit
    Left = 490
    Top = 77
    Width = 89
    Height = 21
    EditLabel.Width = 81
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo da Escola'
    TabOrder = 14
  end
  object lbledtNomeMae: TLabeledEdit
    Left = 48
    Top = 168
    Width = 256
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome da M'#227'e'
    TabOrder = 15
  end
  object lbledtNomePai: TLabeledEdit
    Left = 330
    Top = 168
    Width = 249
    Height = 21
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do Pai'
    TabOrder = 16
  end
end
