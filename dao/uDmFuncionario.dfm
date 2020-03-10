object dmFuncionario: TdmFuncionario
  OldCreateOrder = False
  Height = 265
  Width = 442
  object sqlInserirFuncionario: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into Funcionario (FUNCOD ,FUNNOM, FUNDATNAS, FUNDATEMP, F' +
      'UNSEX, FUNCPF, FUNESC, FUNESP, FUNCEP, FUNRUA, FUNNUM, FUNCOM, F' +
      'UNBAI, FUNCID, FUNEST)'#13#10'values (:FUNCOD, :FUNNOM, :FUNDATNAS, GE' +
      'TDATE(), :FUNSEX, :FUNCPF, :FUNESC , :FUNESP, :FUNCEP, :FUNRUA, ' +
      ':FUNNUM, :FUNCOM, :FUNBAI, :FUNCID, :FUNEST)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'FUNCOD'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNNOM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FUNDATNAS'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNSEX'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNCPF'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNESC'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNESP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNCEP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNRUA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNNUM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNCOM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNBAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNCID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNEST'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 40
    Top = 96
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sqlSelectFuncionario
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 128
    Top = 48
  end
  object sqlExcluirFuncionario: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'delete from Funcionario where (FUNCOD like :FUNCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FUNCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 40
    Top = 144
  end
  object sqlSelectFuncionario: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT FUNCOD, FUNNOM, FUNDATNAS, FUNDATEMP, FUNSEX, FUNCPF, FUN' +
      'ESC, FUNESP, FUNCEP, FUNRUA, FUNNUM, FUNCOM, FUNBAI, FUNCID, FUN' +
      'EST FROM FUNCIONARIO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmConexao.sqlConexao
    Left = 40
    Top = 192
    object sqlSelectFuncionarioFUNCOD: TIntegerField
      DisplayWidth = 3
      FieldName = 'FUNCOD'
      Required = True
    end
    object sqlSelectFuncionarioFUNNOM: TStringField
      DisplayWidth = 20
      FieldName = 'FUNNOM'
      Required = True
      Size = 100
    end
    object sqlSelectFuncionarioFUNDATNAS: TSQLTimeStampField
      FieldName = 'FUNDATNAS'
    end
    object sqlSelectFuncionarioFUNDATEMP: TWideStringField
      FieldName = 'FUNDATEMP'
    end
    object sqlSelectFuncionarioFUNSEX: TStringField
      FieldName = 'FUNSEX'
      Required = True
      Size = 1
    end
    object sqlSelectFuncionarioFUNCPF: TStringField
      FieldName = 'FUNCPF'
      Required = True
      Size = 11
    end
    object sqlSelectFuncionarioFUNESC: TIntegerField
      FieldName = 'FUNESC'
      Required = True
    end
    object sqlSelectFuncionarioFUNESP: TIntegerField
      FieldName = 'FUNESP'
      Required = True
    end
    object sqlSelectFuncionarioFUNCEP: TStringField
      FieldName = 'FUNCEP'
      Size = 8
    end
    object sqlSelectFuncionarioFUNRUA: TStringField
      DisplayWidth = 20
      FieldName = 'FUNRUA'
      Size = 100
    end
    object sqlSelectFuncionarioFUNNUM: TStringField
      FieldName = 'FUNNUM'
      Size = 5
    end
    object sqlSelectFuncionarioFUNCOM: TStringField
      DisplayWidth = 15
      FieldName = 'FUNCOM'
      Size = 100
    end
    object sqlSelectFuncionarioFUNBAI: TStringField
      DisplayWidth = 15
      FieldName = 'FUNBAI'
      Size = 30
    end
    object sqlSelectFuncionarioFUNCID: TStringField
      DisplayWidth = 15
      FieldName = 'FUNCID'
      Required = True
      Size = 50
    end
    object sqlSelectFuncionarioFUNEST: TStringField
      FieldName = 'FUNEST'
      Required = True
      Size = 2
    end
  end
  object sqlAlterarFuncionario: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'update Funcionario'#13#10'set FUNNOM = :FUNNOM, FUNDATNAS = :FUNDATNAS' +
      ', FUNSEX = :FUNSEX, FUNCPF = :FUNCPF, FUNESC = :FUNESC, FUNESP =' +
      ' :FUNESP,'#13#10'FUNCEP = :FUNCEP, FUNRUA = :FUNRUA, FUNNUM = :FUNNUM,' +
      #13#10'FUNCOM = :FUNCOM, FUNBAI = :FUNBAI, '#13#10'FUNCID = :FUNCID, FUNEST' +
      ' = :FUNEST'#13#10'where (FUNCOD = :FUNCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'FUNNOM'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FUNDATNAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNSEX'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNCPF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FUNESC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FUNESP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNCEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNRUA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNNUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNCOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNBAI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FUNEST'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 144
    Top = 192
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 40
    Top = 48
    object cdsFuncionarioFUNCOD: TIntegerField
      DisplayWidth = 5
      FieldName = 'FUNCOD'
      Required = True
    end
    object cdsFuncionarioFUNNOM: TStringField
      DisplayWidth = 20
      FieldName = 'FUNNOM'
      Required = True
      Size = 100
    end
    object cdsFuncionarioFUNDATNAS: TSQLTimeStampField
      DisplayWidth = 12
      FieldName = 'FUNDATNAS'
    end
    object cdsFuncionarioFUNDATEMP: TWideStringField
      DisplayWidth = 12
      FieldName = 'FUNDATEMP'
    end
    object cdsFuncionarioFUNSEX: TStringField
      FieldName = 'FUNSEX'
      Required = True
      Size = 1
    end
    object cdsFuncionarioFUNCPF: TStringField
      FieldName = 'FUNCPF'
      Required = True
      Size = 11
    end
    object cdsFuncionarioFUNESC: TIntegerField
      DisplayWidth = 5
      FieldName = 'FUNESC'
      Required = True
    end
    object cdsFuncionarioFUNESP: TIntegerField
      DisplayWidth = 5
      FieldName = 'FUNESP'
      Required = True
    end
    object cdsFuncionarioFUNCEP: TStringField
      FieldName = 'FUNCEP'
      Size = 8
    end
    object cdsFuncionarioFUNRUA: TStringField
      DisplayWidth = 15
      FieldName = 'FUNRUA'
      Size = 100
    end
    object cdsFuncionarioFUNNUM: TStringField
      FieldName = 'FUNNUM'
      Size = 5
    end
    object cdsFuncionarioFUNCOM: TStringField
      DisplayWidth = 10
      FieldName = 'FUNCOM'
      Size = 100
    end
    object cdsFuncionarioFUNBAI: TStringField
      DisplayWidth = 15
      FieldName = 'FUNBAI'
      Size = 30
    end
    object cdsFuncionarioFUNCID: TStringField
      DisplayWidth = 15
      FieldName = 'FUNCID'
      Required = True
      Size = 50
    end
    object cdsFuncionarioFUNEST: TStringField
      FieldName = 'FUNEST'
      Required = True
      Size = 2
    end
  end
end
