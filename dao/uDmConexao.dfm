object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 394
  Width = 796
  object sqlConexao: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss30.dll'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=PSDEVD14\MSSQLSERVER01'
      'DataBase=ProjEscola'
      'User_Name='
      'Password='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=True'
      'Prepare SQL=False')
    VendorLib = 'oledb'
    Connected = True
    Left = 344
    Top = 8
  end
  object dspEscola: TDataSetProvider
    DataSet = sqlSelectEscola
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 96
  end
  object cdsEscola: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscola'
    Left = 136
    Top = 48
    object cdsEscolaESCCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 3
      FieldName = 'ESCCOD'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object cdsEscolaESCNOM: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'ESCNOM'
      Required = True
      Size = 100
    end
    object cdsEscolaESCDES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'ESCDES'
      Size = 100
    end
    object cdsEscolaESCCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'ESCCEP'
      Size = 8
    end
    object cdsEscolaESCRUA: TStringField
      DisplayLabel = 'Rua'
      DisplayWidth = 25
      FieldName = 'ESCRUA'
      Size = 100
    end
    object cdsEscolaESCCOM: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 25
      FieldName = 'ESCCOM'
      Size = 100
    end
    object cdsEscolaESCNUM: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ESCNUM'
      Size = 5
    end
    object cdsEscolaESCBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 25
      FieldName = 'ESCBAIRRO'
      Size = 30
    end
    object cdsEscolaESCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'ESCCIDADE'
      Required = True
      Size = 50
    end
    object cdsEscolaESCEST: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESCEST'
      Required = True
      Size = 2
    end
    object cdsEscolaESCDATCAD: TWideStringField
      DisplayLabel = 'Data de Cadastro'
      DisplayWidth = 11
      FieldName = 'ESCDATCAD'
    end
  end
  object sqlSelectEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT ESCCOD, ESCNOM, ESCDES, ESCCEP, ESCRUA, ESCCOM, ESCNUM, E' +
      'SCBAIRRO, ESCCIDADE, ESCEST, ESCDATCAD FROM ESCOLA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 40
    Top = 72
    object sqlSelectEscolaESCCOD: TIntegerField
      FieldName = 'ESCCOD'
      Required = True
    end
    object sqlSelectEscolaESCNOM: TStringField
      FieldName = 'ESCNOM'
      Required = True
      Size = 100
    end
    object sqlSelectEscolaESCDES: TStringField
      FieldName = 'ESCDES'
      Size = 100
    end
    object sqlSelectEscolaESCCEP: TStringField
      FieldName = 'ESCCEP'
      Size = 8
    end
    object sqlSelectEscolaESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 100
    end
    object sqlSelectEscolaESCNUM: TStringField
      FieldName = 'ESCNUM'
      Size = 5
    end
    object sqlSelectEscolaESCBAIRRO: TStringField
      FieldName = 'ESCBAIRRO'
      Size = 30
    end
    object sqlSelectEscolaESCCOM: TStringField
      FieldName = 'ESCCOM'
      Size = 100
    end
    object sqlSelectEscolaESCCIDADE: TStringField
      FieldName = 'ESCCIDADE'
      Required = True
      Size = 50
    end
    object sqlSelectEscolaESCEST: TStringField
      FieldName = 'ESCEST'
      Required = True
      Size = 2
    end
    object sqlSelectEscolaESCDATCAD: TWideStringField
      DisplayWidth = 12
      FieldName = 'ESCDATCAD'
    end
  end
  object sqlInserirEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into Escola (ESCCOD ,ESCNOM, ESCDES, ESCCEP, ESCRUA, ESCN' +
      'UM, ESCCOM, ESCBAIRRO, ESCCIDADE, ESCEST, ESCDATCAD)'#13#10'values (:E' +
      'SCCOD, :ESCNOM, :ESCDES, :ESCCEP, :ESCRUA, :ESCNUM, :ESCCOM, :ES' +
      'CBAIRRO, :ESCCIDADE, :ESCEST, :ESCDATCAD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ESCCOD'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCNOM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCDES'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCEP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCRUA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCNUM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCOM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCBAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCEST'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCDATCAD'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 40
    Top = 120
  end
  object sqlExcluirEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'delete from Escola where (ESCCOD like :ESCCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ESCCOD'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = sqlConexao
    Left = 40
    Top = 16
  end
  object sqlAlterarEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'update Escola'#13#10'set ESCNOM = :ESCNOM, ESCDES = :ESCDES, ESCCEP = ' +
      ':ESCCEP, ESCRUA = :ESCRUA, ESCNUM = :ESCNUM,'#13#10'ESCCOM = :ESCCOM, ' +
      'ESCBAIRRO = :ESCBAIRRO, '#13#10'ESCCIDADE = :ESCCIDADE, ESCEST = :ESCE' +
      'ST'#13#10'where (ESCCOD = :ESCCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESCNOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCDES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCCEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCRUA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCNUM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCCOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCBAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCCIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESCEST'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCOD'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 40
    Top = 176
  end
  object dspEspecialidade: TDataSetProvider
    DataSet = sqlSelectEspecialidade
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 56
  end
  object cdsEspecialidade: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT ESPCOD, ESPDES FROM ESPECIALIDADE'
    Params = <>
    ProviderName = 'dspEspecialidade'
    Left = 512
    Top = 48
    object cdsEspecialidadeESPCOD: TIntegerField
      DisplayLabel = 'C'#243'digo'#13#10#13#10
      DisplayWidth = 3
      FieldName = 'ESPCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEspecialidadeESPDES: TStringField
      DisplayLabel = 'Especialidade'
      DisplayWidth = 20
      FieldName = 'ESPDES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
  end
  object sqlInserirEspecialidade: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into ESPECIALIDADE (ESPCOD, ESPDES)'#13#10'values (:ESPCOD, :ES' +
      'PDES)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ESPCOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESPDES'
        ParamType = ptInput
        Size = 8
      end>
    SQLConnection = sqlConexao
    Left = 536
    Top = 104
  end
  object sqlSelectEspecialidade: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'SELECT ESPCOD, ESPDES FROM ESPECIALIDADE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 648
    Top = 104
    object sqlSelectEspecialidadeESPCOD: TIntegerField
      FieldName = 'ESPCOD'
      Required = True
    end
    object sqlSelectEspecialidadeESPDES: TStringField
      FieldName = 'ESPDES'
      Required = True
      Size = 100
    end
  end
  object sqlAlterarEspecialidade: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'update Especialidade'#13#10'set ESPDES = :ESPDES'#13#10'where (ESPCOD = :ESP' +
      'COD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESPDES'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESPCOD'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 528
    Top = 168
  end
  object sqlExcluirEspecialidade: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'delete from Especialidade where (ESPCOD like :ESPCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ESPCOD'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 648
    Top = 168
  end
end
