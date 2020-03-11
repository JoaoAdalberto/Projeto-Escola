unit uFuncoesAuxiliares;

interface
uses
  Windows, SysUtils, Classes, Forms;

function SoAceitaLetra(Key: Char; Texto: String):Char;
function SoAceitaNumeros(Key: Char; Texto: string; EhDecimal: Boolean = False): Char;

implementation

function SoAceitaLetra(Key: Char; Texto: String):Char;
begin
  if not (Key in['A'..'Z', #8]) and not (Key in['a'..'z', #8]) then
    Key := #0;
  Result := Key;
end;

function  SoAceitaNumeros(Key: Char; Texto: string; EhDecimal: Boolean = False): Char;
begin
  if  not EhDecimal then
    begin
      if  not ( Key in ['0'..'9', Chr(8)] ) then
          Key := #0
    end
  else
    begin
      if  Key = #46 then
          Key := DecimalSeparator;
      if  not ( Key in ['0'..'9', Chr(8), DecimalSeparator] ) then
          Key := #0
      else
        if  ( Key = DecimalSeparator ) and ( Pos( Key, Texto ) > 0 ) then
            Key := #0
    end;
  Result := Key;
end;
end.
