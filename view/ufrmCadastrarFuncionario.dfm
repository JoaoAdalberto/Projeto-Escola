object frmCadastrarFuncionario: TfrmCadastrarFuncionario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 408
  ClientWidth = 610
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
    Width = 503
    Height = 24
    Caption = 'Para cadastrar o funcion'#225'rio preencha os campos abaixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 150
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lblDataContratacao: TLabel
    Left = 328
    Top = 104
    Width = 101
    Height = 13
    Caption = 'Data de Contrata'#231#227'o'
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
  object lblCargo: TLabel
    Left = 434
    Top = 242
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object lbledtEstado: TLabeledEdit
    Left = 236
    Top = 261
    Width = 177
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Estado'
    TabOrder = 12
  end
  object lbledtRua: TLabeledEdit
    Left = 143
    Top = 169
    Width = 330
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Rua'
    TabOrder = 8
  end
  object lbledtNumero: TLabeledEdit
    Left = 490
    Top = 169
    Width = 89
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero'
    TabOrder = 9
  end
  object lbledtComplemento: TLabeledEdit
    Left = 236
    Top = 213
    Width = 343
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Complemento'
    TabOrder = 11
  end
  object lbledtBairro: TLabeledEdit
    Left = 48
    Top = 213
    Width = 161
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    TabOrder = 10
  end
  object lbledtCidade: TLabeledEdit
    Left = 48
    Top = 261
    Width = 145
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Cidade'
    TabOrder = 13
  end
  object mskedtCep: TMaskEdit
    Left = 48
    Top = 169
    Width = 65
    Height = 21
    EditMask = '00000\-000;1;_'
    MaxLength = 9
    TabOrder = 6
    Text = '     -   '
  end
  object btnConfirmarCadastro: TButton
    Left = 187
    Top = 313
    Width = 226
    Height = 25
    Caption = 'Confirmar Cadastro'
    TabOrder = 14
    OnClick = btnConfirmarCadastroClick
  end
  object btnCancelarCadastro: TButton
    Left = 187
    Top = 358
    Width = 226
    Height = 25
    Caption = 'Cancelar Cadastro'
    TabOrder = 15
  end
  object lbledtNome: TLabeledEdit
    Left = 48
    Top = 77
    Width = 425
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 0
  end
  object dattimpickDataContratacao: TDateTimePicker
    Left = 328
    Top = 123
    Width = 145
    Height = 21
    Date = 43881.557137164350000000
    Time = 43881.557137164350000000
    TabOrder = 4
  end
  object cbxSexo: TComboBox
    Left = 48
    Top = 123
    Width = 65
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'M'
      'F')
  end
  object dattimpckDataNascimento: TDateTimePicker
    Left = 144
    Top = 123
    Width = 153
    Height = 21
    Date = 43881.557137164350000000
    Time = 43881.557137164350000000
    TabOrder = 3
  end
  object mskedtCPF: TMaskEdit
    Left = 490
    Top = 123
    Width = 89
    Height = 21
    EditMask = '000\.000\.000\.-00;1;_'
    MaxLength = 15
    TabOrder = 5
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
    TabOrder = 1
  end
  object cbxEspecialidade: TComboBox
    Left = 434
    Top = 261
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
end
