unit uDmAluno;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, uDmConexao, uAlunoModel, Messages, Dialogs;

type
  TdmAluno = class(TDataModule)
    cdsAluno: TClientDataSet;
    dspAluno: TDataSetProvider;
    sqlInserirAluno: TSQLDataSet;
    sqlExcluirAluno: TSQLDataSet;
    cdsAlunoALUCOD: TIntegerField;
    cdsAlunoALUESC: TIntegerField;
    cdsAlunoALUNOM: TStringField;
    cdsAlunoALUSEX: TStringField;
    cdsAlunoALUDATNAS: TWideStringField;
    cdsAlunoALUDATMAT: TWideStringField;
    cdsAlunoALUCPF: TStringField;
    cdsAlunoALUCEP: TStringField;
    cdsAlunoALURUA: TStringField;
    cdsAlunoALUNUM: TStringField;
    cdsAlunoALUCOM: TStringField;
    cdsAlunoALUBAI: TStringField;
    cdsAlunoALUCID: TStringField;
    cdsAlunoALUEST: TStringField;
    cdsAlunoALURES: TStringField;
    cdsAlunoSERCOD: TIntegerField;
    sqlAlterarAluno: TSQLDataSet;
    sqlSelectAluno: TSQLDataSet;
    sqlSelectAlunoALUCOD: TIntegerField;
    sqlSelectAlunoALUESC: TIntegerField;
    sqlSelectAlunoALUNOM: TStringField;
    sqlSelectAlunoALUSEX: TStringField;
    sqlSelectAlunoALUDATNAS: TWideStringField;
    sqlSelectAlunoALUDATMAT: TWideStringField;
    sqlSelectAlunoALUCPF: TStringField;
    sqlSelectAlunoALUCEP: TStringField;
    sqlSelectAlunoALURUA: TStringField;
    sqlSelectAlunoALUNUM: TStringField;
    sqlSelectAlunoALUCOM: TStringField;
    sqlSelectAlunoALUBAI: TStringField;
    sqlSelectAlunoALUCID: TStringField;
    sqlSelectAlunoALUEST: TStringField;
    sqlSelectAlunoSERCOD: TIntegerField;
    sqlSelectAlunoALURES: TStringField;
    function GerarCOD: Integer;
    procedure CarregarAluno(oAluno : TAluno; iCodigo: Integer);
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;
    function Pesquisar(ANome: string): TDataSet;
    function Inserir(oAluno : TAluno; out sErro: string): Boolean;
    function Alterar(oAluno :TAluno; out sErro: string) : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAluno: TdmAluno;

implementation



{$R *.dfm}

{ TdmAluno }

function TdmAluno.Alterar(oAluno: TAluno; out sErro: string): Boolean;
begin
  sqlAlterarAluno.Params[0].AsString := oAluno.ALUNOM;
  sqlAlterarAluno.Params[1].AsString  := oAluno.ALUSEX;
  sqlAlterarAluno.Params[2].AsString  := FormatDateTime('DD/MM/YYYY', oAluno.ALUDATNAS);
  sqlAlterarAluno.Params[3].AsString  := oAluno.ALUCPF;
  sqlAlterarAluno.Params[4].AsString  := oAluno.ALUCEP;
  sqlAlterarAluno.Params[5].AsString  := oAluno.ALURUA;
  sqlAlterarAluno.Params[6].AsString  := oAluno.ALUNUM;
  sqlAlterarAluno.Params[7].AsString  := oAluno.ALUCOM;
  sqlAlterarAluno.Params[8].AsString  := oAluno.ALUBAI;
  sqlAlterarAluno.Params[9].AsString  := oAluno.ALUCID;
  sqlAlterarAluno.Params[10].AsString  := oAluno.ALUEST;
  sqlAlterarAluno.Params[11].AsInteger  := oAluno.SERCOD;
  sqlAlterarAluno.Params[12].AsString  := oAluno.ALURES;
  sqlAlterarAluno.Params[13].AsInteger  := oAluno.ALUCOD;
  try
    sqlAlterarAluno.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao alterar Escola: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;

procedure TdmAluno.CarregarAluno(oAluno: TAluno; iCodigo: Integer);
var
  sqlAluno :TSQLDataSet;
