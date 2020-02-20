unit uEscolaController;

interface

uses
  uEscolaModel, uDMConexao, sysUtils, DB, DBClient;

type
  TEscolaController = class
  public
    constructor Create;
    destructor Destroy; override;
    procedure CarregarEscola(oEscola: TEscola; iCodigo: Integer);
    //procedure PesquisarPorCodigo(sCodigo: Integer; AFonteDeDados: TDataSource);
    function Inserir(oEscola: TEscola; var sError: String) : Boolean;
    //function Alterar(oEscola: TEscola; var sError: String) : Boolean;
    function Excluir(iCodigo: Integer; var sError: string) : Boolean;


  end;

implementation

{ TClienteController }

{ TClienteController }

//function TClienteController.Alterar(oCliente: TEscola;
//  var sError: String): Boolean;
//begin
//  Result := dmConexao.Alterar(oCliente, sError);
//end;

procedure TEscolaController.CarregarEscola(oEscola: TEscola;
  iCodigo: Integer);
begin
  DmConexao.CarregarEscola(oEscola, iCodigo);
end;

constructor TEscolaController.Create;
begin
  DmConexao := TDmConexao.Create(nil);
end;

destructor TEscolaController.Destroy;
begin
  FreeAndNil(DmConexao);
  inherited;
end;

function TEscolaController.Excluir(iCodigo: Integer;
  var sError: string): Boolean;
begin
  Result := DmConexao.Excluir(iCodigo, sError);
end;

function TEscolaController.Inserir(oEscola: TEscola;
  var sError: String): Boolean;
begin
  Result := DmConexao.Inserir(oEscola, sError);
end;


//procedure TEscolaController.PesquisarPorCodigo(sCodigo: integer; AFonteDeDados: TDataSource);
//begin
//  AFonteDeDados.DataSet := DmConexao.PesquisarPorCodigo(sCodigo);
//end;

end.
