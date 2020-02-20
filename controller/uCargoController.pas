unit uCargoController;

interface

uses
  uCargoModel, uDmConexao, sysUtils, DB, DBClient;

type
  TCargoController = class
  public
    constructor Create;
    destructor Destroy; override;
    procedure CarregarCargo(oCargo: TCargo; iCodigo: Integer);
    function InserirCargo(oCargo: TCargo; var sError: String) : Boolean;
    //function Alterar(oEscola: TEscola; var sError: String) : Boolean;
    function Excluir(iCodigo: Integer; var sError: string) : Boolean;


  end;

implementation

procedure TCargoController.CarregarCargo(oCargo: TCargo;
  iCodigo: Integer);
begin
  DmConexao.CarregarCargo(oCargo, iCodigo);
end;

constructor TCargoController.Create;
begin
  DmConexao := TDmConexao.Create(nil);
end;

destructor TCargoController.Destroy;
begin
  FreeAndNil(DmConexao);
  inherited;
end;

function TCargoController.Excluir(iCodigo: Integer;
  var sError: string): Boolean;
begin
  Result := DmConexao.Excluir(iCodigo, sError);
end;

function TCargoController.InserirCargo(oCargo: TCargo;
  var sError: String): Boolean;
begin
  Result := DmConexao.InserirCargo(oCargo, sError);
end;


end.
