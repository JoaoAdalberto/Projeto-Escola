unit uSerieModel;

interface

uses
  SysUtils;

type
  TSerie = class

  private
    FSERCOD: Integer;
    FSERNOM: String;
    FSERESC: Integer;
    procedure SetNome(const Value: String);

  public
    property SERCOD: Integer read FSERCOD write FSERCOD;
    property SERNOM: String read FSERNOM write SetNome;
    property SERESC: Integer read FSERESC write FSERESC;

  end;
implementation

{ TSerie }

procedure TSerie.SetNome(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Nome precisa ser digitado!!');
  FSERNOM := Value;
end;

end.
