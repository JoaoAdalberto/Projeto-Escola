unit uCargoModel;

interface

uses
  SysUtils;

type
  TCargo = class

  private
    FCARCOD: Integer;
    FCARDES: String;
    procedure SetDes(const Value: String);
  public
    property CARCOD: Integer read FCARCOD write FCARCOD;
    property CARDES: String  read FCARDES write SetDes;
  end;


implementation

procedure TCargo.SetDes(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Descricao do cargo não pode ser em branco!!');
  FCARDES := Value;
end;




end.
