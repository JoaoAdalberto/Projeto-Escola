object frmCadastrarEscola: TfrmCadastrarEscola
  Left = 0
  Top = 0
  Caption = 'Cadastrar Escola'
  ClientHeight = 327
  ClientWidth = 619
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
    Top = 8
    Width = 489
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
    Top = 131
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lbledtNomeEscola: TLabeledEdit
    Left = 48
    Top = 56
    Width = 529
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome '
    TabOrder = 0
  end
  object lbledtDescricao: TLabeledEdit
    Left = 48
    Top = 104
    Width = 529
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 1
  end
  object lbledtEstado: TLabeledEdit
    Left = 543
    Top = 192
    Width = 34
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Estado'
    TabOrder = 2
  end
  object lbledtRua: TLabeledEdit
    Left = 128
    Top = 144
    Width = 193
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Rua'
    TabOrder = 3
  end
  object lbledtNumero: TLabeledEdit
    Left = 344
    Top = 144
    Width = 41
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero'
    TabOrder = 4
  end
  object lbledtComplemento: TLabeledEdit
    Left = 48
    Top = 192
    Width = 273
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Complemento'
    TabOrder = 5
  end
  object lbledtBairro: TLabeledEdit
    Left = 408
    Top = 144
    Width = 169
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    TabOrder = 6
  end
  object lbledtCidade: TLabeledEdit
    Left = 344
    Top = 192
    Width = 169
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Cidade'
    TabOrder = 7
  end
  object mskedtCep: TMaskEdit
    Left = 48
    Top = 144
    Width = 65
    Height = 21
    EditMask = '00000\-000;1;_'
    MaxLength = 9
    TabOrder = 8
    Text = '     -   '
  end
  object Button1: TButton
    Left = 176
    Top = 240
    Width = 273
    Height = 25
    Caption = 'Confirmar Cadastro'
    TabOrder = 9
  end
  object Button2: TButton
    Left = 176
    Top = 287
    Width = 273
    Height = 25
    Caption = 'Cancelar Cadastro'
    TabOrder = 10
  end
end
