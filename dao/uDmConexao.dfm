object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 394
  Width = 796
  object sqlConexao: TSQLConnection
    ConnectionName = 'MSSQLCONNECTION'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss30.dll'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=NCDEV28'
      'DataBase=ProjEscola'
      'User_Name=sa'
      'Password=fcm123'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False'
      'Prepare SQL=False')
    VendorLib = 'oledb'
    Connected = True
    Left = 344
    Top = 8
  end
  object dspEscola: TDataSetProvider
    DataSet = sqlSelectEscola
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 136
    Top = 96
  end
  object cdsEscola: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT ESCCOD, ESCNOM, ESCDES, ESCCEP, ESCRUA, ESCCOM, ESCNUM, E' +
      'SCBAIRRO, ESCCIDADE, ESCEST FROM ESCOLA'
    Params = <>
    ProviderName = 'dspEscola'
    Left = 136
    Top = 48
    object cdsEscolaESCCOD: TIntegerField
      FieldName = 'ESCCOD'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object cdsEscolaESCNOM: TStringField
      FieldName = 'ESCNOM'
      Required = True
      Size = 100
    end
    object cdsEscolaESCDES: TStringField
      FieldName = 'ESCDES'
      Size = 100
    end
    object cdsEscolaESCCEP: TStringField
      FieldName = 'ESCCEP'
      Size = 8
    end
    object cdsEscolaESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 100
    end
    object cdsEscolaESCCOM: TStringField
      FieldName = 'ESCCOM'
      Size = 100
    end
    object cdsEscolaESCNUM: TStringField
      FieldName = 'ESCNUM'
      Size = 5
    end
    object cdsEscolaESCBAIRRO: TStringField
      FieldName = 'ESCBAIRRO'
      Size = 30
    end
    object cdsEscolaESCCIDADE: TStringField
      FieldName = 'ESCCIDADE'
      Required = True
      Size = 50
    end
    object cdsEscolaESCEST: TStringField
      FieldName = 'ESCEST'
      Required = True
      Size = 2
    end
  end
  object sqlSelectEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'SELECT ESCCOD, ESCNOM, ESCDES, ESCCEP, ESCRUA, ESCCOM, ESCNUM, E' +
      'SCBAIRRO, ESCCIDADE, ESCEST FROM ESCOLA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 40
    Top = 72
    object sqlSelectEscolaESCCOD: TIntegerField
      FieldName = 'ESCCOD'
      ProviderFlags = [pfInUpdate, pfInKey]
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
    object sqlSelectEscolaESCCOM: TStringField
      FieldName = 'ESCCOM'
      Size = 100
    end
    object sqlSelectEscolaESCBAIRRO: TStringField
      FieldName = 'ESCBAIRRO'
      Size = 30
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
  end
  object dsEscola: TDataSource
    DataSet = cdsEscola
    Left = 136
    Top = 144
  end
  object sqlInserirEscola: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'insert into Escola (ESCCOD ,ESCNOM, ESCDES, ESCCEP, ESCRUA, ESCN' +
      'UM, ESCCOM, ESCBAIRRO, ESCCIDADE, ESCEST)'#13#10'values (:ESCCOD, :ESC' +
      'NOM, :ESCDES, :ESCCEP, :ESCRUA, :ESCNUM, :ESCCOM, :ESCBAIRRO, :E' +
      'SCCIDADE, :ESCEST)'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsEscola
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
      'update Escola'#13#10'set ESCNOME = :ESCNOME, ESCDES = :ESCDES, ESCCEP ' +
      '= :ESCCEP, ESCRUA = :ESCRUA, ESCNUM = :ESCNUM,'#13#10'ESCCOM = :ESCCOM' +
      ', ESCBAIRRO = :ESCBAIRRO, '#13#10'ESCCIDADE = :ESCCIDADE, ESCEST = :ES' +
      'CEST'#13#10'where (ESCCOD = :ESCCOD)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ESCNOME'
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
        Name = 'ESCCOD'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 40
    Top = 176
  end
  object dspCargo: TDataSetProvider
    DataSet = sqlInserirCargo
    Options = [poCascadeDeletes, poCascadeUpdates, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 592
    Top = 40
  end
  object cdsCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    Left = 544
    Top = 40
  end
  object sqlInserirCargo: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 'insert into Cargo (CARCOD , CARDES)'#13#10'values (:CARCOD, :CARDES)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CARCOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CARDES'
        ParamType = ptInput
        Size = 100
      end>
    SQLConnection = sqlConexao
    Left = 592
    Top = 96
    object sqlInserirCargoESCCOD: TIntegerField
      FieldName = 'ESCCOD'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object sqlInserirCargoESCNOM: TStringField
      FieldName = 'ESCNOM'
      Required = True
      Size = 100
    end
    object sqlInserirCargoESCDES: TStringField
      FieldName = 'ESCDES'
      Size = 100
    end
    object sqlInserirCargoESCCEP: TStringField
      FieldName = 'ESCCEP'
      Size = 8
    end
    object sqlInserirCargoESCRUA: TStringField
      FieldName = 'ESCRUA'
      Size = 100
    end
    object sqlInserirCargoESCNUM: TStringField
      FieldName = 'ESCNUM'
      Size = 5
    end
    object sqlInserirCargoESCCOM: TStringField
      FieldName = 'ESCCOM'
      Size = 100
    end
    object sqlInserirCargoESCBAIRRO: TStringField
      FieldName = 'ESCBAIRRO'
      Size = 30
    end
    object sqlInserirCargoESCCIDADE: TStringField
      FieldName = 'ESCCIDADE'
      Required = True
      Size = 50
    end
    object sqlInserirCargoESCEST: TStringField
      FieldName = 'ESCEST'
      Required = True
      Size = 2
    end
  end
  object dsCargo: TDataSource
    DataSet = cdsCargo
    Left = 640
    Top = 40
  end
end
