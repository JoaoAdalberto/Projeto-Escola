unit uFuncionarioController;

interface

uses
  uFuncionarioModel, uDmConexao, sysUtils, DB, DBClient;

type
  TFuncionarioController = class
    public
    constructor Create;
    destructor Destroy; override;
    function Inserir(oFuncionario: TFuncionario; var sError: string) : Boolean;
  end;
implementation


constructor TFuncionarioController.Create;
begin
  DmConexao := TDmConexao.Create(nil);
end;

destructor TFuncionarioController.Destroy;
begin
  FreeAndNil(DmConexao);
  inherited;
end;

function TFuncionarioController.Inserir(oFuncionario: TFuncionario;
  var sError: String): Boolean;
begin
  Result := DmConexao.InserirFuncionario(oFuncionario, sError);
end;

end.
