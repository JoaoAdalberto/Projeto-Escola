unit uSerieController;

interface

uses
  uSerieModel, uDmSerie, sysUtils, DB, DBClient;
type
  TSerieController = class
  public
    constructor Create;
    destructor Destroy; override;
    procedure Pesquisar(sNome: String);
    function Alterar(oSerie: TSerie; var sError: String) : Boolean;
    procedure Carregar(oSerie: TSerie; iCodigo: Integer);
    function Inserir(oSerie: TSerie; var sError: String) : Boolean;
    function Excluir(iCodigo: Integer; var sError: string) : Boolean;
  end;

implementation

{ TSerieController }

function TSerieController.Alterar(oSerie: TSerie; var sError: String): Boolean;
begin
  Result := dmSerie.Alterar(oSerie, sError);
end;

procedure TSerieController.Carregar(oSerie: TSerie; iCodigo: Integer);
begin
  dmSerie.CarregarSerie(oSerie, iCodigo);
end;

constructor TSerieController.Create;
begin
  dmSerie := TdmSerie.Create(nil);
end;

destructor TSerieController.Destroy;
begin
   FreeAndNil := dmSerie;
  inherited;
end;

function TSerieController.Excluir(iCodigo: Integer;
  var sError: string): Boolean;
begin
  Result := dmSerie.Excluir(iCodigo, sError);
end;

function TSerieController.Inserir(oSerie: TSerie; var sError: String): Boolean;
begin
  Result := dmSerie.Inserir(oSerie, sError);
end;

procedure TSerieController.Pesquisar(sNome: String);
begin
  dmSerie.Pesquisar(sNome);
end;

end.
