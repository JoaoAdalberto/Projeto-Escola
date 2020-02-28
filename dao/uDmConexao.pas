unit uDmConexao;

interface

uses
  SysUtils, Classes, WideStrings, DB, SqlExpr, DBClient, Provider, FMTBcd, uEscolaModel, uEspecialidadeModel,
  DateUtils, StrUtils, Variants, Messages, Dialogs;

type
  TdmConexao = class(TDataModule)
    sqlConexao: TSQLConnection;
    dspEscola: TDataSetProvider;
    cdsEscola: TClientDataSet;
    sqlSelectEscola: TSQLDataSet;
    sqlSelectEscolaESCCOD: TIntegerField;
    sqlSelectEscolaESCNOM: TStringField;
    sqlSelectEscolaESCDES: TStringField;
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
    dspEspecialidade: TDataSetProvider;
    cdsEspecialidade: TClientDataSet;
    sqlInserirEspecialidade: TSQLDataSet;
    sqlInserirEspecialidadeESCCOD: TIntegerField;
    sqlInserirEspecialidadeESCNOM: TStringField;
    sqlInserirEspecialidadeESCDES: TStringField;
    sqlInserirEspecialidadeESCCEP: TStringField;
    sqlInserirEspecialidadeESCRUA: TStringField;
    sqlInserirEspecialidadeESCNUM: TStringField;
    sqlInserirEspecialidadeESCCOM: TStringField;
    sqlInserirEspecialidadeESCBAIRRO: TStringField;
    sqlInserirEspecialidadeESCCIDADE: TStringField;
    sqlInserirEspecialidadeESCEST: TStringField;
    dsEspecialidade: TDataSource;
    //procedure cdsEscolaNewRecord(DataSet: TDataSet);
    procedure CarregarEscola(oEscola : TEscola; iCodigo: Integer);
    procedure CarregarCargo(oEspecialidade : TEspecialidade; iCodigo: Integer);
    function GerarCOD: Integer;
    function GerarCodCargo: Integer;
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;
    function Pesquisar(ANome: string): TDataSet;
    function Inserir(oEscola : TEscola; out sErro: string): Boolean;
    function InserirCargo(oEspecialidade : TEspecialidade; out sErro: string) :Boolean;
    function Alterar(oEscola :TEscola; out sErro: string) : Boolean;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

uses uFrmCadastrarEscola;

{$R *.dfm}
function TdmConexao.Alterar(oEscola: TEscola; out sErro: string): Boolean;
begin
  sqlAlterarEscola.Params[0].AsString := oEscola.ESCNOM;
  sqlAlterarEscola.Params[1].AsString  := oEscola.ESCDES;
  sqlAlterarEscola.Params[2].AsString  := oEscola.ESCCEP;
  sqlAlterarEscola.Params[3].AsString  := oEscola.ESCRUA;
  sqlAlterarEscola.Params[4].AsString  := oEscola.ESCNUM;
  sqlAlterarEscola.Params[5].AsString  := oEscola.ESCCOM;
  sqlAlterarEscola.Params[6].AsString  := oEscola.ESCBAIRRO;
  sqlAlterarEscola.Params[7].AsString  := oEscola.ESCCIDADE;
  sqlAlterarEscola.Params[8].AsString  := oEscola.ESCEST;
  sqlAlterarEscola.Params[9].AsInteger  := oEscola.ESCCOD;
  try
    sqlAlterarEscola.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao alterar Escola: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;

procedure TdmConexao.CarregarCargo(oEspecialidade: TEspecialidade; iCodigo: Integer);
var
  sqlCargo :TSQLDataSet;
begin
  sqlCargo := TSQLDataSet.Create(nil);
  try
    sqlCargo.SQLConnection := sqlConexao;
    sqlCargo.CommandText := 'select * from usuarios where (ESCCOD ='+ IntToStr(iCodigo)+ ')';
    sqlCargo.Open;
    oEspecialidade.ESPCOD := sqlCargo.FieldByName('ESPCOD').AsInteger;
    oEspecialidade.ESPDES := sqlCargo.FieldByName('ESPDES').AsString;
  finally

  end;
end;

procedure TdmConexao.CarregarEscola(oEscola: TEscola; iCodigo: Integer);
var
  sqlEscola : TSQLDataSet;
