unit uFrmCadastrarAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ExtCtrls;

type
  TfrmCadastrarAluno = class(TForm)
    lblTopo: TLabel;
    Label1: TLabel;
    lblDataMatricula: TLabel;
    lblSexo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
    dattimpickDataMatricula: TDateTimePicker;
    cbxSexo: TComboBox;
    dattimpckDataNascimento: TDateTimePicker;
    mskedtCPF: TMaskEdit;
    lbledtCodigoEscola: TLabeledEdit;
    lbledtNomeMae: TLabeledEdit;
    lbledtNomePai: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarAluno: TfrmCadastrarAluno;

implementation

{$R *.dfm}

end.
