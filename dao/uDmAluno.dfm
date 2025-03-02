object dmAluno: TdmAluno
  OldCreateOrder = False
  Height = 533
  Width = 850
  object cdsAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAluno'
    Left = 136
    Top = 88
    object cdsAlunoALUCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 3
      FieldName = 'ALUCOD'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object cdsAlunoALUESC: TIntegerField
      DisplayLabel = 'C'#243'digo da Escola'#13#10
      DisplayWidth = 3
      FieldName = 'ALUESC'
      Required = True
    end
    object cdsAlunoALUNOM: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'ALUNOM'
      Required = True
      Size = 100
    end
    object cdsAlunoALUSEX: TStringField
      DisplayLabel = 'Sexo'#13#10
      FieldName = 'ALUSEX'
      Required = True
      Size = 1
    end
    object cdsAlunoALUDATNAS: TWideStringField
      DisplayLabel = 'Data de Nascimento'
      DisplayWidth = 15
      FieldName = 'ALUDATNAS'
    end
    object cdsAlunoALUCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ALUCPF'
      Size = 11
    end
    object cdsAlunoALUCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'ALUCEP'
      Size = 8
    end
    object cdsAlunoALUDATMAT: TWideStringField
      DisplayLabel = 'Data de Matr'#237'cula'#13#10
      DisplayWidth = 15
      FieldName = 'ALUDATMAT'
    end
    object cdsAlunoALURUA: TStringField
      DisplayLabel = 'Rua'
      DisplayWidth = 15
      FieldName = 'ALURUA'
      Size = 100
    end
    object cdsAlunoALUNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ALUNUM'
      Size = 5
    end
    object cdsAlunoALUCOM: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 15
      FieldName = 'ALUCOM'
      Size = 100
    end
    object cdsAlunoALUBAI: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 15
      FieldName = 'ALUBAI'
      Size = 30
    end
    object cdsAlunoALUCID: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 15
      FieldName = 'ALUCID'
      Required = True
      Size = 50
    end
    object cdsAlunoALUEST: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ALUEST'
      Required = True
      Size = 2
    end
    object cdsAlunoALURES: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 15
      FieldName = 'ALURES'
      Size = 100
    end
    object cdsAlunoSERCOD: TIntegerField
      DisplayLabel = 'C'#243'digo da S'#233'rie'
      DisplayWidth = 3
      FieldName = 'SERCOD'
    end
  end
  object dspAluno: TDataSetProvider
    DataSet = sqlSelectAluno
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 88
  end
  object sqlInserirAluno: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into Aluno (ALUCOD , ALUESC, ALUNOM, ALUSEX, ALUDATNAS, A' +
      'LUDATMAT, ALUCPF, ALUCEP, ALURUA, ALUNUM, ALUCOM, ALUBAI, ALUCID' +
      ', ALUEST,  ALURES)'#13#10'values (:ALUCOD, :ALUESC, :ALUNOM, :ALUSEX, ' +
      ':ALUDATNAS, :ALUDATMAT, :ALUCPF,  :ALUCEP, :ALURUA, :ALUNUM, :AL' +
      'UCOM, :ALUBAI, :ALUCID, :ALUEST,  :ALURES)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ALUCOD'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUESC'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUNOM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUSEX'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUDATNAS'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUDATMAT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUCPF'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUCEP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALURUA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUNUM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUCOM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUBAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUCID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUEST'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALURES'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 88
    Top = 200
  end
  object sqlExcluirAluno: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'delete from Aluno where (ALUCOD like :ALUCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ALUCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 192
    Top = 200
  end
  object sqlAlterarAluno: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'update Aluno'#13#10'set ALUNOM = :ALUNOM, ALUSEX = :ALUSEX, ALUDATNAS ' +
      '= :ALUDATNAS, ALUCPF = :ALUCPF, ALUCEP = :ALUCEP,'#13#10'ALURUA = :ALU' +
      'RUA, ALUNUM = :ALUNUM, '#13#10'ALUCOM = :ALUCOM, ALUBAI = :ALUBAI, ALU' +
      'CID =:ALUCID,'#13#10'ALUEST = :ALUEST, ALURES = :ALURES'#13#10'where (ALUCOD' +
      ' = :ALUCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ALUNOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUSEX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ALUDATNAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUCPF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUCEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALURUA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUNUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUCOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUBAI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUEST'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALURES'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ALUCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 360
    Top = 200
  end
  object sqlSelectAluno: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'select * from Aluno'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmConexao.sqlConexao
    Left = 280
    Top = 200
    object sqlSelectAlunoALUCOD: TIntegerField
      FieldName = 'ALUCOD'
      Required = True
    end
    object sqlSelectAlunoALUESC: TIntegerField
      FieldName = 'ALUESC'
      Required = True
    end
    object sqlSelectAlunoALUNOM: TStringField
      FieldName = 'ALUNOM'
      Required = True
      Size = 100
    end
    object sqlSelectAlunoALUSEX: TStringField
      FieldName = 'ALUSEX'
      Required = True
      Size = 1
    end
    object sqlSelectAlunoALUDATNAS: TWideStringField
      FieldName = 'ALUDATNAS'
    end
    object sqlSelectAlunoALUDATMAT: TWideStringField
      FieldName = 'ALUDATMAT'
    end
    object sqlSelectAlunoALUCPF: TStringField
      FieldName = 'ALUCPF'
      Size = 11
    end
    object sqlSelectAlunoALUCEP: TStringField
      FieldName = 'ALUCEP'
      Size = 8
    end
    object sqlSelectAlunoALUNUM: TStringField
      FieldName = 'ALUNUM'
      Size = 5
    end
    object sqlSelectAlunoALURUA: TStringField
      FieldName = 'ALURUA'
      Size = 100
    end
    object sqlSelectAlunoALUCOM: TStringField
      FieldName = 'ALUCOM'
      Size = 100
    end
    object sqlSelectAlunoALUBAI: TStringField
      FieldName = 'ALUBAI'
      Size = 30
    end
    object sqlSelectAlunoALUCID: TStringField
      FieldName = 'ALUCID'
      Required = True
      Size = 50
    end
    object sqlSelectAlunoALUEST: TStringField
      FieldName = 'ALUEST'
      Required = True
      Size = 2
    end
    object sqlSelectAlunoSERCOD: TIntegerField
      FieldName = 'SERCOD'
    end
    object sqlSelectAlunoALURES: TStringField
      FieldName = 'ALURES'
      Size = 100
    end
  end
  object sqlInserirSerie: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'update Aluno'#13#10'set ALUSER = :ALUSER'#13#10'where (ALUNOM = :ALUNOM)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ALUSER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALUNOM'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 448
    Top = 200
  end
end
