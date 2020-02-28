unit uEspecialidadeModel;

interface

uses
  SysUtils;

type
  TEspecialidade = class

  private
    FESPCOD: Integer;
    FESPDES: String;
    procedure SetDes(const Value: String);
  public
    property ESPCOD: Integer read FESPCOD write FESPCOD;
    property ESPDES: String  read FESPDES write SetDes;
  end;


implementation

procedure TEspecialidade.SetDes(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Descricao do cargo não pode ser em branco!!');
  FESPDES := Value;
end;




end.
