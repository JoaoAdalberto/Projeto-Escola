unit uFuncionarioController;

interface

uses
  uFuncionarioModel, uDmFuncionario, sysUtils, DB, DBClient;

type
  TFuncionarioController = class
    public
    constructor Create;
    destructor Destroy; override;
    procedure CarregarFuncionario(oFuncionario: TFuncionario; iCodigo: Integer);
    procedure Pesquisar(sNome: String);
    function Inserir(oFuncionario: TFuncionario; var sError: string) : Boolean;
    function Alterar(oFuncionario: TFuncionario; var sError: String) : Boolean;
    function Excluir(iCodigo: Integer; var sError: string) : Boolean;

  end;
implementation


constructor TFuncionarioController.Create;
begin
  DmFuncionario := TDmFuncionario.Create(nil);
end;

destructor TFuncionarioController.Destroy;
begin
  FreeAndNil(DmFuncionario);
  inherited;
end;

function TFuncionarioController.Inserir(oFuncionario: TFuncionario;
  var sError: String): Boolean;
begin
  Result := DmFuncionario.InserirFuncionario(oFuncionario, sError);
end;

function TFuncionarioController.Alterar(oFuncionario: TFuncionario;
  var sError: String): Boolean;
begin
  Result := DmFuncionario.Alterar(oFuncionario, sError);
end;

procedure TFuncionarioController.CarregarFuncionario(oFuncionario: TFuncionario;
  iCodigo: Integer);
begin
  DmFuncionario.CarregarFuncionario(oFuncionario, iCodigo);
end;

function TFuncionarioController.Excluir(iCodigo: Integer;
  var sError: string): Boolean;
begin
  Result := DmFuncionario.Excluir(iCodigo, sError);
end;

procedure TFuncionarioController.Pesquisar(sNome: string);
begin
  DmFuncionario.Pesquisar(sNome);
end;



end.
