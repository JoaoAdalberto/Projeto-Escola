object unFrmPrincipal: TunFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Projeto Scefa'
  ClientHeight = 386
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainmenPrincipal
  OldCreateOrder = False
  DesignSize = (
    761
    386)
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
    Left = 602
    Top = 361
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
    ExplicitLeft = 645
    ExplicitTop = 350
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
      object Funcionarios1: TMenuItem
        Caption = 'Funcionarios'
        OnClick = Funcionarios1Click
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
      object Especialidades1: TMenuItem
        Caption = 'Especialidades'
        OnClick = Especialidades1Click
      end
      object Series1: TMenuItem
        Caption = 'Series'
        OnClick = Series1Click
      end
    end
    object Relatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object EscolaRelatorio: TMenuItem
        Caption = 'Escola'
        OnClick = EscolaRelatorioClick
      end
    end
  end
  object datetime: TTimer
    OnTimer = datetimeTimer
    Left = 696
    Top = 344
  end
end
