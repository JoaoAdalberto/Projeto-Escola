﻿unit ufrmCadastrarFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ExtCtrls, uFuncionarioModel, uFuncionarioController, uDmConexao;

type
  TfrmCadastrarFuncionario = class(TForm)
    lblTopo: TLabel;
    Label1: TLabel;
    lblDataContratacao: TLabel;
    lbledtEstado: TLabeledEdit;
    lbledtRua: TLabeledEdit;
    lbledtNumero: TLabeledEdit;
    lbledtComplemento: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    mskedtCep: TMaskEdit;
    btnConfirmarCadastro: TButton;
    btnCancelarCadastro: TButton;
    lbledtNome: TLabeledEdit;
    dattimpickDataContratacao: TDateTimePicker;
    cbxSexo: TComboBox;
    lblSexo: TLabel;
    Label2: TLabel;
    dattimpckDataNascimento: TDateTimePicker;
    Label3: TLabel;
    mskedtCPF: TMaskEdit;
    lbledtCodigoEscola: TLabeledEdit;
    cbxEspecialidade: TComboBox;
    lblCargo: TLabel;
    procedure btnConfirmarCadastroClick(Sender: TObject);
  private
    procedure Inserir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarFuncionario: TfrmCadastrarFuncionario;

implementation

procedure TfrmCadastrarFuncionario.btnConfirmarCadastroClick(Sender: TObject);
begin
  Inserir;
end;

procedure TfrmCadastrarFuncionario.Inserir;
var
  oFuncionario : TFuncionario;
  oFuncionarioController : TFuncionarioController;
  sError : string;
  cpfsemhifen : string;
  cpfsemponto : string;
begin
  oFuncionario := TFuncionario.Create;
  oFuncionarioController := TFuncionarioController.Create;
  try
    cpfsemhifen := StringReplace(mskedtCPF.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
    cpfsemponto := StringReplace(cpfsemhifen, '.', '', [rfReplaceAll, rfIgnoreCase]);
    oFuncionario.FUNNOM := lbledtNome.Text;
    oFuncionario.FUNDATNAS := dattimpckDataNascimento.Date;
    //oFuncionario.FUNDATEMP := dattimpickDataContratacao.Date;
    oFuncionario.FUNSEX := cbxSexo.Text;
    oFuncionario.FUNCPF := cpfsemponto;
    oFuncionario.FUNESC := StrToInt(lbledtCodigoEscola.Text);
    oFuncionario.FUNESP := strtoint(cbxEspecialidade.Text);
    oFuncionario.FUNCEP := StringReplace(mskedtCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
    oFuncionario.FUNRUA := lbledtRua.Text;
    oFuncionario.FUNNUM := lbledtNumero.Text;
    oFuncionario.FUNBAI := lbledtBairro.Text;
    oFuncionario.FUNCOM := lbledtComplemento.Text;
    oFuncionario.FUNCID := lbledtCidade.Text;
    oFuncionario.FUNEST := lbledtEstado.Text;
    if not oFuncionarioController.Inserir(oFuncionario, sError) then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oFuncionario);
    FreeAndNil(oFuncionarioController);
  end;
end;

{$R *.dfm}

end.
