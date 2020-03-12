object dmFuncionario: TdmFuncionario
  OldCreateOrder = False
  Height = 265
  Width = 442
  object sqlInserirFuncionario: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into Funcionario (FUNCOD ,FUNNOM, FUNDATNAS, FUNDATEMP, F' +
      'UNSEX, FUNCPF, FUNESC, FUNESP, FUNCEP, FUNRUA, FUNNUM, FUNCOM, F' +
      'UNBAI, FUNCID, FUNEST)'#13#10'values (:FUNCOD, :FUNNOM, :FUNDATNAS, :F' +
      'UNDATEMP, :FUNSEX, :FUNCPF, :FUNESC , :FUNESP, :FUNCEP, :FUNRUA,' +
      ' :FUNNUM, :FUNCOM, :FUNBAI, :FUNCID, :FUNEST)'
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
        DataType = ftUnknown
        Name = 'FUNDATNAS'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'FUNDATEMP'
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
      'SELECT FUNCOD, FUNESC,  FUNNOM, FUNDATNAS, FUNDATEMP, FUNSEX, FU' +
      'NCPF,  FUNCEP, FUNRUA, FUNNUM, FUNCOM, FUNBAI, FUNCID, FUNEST, F' +
      'UNESP FROM FUNCIONARIO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmConexao.sqlConexao
    Left = 40
    Top = 192
    object intgrfldSelectFuncionarioFUNCOD: TIntegerField
      FieldName = 'FUNCOD'
      Required = True
    end
    object strngfldSelectFuncionarioFUNNOM: TStringField
      FieldName = 'FUNNOM'
      Required = True
      Size = 100
    end
    object sqlSelectFuncionarioFUNDATNAS: TWideStringField
      FieldName = 'FUNDATNAS'
    end
    object sqlSelectFuncionarioFUNDATEMP: TWideStringField
      FieldName = 'FUNDATEMP'
    end
    object strngfldSelectFuncionarioFUNSEX: TStringField
      FieldName = 'FUNSEX'
      Required = True
      Size = 1
    end
    object strngfldSelectFuncionarioFUNCPF: TStringField
      FieldName = 'FUNCPF'
      Required = True
      Size = 11
    end
    object strngfldSelectFuncionarioFUNCEP: TStringField
      FieldName = 'FUNCEP'
      Size = 8
    end
    object strngfldSelectFuncionarioFUNRUA: TStringField
      FieldName = 'FUNRUA'
      Size = 100
    end
    object strngfldSelectFuncionarioFUNNUM: TStringField
      FieldName = 'FUNNUM'
      Size = 5
    end
    object strngfldSelectFuncionarioFUNCOM: TStringField
      FieldName = 'FUNCOM'
      Size = 100
    end
    object strngfldSelectFuncionarioFUNBAI: TStringField
      FieldName = 'FUNBAI'
      Size = 30
    end
    object strngfldSelectFuncionarioFUNCID: TStringField
      FieldName = 'FUNCID'
      Required = True
      Size = 50
    end
    object strngfldSelectFuncionarioFUNEST: TStringField
      FieldName = 'FUNEST'
      Required = True
      Size = 2
    end
    object sqlSelectFuncionarioFUNESP: TIntegerField
      FieldName = 'FUNESP'
      Required = True
    end
    object sqlSelectFuncionarioFUNESC: TIntegerField
      FieldName = 'FUNESC'
      Required = True
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
    Left = 48
    Top = 48
    object cdsFuncionarioFUNCOD: TIntegerField
      DisplayLabel = 'C'#243'digo Funcion'#225'rio'
      DisplayWidth = 3
      FieldName = 'FUNCOD'
      Required = True
    end
    object cdsFuncionarioFUNNOM: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      DisplayWidth = 20
      FieldName = 'FUNNOM'
      Required = True
      Size = 100
    end
    object cdsFuncionarioFUNDATNAS: TWideStringField
      DisplayLabel = 'Data de Nascimento'
      DisplayWidth = 11
      FieldName = 'FUNDATNAS'
    end
    object cdsFuncionarioFUNDATEMP: TWideStringField
      DisplayLabel = 'Data de Contrata'#231#227'o'
      DisplayWidth = 11
      FieldName = 'FUNDATEMP'
    end
    object cdsFuncionarioFUNSEX: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'FUNSEX'
      Required = True
      Size = 1
    end
    object cdsFuncionarioFUNCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'FUNCPF'
      Required = True
      Size = 11
    end
    object cdsFuncionarioFUNCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'FUNCEP'
      Size = 8
    end
    object cdsFuncionarioFUNRUA: TStringField
      DisplayLabel = 'Rua'
      DisplayWidth = 20
      FieldName = 'FUNRUA'
      Size = 100
    end
    object cdsFuncionarioFUNNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'FUNNUM'
      Size = 5
    end
    object cdsFuncionarioFUNCOM: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 20
      FieldName = 'FUNCOM'
      Size = 100
    end
    object cdsFuncionarioFUNBAI: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 15
      FieldName = 'FUNBAI'
      Size = 30
    end
    object cdsFuncionarioFUNCID: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'FUNCID'
      Required = True
      Size = 50
    end
    object cdsFuncionarioFUNEST: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'FUNEST'
      Required = True
      Size = 2
    end
    object cdsFuncionarioFUNESP: TIntegerField
      DisplayLabel = 'Cod. Especialidade'
      DisplayWidth = 3
      FieldName = 'FUNESP'
      Required = True
    end
    object cdsFuncionarioFUNESC: TIntegerField
      DisplayLabel = 'Cod.Escola'
      DisplayWidth = 3
      FieldName = 'FUNESC'
      Required = True
    end
  end
end
