object frmCadastrarEspecialidades: TfrmCadastrarEspecialidades
  Left = 0
  Top = 0
  Caption = 'Cadastrar Especialidade'
  ClientHeight = 270
  ClientWidth = 585
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
  object pgcEspecialidade: TPageControl
    Left = 0
    Top = 0
    Width = 585
    Height = 270
    ActivePage = tbPesquisar
    Align = alClient
    TabOrder = 0
    object tbPesquisar: TTabSheet
      Caption = 'tbPesquisar'
      object Panel1: TPanel
        Left = 0
        Top = 206
        Width = 577
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btnFechar1: TButton
          Left = 418
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = btnFechar1Click
        end
      end
      object pnlPesquisar: TPanel
        Left = 0
        Top = 0
        Width = 577
        Height = 41
        Align = alTop
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object lbledtPesquisar: TLabeledEdit
          Left = 8
          Top = 16
          Width = 241
          Height = 21
          EditLabel.Width = 139
          EditLabel.Height = 13
          EditLabel.Caption = 'Digite o nome para pesquisar'
          TabOrder = 0
        end
        object btnPesquisar: TButton
          Left = 320
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object dbEspecialidade: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 571
        Height = 123
        Align = alClient
        DataSource = dsEspecialidade
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 170
        Width = 577
        Height = 36
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 3
        object btnDetalhar: TButton
          Left = 306
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Detalhar'
          TabOrder = 0
          OnClick = btnDetalharClick
        end
        object btnNovo: TButton
          Left = 399
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 1
          OnClick = btnNovoClick
        end
        object btnExcluir: TButton
          Left = 480
          Top = 5
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
      object Panel2: TPanel
        Left = 0
        Top = 206
        Width = 577
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btnFechar: TButton
          Left = 433
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = btnFecharClick
        end
      end
      object lbledtEspecialidadeDes: TLabeledEdit
        Left = 16
        Top = 88
        Width = 266
        Height = 21
        EditLabel.Width = 64
        EditLabel.Height = 13
        EditLabel.Caption = 'Especialidade'
        TabOrder = 1
      end
      object lbledtCodigo: TLabeledEdit
        Left = 16
        Top = 40
        Width = 121
        Height = 21
        EditLabel.Width = 36
        EditLabel.Height = 13
        EditLabel.Caption = 'Codigo '
        Enabled = False
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 0
        Top = 165
        Width = 577
        Height = 41
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 3
        object btnListar: TButton
          Left = 207
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 0
          OnClick = btnListarClick
        end
        object btnAlterar: TButton
          Left = 297
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnGravar: TButton
          Left = 391
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btnGravarClick
        end
        object btnCancelar: TButton
          Left = 495
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = btnCancelarClick
        end
      end
    end
  end
  object dsEspecialidade: TDataSource
    DataSet = dmConexao.cdsEspecialidade
    Left = 320
    Top = 48
  end
end
