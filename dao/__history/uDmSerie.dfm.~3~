object dmSerie: TdmSerie
  OldCreateOrder = False
  Height = 250
  Width = 451
  object sqlInserirSerie: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into serie (SERCOD , SERNOM, SERESC)'#13#10'values (:SERCOD, :S' +
      'ERNOM, :SERESC)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SERCOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERNOM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SERESC'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 72
    Top = 160
  end
  object sqlExcluirSerie: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'delete from Serie where (SERCOD like :SERCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'SERCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 160
    Top = 152
  end
  object sqlAlterarSerie: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'update Serie'#13#10'set SERNOM = :SERNOM, SERESC = :SERESC'#13#10'where (SER' +
      'COD = :SERCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERNOM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SERESC'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SERCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 240
    Top = 152
  end
  object sqlSelectSerie: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'SELECT SERCOD, SERNOM, SERESC FROM SERIE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmConexao.sqlConexao
    Left = 320
    Top = 152
    object sqlSelectSerieSERCOD: TIntegerField
      DisplayWidth = 3
      FieldName = 'SERCOD'
      Required = True
    end
    object sqlSelectSerieSERNOM: TStringField
      DisplayWidth = 15
      FieldName = 'SERNOM'
      Required = True
      Size = 100
    end
    object sqlSelectSerieSERESC: TIntegerField
      DisplayWidth = 3
      FieldName = 'SERESC'
      Required = True
    end
  end
  object cdsSerie: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT SERCOD, SERNOM, SERESC FROM SERIE'
    Params = <>
    ProviderName = 'dspSerie'
    Left = 88
    Top = 72
    object cdsSerieSERCOD: TIntegerField
      DisplayWidth = 3
      FieldName = 'SERCOD'
      Required = True
    end
    object cdsSerieSERNOM: TStringField
      DisplayWidth = 15
      FieldName = 'SERNOM'
      Required = True
      Size = 100
    end
    object cdsSerieSERESC: TIntegerField
      DisplayWidth = 3
      FieldName = 'SERESC'
      Required = True
    end
  end
  object dspSerie: TDataSetProvider
    DataSet = sqlSelectSerie
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 256
    Top = 72
  end
end
