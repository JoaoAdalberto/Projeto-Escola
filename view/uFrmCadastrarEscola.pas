unit uFrmCadastrarEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls;

type
  TfrmCadastrarEscola = class(TForm)
    lblTopo: TLabel;
    lbledtNomeEscola: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    lbledtEstado: TLabeledEdit;
    lbledtRua: TLabeledEdit;
    lbledtNumero: TLabeledEdit;
    lbledtComplemento: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    mskedtCep: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarEscola: TfrmCadastrarEscola;

implementation

{$R *.dfm}

end.
