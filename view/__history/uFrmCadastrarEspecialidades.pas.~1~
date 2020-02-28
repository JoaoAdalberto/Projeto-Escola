unit uFrmCadastrarCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uCargoModel, uCargoController;

type
  TfrmCadastrarCargo = class(TForm)
    Label1: TLabel;
    lbledtCargoDes: TLabeledEdit;
    btnCadastrarCargo: TButton;
    procedure btnCadastrarCargoClick(Sender: TObject);
    procedure btnCancelarCadastroClick(Sender: TObject);

  private
    procedure InserirCargo;
    public
    { Public declarations }
  end;

var
  frmCadastrarCargo: TfrmCadastrarCargo;

implementation

procedure TfrmCadastrarCargo.btnCancelarCadastroClick(Sender: TObject);
begin
  frmCadastrarCargo.Close;
end;

procedure TfrmCadastrarCargo.InserirCargo;
var
  oCargo : TCargo;
  oCargoController : TCargoController;
  sError : string;
begin
  oCargo := TCargo.Create;
  oCargoController := TCargoController.Create;
  try
    //oEscola.ESCCOD := StrToIntDef(lbledtCodigo.Text, 0);
    oCargo.CARDES := lbledtCargoDes.Text;
    if oCargoController.InserirCargo(oCargo, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oCargo);
    FreeAndNil(oCargoController);
  end;
end;

procedure TfrmCadastrarCargo.btnCadastrarCargoClick(Sender: TObject);
begin
InserirCargo;
  if MessageDlg('Cargo adicionada com sucesso.'+#13+#10+'Deseja adicionar outro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      TLabeledEdit(lbledtCargoDes).Clear;
      end
  else
    frmCadastrarCargo.Close;
end;


{$R *.dfm}

end.
