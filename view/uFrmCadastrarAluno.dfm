object frmCadastrarAluno: TfrmCadastrarAluno
  Left = 0
  Top = 0
  Caption = 'Cadastrar Aluno'
  ClientHeight = 372
  ClientWidth = 613
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
  object pgcAluno: TPageControl
    Left = -3
    Top = 1
    Width = 616
    Height = 376
    ActivePage = tbDados
    TabOrder = 0
    object tbPesquisar: TTabSheet
      Caption = 'tbPesquisar'
      object Panel2: TPanel
        Left = 0
        Top = 312
        Width = 608
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btnFechar: TButton
          Left = 456
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = btnFecharClick
        end
      end
      object pnlBtnsPesq: TPanel
        Left = 0
        Top = 271
        Width = 608
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object btnNovo: TButton
          Left = 435
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnDetalhar: TButton
          Left = 354
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Detalhar'
          TabOrder = 1
          OnClick = btnDetalharClick
        end
        object btnExcluir: TButton
          Left = 516
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 608
        Height = 49
        Align = alTop
        Color = clSilver
        ParentBackground = False
        TabOrder = 2
        object lbledtPesquisar: TLabeledEdit
          Left = 16
          Top = 16
          Width = 425
          Height = 21
          EditLabel.Width = 124
          EditLabel.Height = 13
          EditLabel.Caption = 'Digite aqui para pesquisar'
          TabOrder = 0
        end
        object btnPesquisar: TButton
          Left = 488
          Top = 16
          Width = 89
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object dbAluno: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 52
        Width = 602
        Height = 216
        Align = alClient
        DataSource = dsAluno
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tbDados: TTabSheet
      Caption = 'tbDados'
      ImageIndex = 1
      object Label1: TLabel
        Left = 18
        Top = 137
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object lblDataMatricula: TLabel
        Left = 282
        Top = 91
        Width = 84
        Height = 13
        Caption = 'Data da Matr'#237'cula'
      end
      object Label2: TLabel
        Left = 112
        Top = 91
        Width = 96
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Label3: TLabel
        Left = 470
        Top = 91
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Escola: TLabel
        Left = 436
        Top = 45
        Width = 30
        Height = 13
        Caption = 'Escola'
      end
      object lblSexo: TLabel
        Left = 18
        Top = 91
        Width = 50
        Height = 13
        Caption = 'Sexo(M/F)'
      end
      object lbledtEstado: TLabeledEdit
        Left = 305
        Top = 199
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado'
        MaxLength = 2
        TabOrder = 13
        OnKeyPress = lbledtEstadoKeyPress
      end
      object lbledtRua: TLabeledEdit
        Left = 112
        Top = 152
        Width = 164
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'Rua'
        MaxLength = 50
        TabOrder = 8
      end
      object lbledtNumero: TLabeledEdit
        Left = 305
        Top = 152
        Width = 61
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero'
        MaxLength = 5
        TabOrder = 9
        OnKeyPress = lbledtNumeroKeyPress
      end
      object lbledtComplemento: TLabeledEdit
        Left = 402
        Top = 152
        Width = 157
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Complemento'
        MaxLength = 50
        TabOrder = 10
      end
      object lbledtBairro: TLabeledEdit
        Left = 18
        Top = 199
        Width = 86
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 20
        TabOrder = 11
      end
      object lbledtCidade: TLabeledEdit
        Left = 135
        Top = 199
        Width = 141
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 25
        TabOrder = 12
        OnKeyPress = lbledtCidadeKeyPress
      end
      object mskedtCep: TMaskEdit
        Left = 18
        Top = 152
        Width = 61
        Height = 21
        EditMask = '00000\-000;1;_'
        MaxLength = 9
        TabOrder = 7
        Text = '     -   '
      end
      object lbledtNome: TLabeledEdit
        Left = 18
        Top = 64
        Width = 383
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 100
        TabOrder = 1
      end
      object dattimpickDataNascimento: TDateTimePicker
        Left = 112
        Top = 110
        Width = 143
        Height = 21
        Date = 43879.557137164350000000
        Time = 43879.557137164350000000
        TabOrder = 4
      end
      object dattimpckDataMatricula: TDateTimePicker
        Left = 282
        Top = 110
        Width = 159
        Height = 21
        Date = 43879.557137164350000000
        Time = 43879.557137164350000000
        TabOrder = 5
      end
      object mskedtCPF: TMaskEdit
        Left = 470
        Top = 110
        Width = 87
        Height = 21
        EditMask = '000\.000\.000\-00;1;_'
        MaxLength = 14
        TabOrder = 6
        Text = '   .   .   -  '
      end
      object lbledtNomeResponsavel: TLabeledEdit
        Left = 18
        Top = 244
        Width = 383
        Height = 21
        EditLabel.Width = 91
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome Respons'#225'vel'
        MaxLength = 100
        TabOrder = 14
      end
      object lbledtCodigo: TLabeledEdit
        Left = 18
        Top = 19
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 271
        Width = 608
        Height = 41
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 16
        object btnListar: TButton
          Left = 276
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 0
          OnClick = btnListarClick
        end
        object btnAlterar: TButton
          Left = 357
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnCancelar: TButton
          Left = 519
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = btnCancelarClick
        end
        object btnGravar: TButton
          Left = 438
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btnGravarClick
        end
      end
      object pnlRodape: TPanel
        Left = 0
        Top = 312
        Width = 608
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 15
        object Fechar: TButton
          Left = 456
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = FecharClick
        end
      end
      object dblucbxEscola: TDBLookupComboBox
        Left = 436
        Top = 64
        Width = 121
        Height = 21
        DataField = 'ALUESC'
        DataSource = dsAluno
        KeyField = 'ESCCOD'
        ListField = 'ESCNOM'
        ListSource = dsEscola
        TabOrder = 2
      end
      object cbxSex: TComboBox
        Left = 18
        Top = 110
        Width = 61
        Height = 21
        ItemHeight = 13
        MaxLength = 1
        TabOrder = 3
        Items.Strings = (
          'M'
          'F')
      end
    end
  end
  object dsAluno: TDataSource
    DataSet = dmAluno.cdsAluno
    Left = 264
    Top = 32
  end
  object dsEscola: TDataSource
    DataSet = dmConexao.cdsEscola
    Left = 208
    Top = 32
  end
end
