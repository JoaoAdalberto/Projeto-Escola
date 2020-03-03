unit uDmSerie;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DBClient, DB, SqlExpr, uDmConexao, uSerieModel, Messages, Dialogs;

type
  TdmSerie = class(TDataModule)
    sqlInserirSerie: TSQLDataSet;
    sqlExcluirSerie: TSQLDataSet;
    sqlAlterarSerie: TSQLDataSet;
    sqlSelectSerie: TSQLDataSet;
    cdsSerie: TClientDataSet;
    dspSerie: TDataSetProvider;
    cdsSerieSERCOD: TIntegerField;
    cdsSerieSERNOM: TStringField;
    cdsSerieSERESC: TIntegerField;
    sqlSelectSerieSERCOD: TIntegerField;
    sqlSelectSerieSERNOM: TStringField;
    sqlSelectSerieSERESC: TIntegerField;
    function GerarCOD: Integer;
    procedure CarregarSerie(oSerie : TSerie; iCodigo: Integer);
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;
    function Pesquisar(ANome: string): TDataSet;
    function Inserir(oSerie : TSerie; out sErro: string): Boolean;
    function Alterar(oSerie :TSerie; out sErro: string) : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSerie: TdmSerie;

implementation


{$R *.dfm}

{ TdmSerie }

function TdmSerie.Alterar(oSerie: TSerie; out sErro: string): Boolean;
begin
  sqlAlterarSerie.Params[0].AsString := oSerie.SERNOM;
  sqlAlterarSerie.Params[1].AsInteger  := oSerie.SERESC;
  try
    sqlAlterarSerie.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao alterar Escola: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;

procedure TdmSerie.CarregarSerie(oSerie: TSerie; iCodigo: Integer);
var
  sqlSerie :TSQLDataSet;
begin
  sqlSerie := TSQLDataSet.Create(nil);
  try
    sqlSerie.SQLConnection := DmConexao.sqlConexao;
    sqlSerie.CommandText := 'select * from Serie where (SERCOD ='+ IntToStr(iCodigo)+ ')';
    sqlSerie.Open;
    oSerie.SERCOD := sqlSerie.FieldByName('SERCOD').AsInteger;
    oSerie.SERNOM := sqlSerie.FieldByName('SERNOM').AsString;
    oSerie.SERESC := sqlSerie.FieldByName('SERESC').AsInteger;
  finally

  end;
end;

function TdmSerie.Excluir(iCodigo: Integer; out sErro: string): Boolean;
begin
sqlExcluirSerie.Params[0].AsInteger := iCodigo;
  try
    sqlExcluirSerie.ExecSQL();
    Result := True;
    except on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao excluir a Serie: ' + sLineBreak + E.Message;
        Result := False;
      end;
  end;

end;

function TdmSerie.GerarCOD: Integer;
var
  sqlSequencia : TSQLDataSet;
begin
  sqlSequencia := TSQLDataSet.Create(nil);
  try
    sqlSequencia.SQLConnection := DmConexao.sqlConexao;
    sqlSequencia.CommandText := 'select coalesce(max(ESCCOD), 0) + 1 as seq from Serie';
    sqlSequencia.Open;
    Result := sqlSequencia.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSequencia);

  end;

end;

function TdmSerie.Inserir(oSerie: TSerie; out sErro: string): Boolean;
begin
  sqlInserirSerie.Params.FindParam('SERCOD').AsInteger := GerarCOD;
  sqlInserirSerie.Params.FindParam('SERNOM').AsString := oSerie.SERNOM;
  sqlInserirSerie.Params.FindParam('SERESC').AsInteger := oSerie.SERESC;
  try
    sqlInserirSerie.ExecSQL;
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao inserir serie: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;

function TdmSerie.Pesquisar(ANome: string): TDataSet;
begin
ShowMessage(ANome);
  if cdsSerie.Active then
    cdsSerie.Close;
  cdsSerie.CommandText := Format('select * from Serie where SERCNOM like %s',[ QuotedStr('%' + ANome + '%') ]);
//  cdsEscola.Filtered := False;
//  cdsEscola.Filter := 'ESCNOM = ' +QuotedStr('%' + ANome + '%');
//  cdsEscola.Filtered := True;
  cdsSerie.Open;
  cdsSerie.First;
end;

end.
