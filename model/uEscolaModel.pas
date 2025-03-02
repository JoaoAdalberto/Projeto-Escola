unit uEscolaModel;

interface

uses
  SysUtils;

type
  TEscola = class

  private
    FESCCOD: Integer;
    FESCNOM: String;
    FESCDES: String;
    FESCDATCAD: TDateTime;
    FESCCEP: String;
    FESCRUA: String;
    FESCNUM: String;
    FESCCOM: String;
    FESCBAIRRO: String;
    FESCCIDADE: String;
    FESCEST: String;
    procedure SetNome(const Value: String);
    procedure SetCidade(const Value: String);
    procedure SetEstado(const Value: String);
  published
  //F is for field
  public
    property ESCCOD: Integer read FESCCOD write FESCCOD;
    property ESCNOM: String  read FESCNOM write SetNome;
    property ESCDES: String read FESCDES write FESCDES;
    property ESCDATCAD: TDateTime read FESCDATCAD write FESCDATCAD;
    property ESCCEP: String read FESCCEP write FESCCEP;
    property ESCRUA: String read FESCRUA write FESCRUA;
    property ESCNUM: String  read FESCNUM write FESCNUM;
    property ESCCOM: String read FESCCOM write FESCCOM;
    property ESCBAIRRO: String read FESCBAIRRO write FESCBAIRRO;
    property ESCCIDADE: String read FESCCIDADE write SetCidade;
    property ESCEST: String read FESCEST write SetEstado;
  end;

implementation

{ TEscola }

procedure TEscola.SetEstado(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Estado precisa ser identificado ! !');
  FESCEST := Value;
end;

procedure TEscola.SetCidade(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Cidade precisa ser declarada!!');
  FESCCIDADE := Value;
end;

procedure TEscola.SetNome(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Nome precisa ser digitado!!');
  FESCNOM := Value;
end;


end.
