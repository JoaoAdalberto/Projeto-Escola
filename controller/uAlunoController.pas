unit uAlunoController;

interface
uses
  uAlunoModel, uDmAluno, sysUtils, DB, DBClient;


type
  TAlunoController = class
  public
    constructor Create;
    destructor Destroy; override;
    procedure Pesquisar(sNome: String);
    function Inserir(oAluno: TAluno; var sError: String) : Boolean;
    function Alterar(oAluno: TAluno; var sError: String) : Boolean;
    function Excluir(iCodigo: Integer; var sError: string) : Boolean;
    function InserirSerie(ASerie: Integer; ANome: string; var sError:string) : Boolean;
  end;

implementation

{ TAlunoController }

function TAlunoController.Alterar(oAluno: TAluno; var sError: String): Boolean;
begin
  Result := dmAluno.Alterar(oAluno, sError);
end;





constructor TAlunoController.Create;
begin
  dmAluno := TdmAluno.Create(nil);
end;

destructor TAlunoController.Destroy;
begin
  FreeAndNil(dmAluno);
  inherited;
end;

function TAlunoController.Excluir(iCodigo: Integer;
  var sError: string): Boolean;
begin
  Result := dmAluno.Excluir(iCodigo, sError);
end;

function TAlunoController.Inserir(oAluno: TAluno; var sError: String): Boolean;
begin
  Result := dmAluno.Inserir(oAluno, sError);
end;

function TAlunoController.InserirSerie(ASerie: Integer; ANome: string;
  var sError: string): Boolean;
begin
  //Result := DmAluno.InserirSerie(ASerie, ANome, sError);
end;

procedure TAlunoController.Pesquisar(sNome: String);
begin
  dmAluno.Pesquisar(sNome);
end;

end.