begin
  sqlEscola := TSQLDataSet.Create(nil);
  try
    sqlEscola.SQLConnection := sqlConexao;
    sqlEscola.CommandText := 'select * from escola where (ESCCOD ='+ IntToStr(iCodigo)+ ')';
    sqlEscola.Open;
    oEscola.ESCCOD := sqlEscola.FieldByName('ESCCOD').AsInteger;
    oEscola.ESCNOM := sqlEscola.FieldByName('ESCNOM').AsString;
    oEscola.ESCDES := sqlEscola.FieldByName('ESCDES').AsString;
    //oEscola.ESCDATCAD := sqlCliente.FieldByName('ESCDATCAD').AsDateTime;
    oEscola.ESCCEP := sqlEscola.FieldByName('ESCCEP').AsString;
    oEscola.ESCRUA := sqlEscola.FieldByName('ESCRUA').AsString;
    oEscola.ESCNUM := sqlEscola.FieldByName('ESCNUM').AsString;
    oEscola.ESCCOM := sqlEscola.FieldByName('ESCCOM').AsString;
    oEscola.ESCBAIRRO := sqlEscola.FieldByName('ESCBAIRRO').AsString;
    oEscola.ESCCIDADE := sqlEscola.FieldByName('ESCCIDADE').AsString;
    oEscola.ESCEST := sqlEscola.FieldByName('ESCEST').AsString;
  finally
  end;
end;

function TdmConexao.GerarCOD: Integer;
var
  sqlSequencia : TSQLDataSet;
begin
  sqlSequencia := TSQLDataSet.Create(nil);
  try
    sqlSequencia.SQLConnection := DmConexao.sqlConexao;
    sqlSequencia.CommandText := 'select coalesce(max(ESCCOD), 0) + 1 as seq from Escola';
    sqlSequencia.Open;
    Result := sqlSequencia.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSequencia);

  end;
end;


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
  sqlInserirEscola.Params.FindParam('ESCCOD').AsInteger := GerarCod;
  sqlInserirEscola.Params.FindParam('ESCNOM').AsString := oEscola.ESCNOM;
  sqlInserirEscola.Params.FindParam('ESCDES').AsString := oEscola.ESCDES;
  sqlInserirEscola.Params.FindParam('ESCCEP').AsString := oEscola.ESCCEP;
  sqlInserirEscola.Params.FindParam('ESCRUA').AsString := oEscola.ESCRUA;
  sqlInserirEscola.Params.FindParam('ESCNUM').AsString := oEscola.ESCNUM;
  sqlInserirEscola.Params.FindParam('ESCCOM').AsString := oEscola.ESCCOM;
  sqlInserirEscola.Params.FindParam('ESCBAIRRO').AsString := oEscola.ESCBAIRRO;
  sqlInserirEscola.Params.FindParam('ESCCIDADE').AsString := oEscola.ESCCIDADE;
  sqlInserirEscola.Params.FindParam('ESCEST').AsString := oEscola.ESCEST;
//  sqlInserirEscola.Params.FindParam('ESCDATCAD').AsString := FormatDateTime('YYYY/MM/DD HH:MM:SS', Now);

  try
    sqlInserirEscola.ExecSQL;
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao inserir cliente: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;


function TdmConexao.GerarCODCargo: Integer;
var
  sqlSequencia : TSQLDataSet;
begin
  sqlSequencia := TSQLDataSet.Create(nil);
  try
    sqlSequencia.SQLConnection := DmConexao.sqlConexao;
    sqlSequencia.CommandText := 'select coalesce(max(CARCOD), 0) + 1 as seq from Cargo';
    sqlSequencia.Open;
    Result := sqlSequencia.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSequencia);

  end;
end;

function TdmConexao.InserirCargo(oEspecialidade : TEspecialidade; out sErro: string):Boolean;
begin
  sqlInserirEspecialidade.Params.FindParam('ESPCOD').AsInteger := GerarCODCargo;
  sqlInserirEspecialidade.Params.FindParam('ESPDES').AsString := oEspecialidade.ESPDES;
  try
    sqlInserirEspecialidade.ExecSQL;
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao inserir cargo: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;




function TdmConexao.Pesquisar(ANome: string): TDataSet;
begin
  ShowMessage(ANome);
  if cdsEscola.Active then
    cdsEscola.Close;
  cdsEscola.CommandText := Format('select * from Escola where ESCNOM like %s',[ QuotedStr('%' + ANome + '%') ]);
//  cdsEscola.Filtered := False;
//  cdsEscola.Filter := 'ESCNOM = ' +QuotedStr('%' + ANome + '%');
//  cdsEscola.Filtered := True;
  cdsEscola.Open;
  cdsEscola.First;

end;

end.
