object frmCadastrarEscola: TfrmCadastrarEscola
  Left = 0
  Top = 0
  Caption = 'Cadastrar Escola'
  ClientHeight = 411
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTopo: TLabel
    Left = 48
    Top = 8
    Width = 481
    Height = 24
    Caption = 'Para cadastrar sua escola preencha os campos abaixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 184
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lblDataCadastr: TLabel
    Left = 391
    Top = 63
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object lbledtDescricao: TLabeledEdit
    Left = 48
    Top = 152
    Width = 529
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 1
  end
  object lbledtEstado: TLabeledEdit
    Left = 543
    Top = 245
    Width = 34
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Estado'
    TabOrder = 8
  end
  object lbledtRua: TLabeledEdit
    Left = 128
    Top = 197
    Width = 193
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Rua'
    TabOrder = 3
  end
  object lbledtNumero: TLabeledEdit
    Left = 344
    Top = 197
    Width = 41
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero'
    TabOrder = 4
  end
  object lbledtComplemento: TLabeledEdit
    Left = 48
    Top = 245
    Width = 273
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Complemento'
    TabOrder = 6
  end
  object lbledtBairro: TLabeledEdit
    Left = 408
    Top = 197
    Width = 169
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    TabOrder = 5
  end
  object lbledtCidade: TLabeledEdit
    Left = 344
    Top = 245
    Width = 169
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Cidade'
    TabOrder = 7
  end
  object mskedtCep: TMaskEdit
    Left = 48
    Top = 197
    Width = 65
    Height = 21
    EditMask = '00000\-000;1;_'
    MaxLength = 9
    TabOrder = 2
    Text = '     -   '
  end
  object btnConfirmarCadastro: TButton
    Left = 176
    Top = 272
    Width = 273
    Height = 25
    Caption = 'Confirmar Cadastro'
    TabOrder = 9
    OnClick = btnConfirmarCadastroClick
  end
  object btnCancelarCadastro: TButton
    Left = 176
    Top = 319
    Width = 273
    Height = 25
    Caption = 'Cancelar Cadastro'
    TabOrder = 10
  end
  object lbledtNome: TLabeledEdit
    Left = 48
    Top = 109
    Width = 531
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 0
  end
  object lbledtCodigo: TLabeledEdit
    Left = 240
    Top = 54
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Codigo'
    TabOrder = 11
  end
  object dattimpickDataCadastro: TDateTimePicker
    Left = 391
    Top = 82
    Width = 186
    Height = 21
    Date = 43879.557137164350000000
    Time = 43879.557137164350000000
    TabOrder = 12
  end
  object DataSource1: TDataSource
    DataSet = dmConexao.cdsEscola
    Left = 616
    Top = 288
  end
end
