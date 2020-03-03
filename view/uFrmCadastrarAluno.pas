unit uFrmCadastrarAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ExtCtrls, DBCtrls;

type
  TfrmCadastrarAluno = class(TForm)
    PageControl1: TPageControl;
    tbPesquisar: TTabSheet;
    tbDados: TTabSheet;
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
    DBLookupComboBox1: TDBLookupComboBox;
    lbledtCodigo: TLabeledEdit;
    Panel1: TPanel;
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
