object frmCadastrarEscola: TfrmCadastrarEscola
  Left = 0
  Top = 0
  Caption = 'CRUD Escola'
  ClientHeight = 293
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcEscola: TPageControl
    Left = 0
    Top = -2
    Width = 741
    Height = 265
    ActivePage = tbDados
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -8
    object tbPesquisar: TTabSheet
      Caption = 'tbPesquisar'
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 224
          Top = 49
          Width = 135
          Height = 11
          Caption = 'Data no formato AAAA-MM-DD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnPesquisar: TButton
          Left = 376
          Top = 48
          Width = 89
          Height = 22
          Caption = 'Pesquisar'
          TabOrder = 2
          OnClick = btnPesquisarClick
        end
        object rgPesquisa: TRadioGroup
          Left = 23
          Top = 7
          Width = 179
          Height = 63
          Caption = 'Escolha o metodo de pesquisa'
          Items.Strings = (
            'C'#243'digo'
            'Data de Cadastro'
            'Mostrar Todos')
          TabOrder = 0
        end
        object edtPesquisar: TLabeledEdit
          Left = 224
          Top = 19
          Width = 241
          Height = 21
          EditLabel.Width = 144
          EditLabel.Height = 13
          EditLabel.Caption = 'Digite o filtro para a pesquisa:'
          TabOrder = 1
        end
      end
      object dbEscola: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 76
        Width = 727
        Height = 117
        Align = alClient
        DataSource = dsEscola
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbEscolaDblClick
      end
      object pnlBtnsPesq: TPanel
        Left = 0
        Top = 196
        Width = 733
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object btnNovo: TButton
          Left = 486
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnDetalhar: TButton
          Left = 567
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Detalhar'
          TabOrder = 1
          OnClick = btnDetalharClick
        end
        object btnExcluir: TButton
          Left = 648
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
        object btnGerarRelatorios: TButton
          Left = 392
          Top = 3
          Width = 88
          Height = 25
          Caption = 'Gerar Relat'#243'rio'
          TabOrder = 3
          Visible = False
          OnClick = btnGerarRelatoriosClick
        end
      end
    end
    object tbDados: TTabSheet
      Caption = 'tbDados'
      ImageIndex = 1
      object Label1: TLabel
        Left = 20
        Top = 124
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object lblDataCadastro: TLabel
        Left = 254
        Top = 0
        Width = 85
        Height = 13
        Caption = 'Data de Cadastro'
      end
      object lbledtNome: TLabeledEdit
        Left = 20
        Top = 59
        Width = 420
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 0
      end
      object lbledtDescricao: TLabeledEdit
        Left = 20
        Top = 98
        Width = 420
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        TabOrder = 1
      end
      object lbledtRua: TLabeledEdit
        Left = 107
        Top = 138
        Width = 151
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = 'Rua'
        MaxLength = 25
        TabOrder = 3
      end
      object lbledtNumero: TLabeledEdit
        Left = 273
        Top = 138
        Width = 40
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero'
        MaxLength = 5
        TabOrder = 4
        OnKeyPress = lbledtNumeroKeyPress
      end
      object lbledtBairro: TLabeledEdit
        Left = 324
        Top = 138
        Width = 116
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 15
        TabOrder = 5
      end
      object mskedtCep: TMaskEdit
        Left = 20
        Top = 138
        Width = 65
        Height = 21
        EditMask = '00000\-000;1;_'
        MaxLength = 9
        TabOrder = 2
        Text = '     -   '
      end
      object lbledtEstado: TLabeledEdit
        Left = 406
        Top = 175
        Width = 34
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado'
        MaxLength = 2
        TabOrder = 8
        OnKeyPress = lbledtEstadoKeyPress
      end
      object lbledtComplemento: TLabeledEdit
        Left = 20
        Top = 175
        Width = 166
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Complemento'
        MaxLength = 20
        TabOrder = 6
      end
      object lbledtCidade: TLabeledEdit
        Left = 207
        Top = 175
        Width = 179
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 25
        TabOrder = 7
        OnKeyPress = lbledtCidadeKeyPress
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 199
        Width = 733
        Height = 38
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 9
        object btnConfirmarCadastro: TButton
          Left = 568
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btnConfirmarCadastroClick
        end
        object btnCancelarCadastro: TButton
          Left = 649
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = btnCancelarCadastroClick
        end
        object btnAlterar: TButton
          Left = 487
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnListar: TButton
          Left = 406
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 0
          OnClick = btnListarClick
        end
        object btnGerarRelatorio: TButton
          Left = 310
          Top = 7
          Width = 90
          Height = 25
          Caption = 'Gerar Relat'#243'rio'
          TabOrder = 4
          Visible = False
          OnClick = btnGerarRelatorioClick
        end
      end
      object lbledtCodigo: TLabeledEdit
        Left = 20
        Top = 16
        Width = 53
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        TabOrder = 10
      end
      object dtpDataCadastro: TDateTimePicker
        Left = 254
        Top = 16
        Width = 186
        Height = 21
        Date = 43901.368002453700000000
        Time = 43901.368002453700000000
        TabOrder = 11
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 741
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 265
    object btnFechar: TButton
      Left = 603
      Top = 2
      Width = 124
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object dsEscola: TDataSource
    DataSet = dmConexao.cdsEscola
    Left = 560
    Top = 264
  end
end
