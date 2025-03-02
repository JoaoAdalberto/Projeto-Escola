unit uFuncionarioModel;

interface

type
  TFuncionario = class
    private
    FFUNCID: String;
    FFUNSEX: String;
    FFUNCOD: Integer;
    FFUNRUA: String;
    FFUNEST: String;
    FFUNNUM: String;
    FFUNESP: Integer;
    FFUNCPF: String;
    FFUNNOM: String;
    FFUNESC: Integer;
    FFUNCEP: String;
    FFUNCOM: String;
    FFUNBAI: String;
    FFUNDATNAS: TDateTime;
    FFUNDATEMP: TDateTime;
    procedure SetNome(const Value: String);

    public
    property FUNCOD: Integer read FFUNCOD write FFUNCOD;
    property FUNNOM: String  read FFUNNOM write SetNome;
    property FUNDATNAS: TDateTime read FFUNDATNAS write FFUNDATNAS;
    property FUNDATEMP: TDateTime read FFUNDATEMP write FFUNDATEMP;
    property FUNSEX: String read FFUNSEX write FFUNSEX;
    property FUNCPF: String  read FFUNCPF write FFUNCPF;
    property FUNESC: Integer read FFUNESC write FFUNESC;
    property FUNESP: Integer read FFUNESP write FFUNESP;
    property FUNCEP: String read FFUNCEP write FFUNCEP;
    property FUNRUA: String read FFUNRUA write FFUNRUA;
    property FUNNUM: String read FFUNNUM write FFUNNUM;
    property FUNCOM: String read FFUNCOM write FFUNCOM;
    property FUNBAI: String read FFUNBAI write FFUNBAI;
    property FUNCID: String read FFUNCID write FFUNCID;
    property FUNEST: String read FFUNEST write FFUNEST;
  end;

implementation

{ TFuncionario }

procedure TFuncionario.SetNome(const Value: String);
begin
  FFUNNOM := Value;
end;

end.
