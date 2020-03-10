object frmCadastrarFuncionario: TfrmCadastrarFuncionario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 459
  ClientWidth = 686
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
  object pgcFuncionario: TPageControl
    Left = 0
    Top = 0
    Width = 686
    Height = 459
    ActivePage = tbDados
    Align = alClient
    TabOrder = 0
    OnChange = pgcFuncionarioChange
    ExplicitWidth = 615
    object tbPesquisar: TTabSheet
      Caption = 'tbPesquisar'
      ExplicitWidth = 607
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 678
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 607
        object edtPesquisar: TLabeledEdit
          Left = 16
          Top = 16
          Width = 369
          Height = 21
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = 'Digite para pesquisar '
          TabOrder = 0
        end
        object btnPesquisar: TButton
          Left = 492
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
        end
      end
      object dbFuncionario: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 52
        Width = 672
        Height = 335
        Align = alClient
        DataSource = dsFuncionario
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbFuncionarioDblClick
      end
      object pnlBtnsPesq: TPanel
        Left = 0
        Top = 390
        Width = 678
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 2
        ExplicitWidth = 607
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
    end
    object tbDados: TTabSheet
      Caption = 'tbDados'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 24
        Top = 134
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object lblDataContratacao: TLabel
        Left = 304
        Top = 88
        Width = 101
        Height = 13
        Caption = 'Data de Contrata'#231#227'o'
      end
      object lblSexo: TLabel
        Left = 24
        Top = 88
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object Label2: TLabel
        Left = 119
        Top = 88
        Width = 96
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Label3: TLabel
        Left = 466
        Top = 88
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object lblCargo: TLabel
        Left = 276
        Top = 227
        Width = 64
        Height = 13
        Caption = 'Especialidade'
      end
      object Label4: TLabel
        Left = 408
        Top = 42
        Width = 30
        Height = 13
        Caption = 'Escola'
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 393
        Width = 678
        Height = 38
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 15
        ExplicitWidth = 607
        object btnGravar: TButton
          Left = 446
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btnConfirmarCadastroClick
        end
        object btnCancelarCadastroo: TButton
          Left = 527
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = btnCancelarCadastroClick
        end
        object btnAlterar: TButton
          Left = 365
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnListar: TButton
          Left = 284
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 0
          OnClick = btnListarClick
        end
      end
      object lbledtEstado: TLabeledEdit
        Left = 212
        Top = 246
        Width = 37
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado'
        MaxLength = 2
        TabOrder = 13
      end
      object lbledtRua: TLabeledEdit
        Left = 119
        Top = 153
        Width = 328
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'Rua'
        TabOrder = 8
      end
      object lbledtNumero: TLabeledEdit
        Left = 466
        Top = 153
        Width = 87
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero'
        TabOrder = 9
      end
      object lbledtComplemento: TLabeledEdit
        Left = 212
        Top = 197
        Width = 341
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Complemento'
        TabOrder = 11
      end
      object lbledtBairro: TLabeledEdit
        Left = 24
        Top = 197
        Width = 159
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        TabOrder = 10
      end
      object lbledtCidade: TLabeledEdit
        Left = 24
        Top = 246
        Width = 159
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        TabOrder = 12
      end
      object mskedtCep: TMaskEdit
        Left = 24
        Top = 153
        Width = 64
        Height = 21
        EditMask = '00000\-000;1;_'
        MaxLength = 9
        TabOrder = 7
        Text = '     -   '
      end
      object lbledtNome: TLabeledEdit
        Left = 24
        Top = 61
        Width = 353
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 1
      end
      object dattimpickDataContratacao: TDateTimePicker
        Left = 304
        Top = 107
        Width = 144
        Height = 21
        Date = 43881.557137164350000000
        Time = 43881.557137164350000000
        TabOrder = 5
      end
      object cbxSexo: TComboBox
        Left = 24
        Top = 107
        Width = 64
        Height = 19
        Style = csOwnerDrawFixed
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          'M'
          'F')
      end
      object dattimpckDataNascimento: TDateTimePicker
        Left = 120
        Top = 107
        Width = 152
        Height = 21
        Date = 43881.557137164350000000
        Time = 43881.557137164350000000
        TabOrder = 4
      end
      object mskedtCPF: TMaskEdit
        Left = 466
        Top = 107
        Width = 87
        Height = 21
        EditMask = '000\.000\.000\-00;1;_'
        MaxLength = 14
        TabOrder = 6
        Text = '   .   .   -  '
      end
      object cbxEspecialidade: TComboBox
        Left = 276
        Top = 246
        Width = 277
        Height = 21
        ItemHeight = 13
        TabOrder = 14
      end
      object lbledtCodigo: TLabeledEdit
        Left = 24
        Top = 19
        Width = 53
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 0
      end
      object dblcbxEscola: TDBLookupComboBox
        Left = 408
        Top = 61
        Width = 145
        Height = 21
        DataField = 'FUNESC'
        DataSource = dsFuncionario
        KeyField = 'ESCCOD'
        ListField = 'ESCNOM'
        ListSource = dsEscola
        TabOrder = 2
      end
      object dblucbxEspecialidade: TDBLookupComboBox
        Left = 252
        Top = 296
        Width = 145
        Height = 21
        DataField = 'FUNESP'
        DataSource = dsFuncionario
        KeyField = 'ESPCOD'
        ListField = 'ESPDES'
        ListSource = dsEspecialidade
        TabOrder = 16
      end
    end
  end
  object dsFuncionario: TDataSource
    DataSet = dmFuncionario.cdsFuncionario
    Left = 288
    Top = 344
  end
  object dsEspecialidade: TDataSource
    DataSet = dmConexao.cdsEspecialidade
    Left = 200
    Top = 328
  end
  object dsEscola: TDataSource
    DataSet = dmConexao.cdsEscola
    Left = 128
    Top = 344
  end
end
