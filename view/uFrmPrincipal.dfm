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
      object Funcionrios1: TMenuItem
        Caption = 'Funcionarios'
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
      end
      object Escolas1: TMenuItem
        Caption = 'Escolas'
        OnClick = Escolas1Click
      end
      object Series1: TMenuItem
        Caption = 'Series'
      end
      object Disciplinas1: TMenuItem
        Caption = 'Disciplinas'
      end
      object Cargos1: TMenuItem
        Caption = 'Cargos'
      end
    end
  end
  object datetime: TTimer
    OnTimer = datetimeTimer
    Left = 600
    Top = 280
  end
end
