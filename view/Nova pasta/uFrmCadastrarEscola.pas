unit uFrmCadastrarEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DBCtrls, DB, DBGrids, uEscolaController, uEscolaModel, uDmConexao,
  ComCtrls;

type
  TfrmCadastrarEscola = class(TForm)
    lblTopo: TLabel;
    lbledtDescricao: TLabeledEdit;
    lbledtEstado: TLabeledEdit;
    lbledtRua: TLabeledEdit;
    lbledtNumero: TLabeledEdit;
    lbledtComplemento: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    mskedtCep: TMaskEdit;
    btnConfirmarCadastro: TButton;
    btnCancelarCadastro: TButton;
    Label1: TLabel;
    DataSource1: TDataSource;
    lbledtNome: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    dattimpickDataCadastro: TDateTimePicker;
    lblDataCadastr: TLabel;

    procedure FormShow(Sender: TObject);
    procedure btnConfirmarCadastroClick(Sender: TObject);
  private
    procedure Inserir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarEscola: TfrmCadastrarEscola;

implementation

{$R *.dfm}
procedure ClearEdits(Owner: TfrmCadastrarEscola);
var i: integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[i] is TDBEdit then
    begin
      TDBEdit(Owner.Components[i]).Clear;
    end
    else if Owner.Components[i] is TComboBox then
    begin
      TComboBox(Owner.Components[i]).Clear;
    end
end;




//procedure tFrmCadastrarEscola.Novo1Click(Sender: TObject);
//begin
//  ClearEdits(Self);
//end;


procedure TfrmCadastrarEscola.btnConfirmarCadastroClick(Sender: TObject);
begin
  Inserir;
end;

procedure TfrmCadastrarEscola.FormShow(Sender: TObject);
begin
  ClearEdits(Self);
end;

procedure TfrmCadastrarEscola.Inserir;
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
  sError : string;
  CEP: string;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    oEscola.ESCCOD := StrToIntDef(lbledtCodigo.Text, 0);
    oEscola.ESCNOM := lbledtNome.Text;
    oEscola.ESCDES := lbledtDescricao.Text;
    oEscola.ESCDATCAD := dattimpickDataCadastro.Date;
    oEscola.ESCCEP := StringReplace(mskedtCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
    oEscola.ESCRUA := lbledtRua.Text;
    oEscola.ESCNUM := lbledtNumero.Text;
    oEscola.ESCBAIRRO := lbledtBairro.Text;
    oEscola.ESCCOM := lbledtComplemento.Text;
    oEscola.ESCCIDADE := lbledtCidade.Text;
    oEscola.ESCEST := lbledtEstado.Text;
    if oEscolaController.Inserir(oEscola, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oEscola);
    FreeAndNil(oEscolaController);
  end;
end;

end.
