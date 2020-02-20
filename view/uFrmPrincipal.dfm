object unFrmPrincipal: TunFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'CRUD Completo Escola'
  ClientHeight = 375
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainmenPrincipal
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    804
    375)
  PixelsPerInch = 96
  TextHeight = 13
  object lblSCEFA: TLabel
    Left = 304
    Top = 96
    Width = 190
    Height = 81
    Alignment = taCenter
    Caption = 'SCEFA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 168
    Top = 200
    Width = 473
    Height = 24
    Caption = 'Servi'#231'o de cadastro de escolas, funcion'#225'rios e alunos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDataHora: TLabel
    Left = 645
    Top = 350
    Width = 5
    Height = 19
    Alignment = taCenter
    Anchors = [akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object mainmenPrincipal: TMainMenu
    Left = 104
    Top = 88
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Escolas1: TMenuItem
        Caption = 'Escolas'
        OnClick = Escolas1Click
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcionarios'
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
      end
      object Cargos1: TMenuItem
        Caption = 'Cargos'
        OnClick = Cargos1Click
      end
      object Series1: TMenuItem
        Caption = 'Series'
      end
      object Disciplinas1: TMenuItem
        Caption = 'Disciplinas'
      end
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      object Escola1: TMenuItem
        Caption = 'Escola'
        OnClick = Escola1Click
      end
    end
  end
  object datetime: TTimer
    OnTimer = datetimeTimer
    Left = 696
    Top = 344
  end
end
