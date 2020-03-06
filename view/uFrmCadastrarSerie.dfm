object frmCadastrarSerie: TfrmCadastrarSerie
  Left = 0
  Top = 0
  Caption = 'Cadastrar Serie'
  ClientHeight = 635
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgcSerie: TPageControl
    Left = 48
    Top = 64
    Width = 705
    Height = 401
    ActivePage = tbPesquisar
    TabOrder = 0
    object tbPesquisar: TTabSheet
      Caption = 'tbPesquisar'
      ExplicitWidth = 897
      object Panel2: TPanel
        Left = 0
        Top = 337
        Width = 697
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 408
        ExplicitWidth = 599
        object btnFechar: TButton
          Left = 536
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = btnFecharClick
        end
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 697
        Height = 49
        Align = alTop
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = -88
        ExplicitTop = 3
        ExplicitWidth = 1024
        object lbledtPesquisar: TLabeledEdit
          Left = 16
          Top = 16
          Width = 501
          Height = 21
          EditLabel.Width = 124
          EditLabel.Height = 13
          EditLabel.Caption = 'Digite aqui para pesquisar'
          TabOrder = 0
        end
        object btnPesquisar: TButton
          Left = 568
          Top = 18
          Width = 89
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object pnlBtnsPesq: TPanel
        Left = 0
        Top = 296
        Width = 697
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 205
        ExplicitWidth = 604
        object btnNovo: TButton
          Left = 523
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnDetalhar: TButton
          Left = 442
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Detalhar'
          TabOrder = 1
          OnClick = btnDetalharClick
        end
        object btnExcluir: TButton
          Left = 604
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
      end
      object dbSerie: TDBGrid
        Left = 0
        Top = 49
        Width = 697
        Height = 247
        Align = alClient
        DataSource = dsSerie
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Label1: TLabel
        Left = 32
        Top = 200
        Width = 100
        Height = 13
        Caption = 'Escolher professores'
      end
      object lblSexo: TLabel
        Left = 32
        Top = 154
        Width = 74
        Height = 13
        Caption = 'Escolher alunos'
      end
      object lbledtNome: TLabeledEdit
        Left = 32
        Top = 69
        Width = 273
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        TabOrder = 0
      end
      object btnInserir: TButton
        Left = 31
        Top = 254
        Width = 75
        Height = 25
        Caption = 'Inserir'
        TabOrder = 1
      end
      object lbledtCodigoEscola: TLabeledEdit
        Left = 32
        Top = 119
        Width = 273
        Height = 21
        EditLabel.Width = 66
        EditLabel.Height = 13
        EditLabel.Caption = 'Codigo Escola'
        TabOrder = 2
      end
      object memoProfessores: TMemo
        Left = 488
        Top = 41
        Width = 185
        Height = 204
        Lines.Strings = (
          'memoProfessores')
        TabOrder = 3
      end
      object cbxEscolherprofessores: TComboBox
        Left = 32
        Top = 219
        Width = 273
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'M'
          'F')
      end
      object memoAlunos: TMemo
        Left = 336
        Top = 41
        Width = 193
        Height = 204
        Lines.Strings = (
          'memoAlunos')
        TabOrder = 5
      end
      object cbxEscolherAlunos: TComboBox
        Left = 32
        Top = 173
        Width = 273
        Height = 21
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          'M'
          'F')
      end
      object lbledtCodigoSerie: TLabeledEdit
        Left = 31
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 36
        EditLabel.Height = 13
        EditLabel.Caption = 'Codigo '
        TabOrder = 7
      end
      object Panel1: TPanel
        Left = 0
        Top = 337
        Width = 697
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 8
        object btnFechar2: TButton
          Left = 536
          Top = 6
          Width = 137
          Height = 25
          Caption = 'Fechar'
          TabOrder = 0
          OnClick = btnFechar2Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 296
        Width = 697
        Height = 41
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 9
        object btnListar: TButton
          Left = 357
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Listar'
          TabOrder = 0
          OnClick = btnListarClick
        end
        object btnAlterar: TButton
          Left = 438
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnGravar: TButton
          Left = 519
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btnGravarClick
        end
        object btnCancelar: TButton
          Left = 600
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
  object dsSerie: TDataSource
    DataSet = dmSerie.cdsSerie
    Left = 632
    Top = 344
  end
end
