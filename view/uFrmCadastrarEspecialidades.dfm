object frmCadastrarEspecialidades: TfrmCadastrarEspecialidades
  Left = 0
  Top = 0
  Caption = 'Cadastrar Especialidade'
  ClientHeight = 452
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgcEspecialidade: TPageControl
    Left = 0
    Top = 0
    Width = 724
    Height = 452
    ActivePage = tbPesquisar
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 31
    ExplicitWidth = 601
    ExplicitHeight = 386
    object tbPesquisar: TTabSheet
      Caption = 'tbPesquisar'
      ExplicitLeft = 8
      ExplicitTop = 48
      object Panel1: TPanel
        Left = 0
        Top = 388
        Width = 716
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 224
        ExplicitWidth = 393
        object btnFechar1: TButton
          Left = 252
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
        end
      end
      object pnlPesquisar: TPanel
        Left = 0
        Top = 0
        Width = 716
        Height = 41
        Align = alTop
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = -6
        ExplicitWidth = 393
        object LabeledEdit1: TLabeledEdit
          Left = 8
          Top = 16
          Width = 241
          Height = 21
          EditLabel.Width = 137
          EditLabel.Height = 13
          EditLabel.Caption = 'Digite o ### para pesquisar'
          TabOrder = 0
        end
        object btnPesquisar: TButton
          Left = 320
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
        end
      end
      object dbEspecialidade: TDBGrid
        Left = 0
        Top = 41
        Width = 449
        Height = 128
        Align = alCustom
        DataSource = dsEspecialidade
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 352
        Width = 716
        Height = 36
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 3
        object btnDetalhar: TButton
          Left = 186
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Detalhar'
          TabOrder = 0
          OnClick = btnDetalharClick
        end
        object btnNovo: TButton
          Left = 267
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 1
          OnClick = btnNovoClick
        end
        object btnExcluir: TButton
          Left = 352
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
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel2: TPanel
        Left = 0
        Top = 388
        Width = 716
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -4
        ExplicitTop = 210
        ExplicitWidth = 569
        object btnFechar: TButton
          Left = 249
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = btnFecharClick
        end
      end
      object lbledtEspecialidadeDes: TLabeledEdit
        Left = 3
        Top = 64
        Width = 266
        Height = 21
        EditLabel.Width = 64
        EditLabel.Height = 13
        EditLabel.Caption = 'Especialidade'
        TabOrder = 1
      end
      object lbledtCodigo: TLabeledEdit
        Left = 3
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 36
        EditLabel.Height = 13
        EditLabel.Caption = 'Codigo '
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 0
        Top = 347
        Width = 716
        Height = 41
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 3
        ExplicitTop = 169
        ExplicitWidth = 585
        object btnListar: TButton
          Left = 13
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 0
        end
        object btnAlterar: TButton
          Left = 113
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
        end
        object btnGravar: TButton
          Left = 207
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btnGravarClick
        end
        object btnCancelar: TButton
          Left = 304
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
        end
      end
    end
  end
  object dsEspecialidade: TDataSource
    DataSet = dmConexao.cdsEspecialidade
    Left = 368
    Top = 160
  end
end
