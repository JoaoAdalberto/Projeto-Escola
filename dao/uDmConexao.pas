unit uDmConexao;

interface

uses
  SysUtils, Classes, WideStrings, DB, SqlExpr, DBClient, Provider, FMTBcd, uEscolaModel;

type
  TdmConexao = class(TDataModule)
    sqlConexao: TSQLConnection;
    dspEscola: TDataSetProvider;
    cdsEscola: TClientDataSet;
    sqlSelectEscola: TSQLDataSet;
    sqlSelectEscolaESCCOD: TIntegerField;
    sqlSelectEscolaESCNOM: TStringField;
    sqlSelectEscolaESCDES: TStringField;
    sqlSelectEscolaESCDATCAD: TSQLTimeStampField;
    sqlSelectEscolaESCCEP: TStringField;
    sqlSelectEscolaESCRUA: TStringField;
    sqlSelectEscolaESCNUM: TStringField;
    sqlSelectEscolaESCCOM: TStringField;
    sqlSelectEscolaESCBAIRRO: TStringField;
    sqlSelectEscolaESCCIDADE: TStringField;
    sqlSelectEscolaESCEST: TStringField;
    cdsEscolaESCCOD: TIntegerField;
    cdsEscolaESCNOM: TStringField;
    cdsEscolaESCDES: TStringField;
    cdsEscolaESCCEP: TStringField;
    cdsEscolaESCRUA: TStringField;
    cdsEscolaESCNUM: TStringField;
    cdsEscolaESCCOM: TStringField;
    cdsEscolaESCBAIRRO: TStringField;
    cdsEscolaESCCIDADE: TStringField;
    cdsEscolaESCEST: TStringField;
    dsEscola: TDataSource;
    sqlInserirEscola: TSQLDataSet;
    sqlExcluirEscola: TSQLDataSet;
    sqlAlterarEscola: TSQLDataSet;
    //procedure cdsEscolaNewRecord(DataSet: TDataSet);
    procedure CarregarEscola(oEscola : TEscola; iCodigo: Integer);
    //function GerarCOD: Integer;
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;
    //function PesquisarPorCodigo(ACodigo: Integer): TDataSet;
    function Inserir(oEscola : TEscola; out sErro: string): Boolean;



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{$R *.dfm}
procedure TdmConexao.CarregarEscola(oEscola: TEscola; iCodigo: Integer);
var
  sqlCliente : TSQLDataSet;
begin
  sqlCliente := TSQLDataSet.Create(nil);
  try
    sqlCliente.SQLConnection := sqlConexao;
    sqlCliente.CommandText := 'select * from usuarios where (ESCCOD ='+ IntToStr(iCodigo)+ ')';
    sqlCliente.Open;
    //oEscola.ESCCOD := sqlCliente.FieldByName('ESCCOD').AsInteger;
    oEscola.ESCNOM := sqlCliente.FieldByName('ESCNOM').AsString;
    oEscola.ESCDES := sqlCliente.FieldByName('ESCDES').AsString;
    //oEscola.ESCDATCAD := sqlCliente.FieldByName('ESCDATCAD').AsDateTime;
    oEscola.ESCCEP := sqlCliente.FieldByName('ESCCEP').AsString;
    oEscola.ESCRUA := sqlCliente.FieldByName('ESCRUA').AsString;
    oEscola.ESCNUM := sqlCliente.FieldByName('ESCNUM').AsString;
    oEscola.ESCCOM := sqlCliente.FieldByName('ESCCOM').AsString;
    oEscola.ESCBAIRRO := sqlCliente.FieldByName('ESCBAIRRO').AsString;
    oEscola.ESCCIDADE := sqlCliente.FieldByName('ESCCIDADE').AsString;
    oEscola.ESCEST := sqlCliente.FieldByName('ESCEST').AsString;

  finally

  end;
end;

//function TdmConexao.GerarCOD: Integer;
//var
//  sqlSequencia : TSQLDataSet;
//begin
//  sqlSequencia := TSQLDataSet.Create(nil);
//  try
//    sqlSequencia.SQLConnection := DmConexao.sqlConexao;
//    sqlSequencia.CommandText := 'select coalesce(max(ESCCOD), 0) + 1 as seq from Escola';
//    sqlSequencia.Open;
//    Result := sqlSequencia.FieldByName('seq').AsInteger;
//  finally
//    FreeAndNil(sqlSequencia);
//
//  end;
//end;


//procedure TdmConexao.cdsEscolaNewRecord(DataSet: TDataSet);
//begin
//  cdsEscolaESCCOD.Value := cdsEscola.RecordCount+1;
//end;

function TdmConexao.Excluir(iCodigo: Integer; out sErro: string): Boolean;
begin
  sqlExcluirEscola.Params[0].AsInteger := iCodigo;
  try
    sqlExcluirEscola.ExecSQL();
    Result := True;
    except on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao excluir a escola: ' + sLineBreak + E.Message;
        Result := False;
      end;
  end;
end;


function TdmConexao.Inserir(oEscola: TEscola; out sErro: string): Boolean;
begin
  //sqlInserirEscola.Params[0].AsInteger := GerarCod;
  sqlInserirEscola.Params[1].AsString := oEscola.ESCNOM;
  sqlInserirEscola.Params[2].AsString := oEscola.ESCDES;
  sqlInserirEscola.Params[3].AsString := oEscola.ESCCEP;
  sqlInserirEscola.Params[4].AsString := oEscola.ESCRUA;
  sqlInserirEscola.Params[5].AsString := oEscola.ESCNUM;
  sqlInserirEscola.Params[6].AsString := oEscola.ESCCOM;
  sqlInserirEscola.Params[7].AsString := oEscola.ESCBAIRRO;
  sqlInserirEscola.Params[8].AsString := oEscola.ESCCIDADE;
  sqlInserirEscola.Params[9].AsString := oEscola.ESCEST;
  //sqlInserirEscola.Params[10].AsDate := oEscola.ESCDATCAD;
  try
    sqlInserirEscola.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao inserir cliente: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;

//function TdmConexao.PesquisarPorCodigo(ACodigo: integer): TDataSet;
//begin
//  if cdsEscola.Active then
//    cdsEscola.Close;
//  cdsEscola.CommandText := 'select * from Escola';
//  cdsEscola.Open;
//  cdsEscola.First;
//
//end;

end.
