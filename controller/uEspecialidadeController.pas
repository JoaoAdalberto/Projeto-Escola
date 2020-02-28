unit uEspecialidadeController;

interface

uses
  uEspecialidadeModel, uDmConexao, sysUtils, DB, DBClient;

type
  TEspecialidadeController = class
  public
    constructor Create;
    destructor Destroy; override;
    procedure CarregarCargo(oEspecialidade: TEspecialidade; iCodigo: Integer);
    function InserirEspecialidade(oEspecialidade: TEspecialidade; var sError: String) : Boolean;
    //function Alterar(oEscola: TEscola; var sError: String) : Boolean;
    function Excluir(iCodigo: Integer; var sError: string) : Boolean;


  end;

implementation

procedure TEspecialidadeController.CarregarCargo(oEspecialidade: TEspecialidade;
  iCodigo: Integer);
begin
  DmConexao.CarregarCargo(oEspecialidade, iCodigo);
end;

constructor TEspecialidadeController.Create;
begin
  DmConexao := TDmConexao.Create(nil);
end;

destructor TEspecialidadeController.Destroy;
begin
  FreeAndNil(DmConexao);
  inherited;
end;

function TEspecialidadeController.Excluir(iCodigo: Integer;
  var sError: string): Boolean;
begin
  Result := DmConexao.Excluir(iCodigo, sError);
end;

function TEspecialidadeController.InserirEspecialidade(oEspecialidade: TEspecialidade;
  var sError: String): Boolean;
begin
  Result := DmConexao.InserirEspecialidade(oEspecialidade, sError);
end;


end.