begin
  sqlAluno := TSQLDataSet.Create(nil);
  try
    sqlAluno.SQLConnection := DmConexao.sqlConexao;
    sqlAluno.CommandText := 'select * from Aluno where (ALUCOD ='+ IntToStr(iCodigo)+ ')';
    sqlAluno.Open;
    oAluno.ALUCOD := sqlAluno.FieldByName('ALUCOD').AsInteger;
    oAluno.ALUNOM := sqlAluno.FieldByName('ALUNOM').AsString;
    oAluno.ALUESC := sqlAluno.FieldByName('ALUESC').AsInteger;
    oAluno.ALUSEX := sqlAluno.FieldByName('ALUSEX').AsString;
    oAluno.ALUDATNAS := sqlAluno.FieldByName('ALUDATNAS').AsDateTime;
    oAluno.ALUDATMAT := sqlAluno.FieldByName('ALUDATMAT').AsDateTime;
    oAluno.ALUCPF := sqlAluno.FieldByName('ALUCPF').AsString;
    oAluno.ALUCEP := sqlAluno.FieldByName('ALUCEP').AsString;
    oAluno.ALURUA := sqlAluno.FieldByName('ALURUA').AsString;
    oAluno.ALUNUM := sqlAluno.FieldByName('ALUNUM').AsString;
    oAluno.ALUCOM := sqlAluno.FieldByName('ALUCOM').AsString;
    oAluno.ALUBAI := sqlAluno.FieldByName('ALUBAI').AsString;
    oAluno.ALUCID := sqlAluno.FieldByName('ALUCID').AsString;
    oAluno.ALUEST := sqlAluno.FieldByName('ALUEST').AsString;
    oAluno.SERCOD := sqlAluno.FieldByName('SERCOD').AsInteger;
    oAluno.ALURES := sqlAluno.FieldByName('ALURES').AsString;
  finally

  end;
end;

function TdmAluno.Excluir(iCodigo: Integer; out sErro: string): Boolean;
begin
sqlExcluirAluno.Params[0].AsInteger := iCodigo;
  try
    sqlExcluirAluno.ExecSQL();
    Result := True;
    except on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao excluir Aluno: ' + sLineBreak + E.Message;
        Result := False;
      end;
  end;
end;

function TdmAluno.GerarCOD: Integer;
var
  sqlSequencia : TSQLDataSet;
begin
  sqlSequencia := TSQLDataSet.Create(nil);
  try
    sqlSequencia.SQLConnection := DmConexao.sqlConexao;
    sqlSequencia.CommandText := 'select coalesce(max(ALUCOD), 0) + 1 as seq from Aluno';
    sqlSequencia.Open;
    Result := sqlSequencia.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSequencia);

  end;

end;

function TdmAluno.Inserir(oAluno: TAluno; out sErro: string): Boolean;
begin
  sqlInserirAluno.Params.FindParam('ALUCOD').AsInteger := GerarCod;
  sqlInserirAluno.Params.FindParam('ALUESC').AsInteger := oAluno.ALUESC;
  sqlInserirAluno.Params.FindParam('ALUNOM').AsString := oAluno.ALUNOM;
  sqlInserirAluno.Params.FindParam('ALUSEX').AsString := oAluno.ALUSEX;
  sqlInserirAluno.Params.FindParam('ALUDATNAS').AsString := FormatDateTime('DD/MM/YYYY', oAluno.ALUDATNAS);;
  //sqlInserirAluno.Params.FindParam('ALUDATMAT').AsString := oAluno.ALUDATMAT;
  sqlInserirAluno.Params.FindParam('ALUCPF').AsString := oAluno.ALUCPF;
  sqlInserirAluno.Params.FindParam('ALUCEP').AsString := oAluno.ALUCEP;
  sqlInserirAluno.Params.FindParam('ALURUA').AsString := oAluno.ALURUA;
  sqlInserirAluno.Params.FindParam('ALUNUM').AsString := oAluno.ALUNUM;
  sqlInserirAluno.Params.FindParam('ALUCOM').AsString := oAluno.ALUCOM;
  sqlInserirAluno.Params.FindParam('ALUBAI').AsString := oAluno.ALUCPF;
  sqlInserirAluno.Params.FindParam('ALUCID').AsString := oAluno.ALUCEP;
  sqlInserirAluno.Params.FindParam('ALUEST').AsString := oAluno.ALUEST;
  //sqlInserirAluno.Params.FindParam('SERCOD').AsInteger := oAluno.SERCOD;
  sqlInserirAluno.Params.FindParam('ALURES').AsString := oAluno.ALURES;

//  sqlInserirEscola.Params.FindParam('ESCDATCAD').AsString := FormatDateTime('YYYY/MM/DD HH:MM:SS', Now);

  try
    sqlInserirAluno.ExecSQL;
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao inserir aluno: ' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;

function TdmAluno.Pesquisar(ANome: string): TDataSet;
begin
ShowMessage(ANome);
  if cdsAluno.Active then
    cdsAluno.Close;
  cdsAluno.CommandText := Format('select * from Aluno where ALUNOM like %s',[ QuotedStr('%' + ANome + '%') ]);
//  cdsEscola.Filtered := False;
//  cdsEscola.Filter := 'ESCNOM = ' +QuotedStr('%' + ANome + '%');
//  cdsEscola.Filtered := True;
  cdsAluno.Open;
  cdsAluno.First;
end;

end.
