unit uAlunoModel;

interface

uses
  SysUtils;

type
  TAluno = class

  private
    FALUBAI: String;
    FALUCID: String;
    FALUSEX: String;
    FALUDATNAS: TDateTime;
    FALUCOD: Integer;
    FALURES: String;
    FALUSER: String;
    FALURUA: String;
    FALUDATMAT: TDateTime;
    FALUEST: String;
    FALUNUM: String;
    FALUCPF: String;
    FALUNOM: String;
    FALUESC: Integer;
    FALUCEP: String;
    FALUCOM: String;
    procedure SetCidade(const Value: String);
    procedure SetEstado(const Value: String);
    procedure SetNome(const Value: String);

  public
    property ALUCOD: Integer read FALUCOD write FALUCOD;
    property ALUESC: Integer read FALUESC write FALUESC;
    property ALUNOM: String read FALUNOM write SetNome;
    property ALUSEX: String read FALUSEX write FALUSEX;
    property ALUDATNAS: TDateTime read FALUDATNAS write FALUDATNAS;
    property ALUDATMAT: TDateTime read FALUDATMAT write FALUDATMAT;
    property ALUCPF: String read FALUCPF write FALUCPF;
    property ALUCEP: String read FALUCEP write FALUCEP;
    property ALURUA: String read FALURUA write FALURUA;
    property ALUNUM: String read FALUNUM write FALUNUM;
    property ALUCOM: String read FALUCOM write FALUCOM;
    property ALUBAI: String read FALUBAI write FALUBAI;
    property ALUCID: String read FALUCID write SetCidade;
    property ALUEST: String read FALUEST write SetEstado;
    property ALUSER: String read FALUSER write FALUSER;
    property ALURES: String read FALURES write FALURES;
  end;

implementation

{ TAluno }

procedure TAluno.SetCidade(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Cidade precisa ser identificada ! !');
  FALUCID := Value;
end;

procedure TAluno.SetEstado(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Estado precisa ser identificado ! !');
  FALUEST := Value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Nome precisa ser identificado ! !');
  FALUNOM := Value;
end;

end.
