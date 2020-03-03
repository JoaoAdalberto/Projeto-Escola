object dmAluno: TdmAluno
  OldCreateOrder = False
  Height = 533
  Width = 850
  object cdsAluno: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT ALUCOD, ALUESC, ALUNOM, ALUSEX, ALUDATNAS, ALUDATMAT, ALU' +
      'CPF, ALUCEP, ALURUA, ALUNUM, ALUCOM, ALUBAI, ALUCID, ALUEST, ALU' +
      'SER, ALURES FROM ALUNO'
    Params = <>
    ProviderName = 'dspAluno'
    Left = 136
    Top = 88
    object cdsAlunoALUCOD: TIntegerField
      DisplayWidth = 3
      FieldName = 'ALUCOD'
      Required = True
    end
    object cdsAlunoALUESC: TIntegerField
      DisplayWidth = 3
      FieldName = 'ALUESC'
      Required = True
    end
    object cdsAlunoALUNOM: TStringField
      DisplayWidth = 20
      FieldName = 'ALUNOM'
      Required = True
      Size = 100
    end
    object cdsAlunoALUSEX: TStringField
      FieldName = 'ALUSEX'
      Required = True
      Size = 1
    end
    object cdsAlunoALUDATNAS: TWideStringField
      DisplayWidth = 15
      FieldName = 'ALUDATNAS'
    end
    object cdsAlunoALUDATMAT: TWideStringField
      DisplayWidth = 15
      FieldName = 'ALUDATMAT'
    end
    object cdsAlunoALUCPF: TStringField
      FieldName = 'ALUCPF'
      Size = 11
    end
    object cdsAlunoALUCEP: TStringField
      FieldName = 'ALUCEP'
      Size = 8
    end
    object cdsAlunoALURUA: TStringField
      DisplayWidth = 15
      FieldName = 'ALURUA'
      Size = 100
    end
    object cdsAlunoALUNUM: TStringField
      FieldName = 'ALUNUM'
      Size = 5
    end
    object cdsAlunoALUCOM: TStringField
      DisplayWidth = 15
      FieldName = 'ALUCOM'
      Size = 100
    end
    object cdsAlunoALUBAI: TStringField
      DisplayWidth = 15
      FieldName = 'ALUBAI'
      Size = 30
    end
    object cdsAlunoALUCID: TStringField
      DisplayWidth = 15
      FieldName = 'ALUCID'
      Required = True
      Size = 50
    end
    object cdsAlunoALUEST: TStringField
      FieldName = 'ALUEST'
      Required = True
      Size = 2
    end
    object cdsAlunoALUSER: TIntegerField
      DisplayWidth = 3
      FieldName = 'ALUSER'
      Required = True
    end
    object cdsAlunoALURES: TStringField
      DisplayWidth = 15
      FieldName = 'ALURES'
      Size = 100
    end
  end
  object dspAluno: TDataSetProvider
    DataSet = sqlAlterarAluno
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 232
    Top = 88
  end
  object sqlInserirAluno: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into Aluno (ALUCOD , ALUESC, ALUNOM, ALUSEX, ALUDATNAS, A' +
      'LUDATMAT, ALUCPF, ALUCEP, ALURUA, ALUNUM, ALUCOM, ALUBAI, ALUCID' +
      ', ALUEST, ALUSER, ALURES)'#13#10'values (:ALUCOD, :ALUESC, :ALUNOM, :A' +
      'LUSEX, :ALUDATNAS, GETDATE(), :ALUCPF,  :ALUCEP, :ALURUA, :ALUNU' +
      'M, :ALUCOM, :ALUBAI, :ALUCID, :ALUEST, :ALUSER, :ALURES)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ALUCOD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALUESC'
        ParamType = ptInput
      end
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
        DataType = ftString
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
        DataType = ftInteger
        Name = 'ALUSER'
        ParamType = ptInput
      end
      item
        DataType = ftString
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
  object sqlSelectAluno: TSQLDataSet
    CommandText = 
      'SELECT ALUCOD, ALUESC, ALUNOM, ALUSEX, ALUDATNAS, ALUDATMAT, ALU' +
      'CPF, ALUCEP, ALURUA, ALUNUM, ALUCOM, ALUBAI, ALUCID, ALUEST, ALU' +
      'SER, ALURES FROM ALUNO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmConexao.sqlConexao
    Left = 296
    Top = 200
    object sqlSelectAlunoALUCOD: TIntegerField
      DisplayWidth = 3
      FieldName = 'ALUCOD'
      Required = True
    end
    object sqlSelectAlunoALUESC: TIntegerField
      DisplayWidth = 3
      FieldName = 'ALUESC'
      Required = True
    end
    object sqlSelectAlunoALUNOM: TStringField
      DisplayWidth = 15
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
      DisplayWidth = 15
      FieldName = 'ALUDATNAS'
    end
    object sqlSelectAlunoALUDATMAT: TWideStringField
      DisplayWidth = 15
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
    object sqlSelectAlunoALURUA: TStringField
      DisplayWidth = 15
      FieldName = 'ALURUA'
      Size = 100
    end
    object sqlSelectAlunoALUNUM: TStringField
      FieldName = 'ALUNUM'
      Size = 5
    end
    object sqlSelectAlunoALUCOM: TStringField
      DisplayWidth = 15
      FieldName = 'ALUCOM'
      Size = 100
    end
    object sqlSelectAlunoALUBAI: TStringField
      DisplayWidth = 15
      FieldName = 'ALUBAI'
      Size = 30
    end
    object sqlSelectAlunoALUCID: TStringField
      DisplayWidth = 15
      FieldName = 'ALUCID'
      Required = True
      Size = 50
    end
    object sqlSelectAlunoALUEST: TStringField
      FieldName = 'ALUEST'
      Required = True
      Size = 2
    end
    object sqlSelectAlunoALUSER: TIntegerField
      DisplayWidth = 3
      FieldName = 'ALUSER'
      Required = True
    end
    object sqlSelectAlunoALURES: TStringField
      DisplayWidth = 15
      FieldName = 'ALURES'
      Size = 100
    end
  end
  object sqlAlterarAluno: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'update Escola'#13#10'set ALUNOM = :ALUNOM, ALUSEX = :ALUSEX, ALUDATNAS' +
      ' = :ALUDATNAS, ALUCPF = :ALUCPF, ALUCEP = :ALUCEP,'#13#10'ALURUA = :AL' +
      'URUA, ALUNUM = :ALUNUM,'#13#10'ALUCOM = :ALUCOM, ALUBAI = :ALUBAI, '#13#10'A' +
      'LUCID = :ALUCID, ALUEST = :ALUEST, ALUSER = :ALUSER,'#13#10'ALURES = :' +
      'ALURES'#13#10'where (ALUCOD = :ALUCOD)'
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
        DataType = ftString
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
        DataType = ftInteger
        Name = 'ALUSER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALURES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALUCOD'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 376
    Top = 200
  end
end
