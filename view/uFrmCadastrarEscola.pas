unit uFrmCadastrarEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DBCtrls, DB, DBGrids, uEscolaController, uEscolaModel, uDmConexao,
  ComCtrls, Grids;

type
  TfrmCadastrarEscola = class(TForm)
    dsEscola: TDataSource;
    pgcEscola: TPageControl;
    tbPesquisar: TTabSheet;
    tbDados: TTabSheet;
    lbledtNome: TLabeledEdit;
    lbledtDescricao: TLabeledEdit;
    Label1: TLabel;
    lbledtRua: TLabeledEdit;
    lbledtNumero: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    mskedtCep: TMaskEdit;
    lbledtEstado: TLabeledEdit;
    lbledtComplemento: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    pnlBotoes: TPanel;
    btnConfirmarCadastro: TButton;
    btnCancelarCadastro: TButton;
    Panel1: TPanel;
    btnFechar: TButton;
    pnlFiltro: TPanel;
    edtPesquisar: TLabeledEdit;
    btnPesquisar: TButton;
    dbEscola: TDBGrid;
    pnlBtnsPesq: TPanel;
    btnNovo: TButton;
    btnDetalhar: TButton;
    btnExcluir: TButton;
    lbledtCodigo: TLabeledEdit;
    btnAlterar: TButton;
    btnListar: TButton;

    procedure FormShow(Sender: TObject);
    procedure btnConfirmarCadastroClick(Sender: TObject);
    procedure btnCancelarCadastroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dbEscolaDblClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure dbEscolaCellClick(Column: TColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    procedure Inserir;
    procedure CarregarEscola;
    procedure Excluir;
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
    if Owner.Components[i] is TLabeledEdit then
    begin
      TLabeledEdit(Owner.Components[i]).Clear;
    end
    else if Owner.Components[i] is TMaskEdit then
    begin
      TMaskEdit(Owner.Components[i]).Clear;
    end
end;




//procedure tFrmCadastrarEscola.Novo1Click(Sender: TObject);
//begin
//  ClearEdits(Self);
//end;


procedure TfrmCadastrarEscola.btnAlterarClick(Sender: TObject);
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
  sError: String;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    oEscola.ESCCOD := StrToInt(lbledtCodigo.Text);
    oEscola.ESCNOM := lbledtNome.Text;
    oEscola.ESCDES := lbledtDescricao.Text;
    oEscola.ESCCEP := StringReplace(mskedtCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
    oEscola.ESCRUA := lbledtRua.Text;
    oEscola.ESCNUM := lbledtNumero.Text;
    oEscola.ESCBAIRRO := lbledtBairro.Text;
    oEscola.ESCCOM := lbledtComplemento.Text;
    oEscola.ESCCIDADE := lbledtCidade.Text;
    oEscola.ESCEST := lbledtEstado.Text;
    if oEscolaController.Alterar(oEscola, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oEscolaController);
    FreeAndNil(oEscola);
    dsEscola.DataSet.Refresh;
    pgcEscola.ActivePage := tbPesquisar;
  end;
end;

procedure TfrmCadastrarEscola.btnCancelarCadastroClick(Sender: TObject);
begin
  tbDados.TabVisible := False;
  pgcEscola.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEscola.btnConfirmarCadastroClick(Sender: TObject);
begin
  Inserir;
  if MessageDlg('Escola adicionada com sucesso.'+#13+#10+'Deseja adicionar outra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      ClearEdits(frmCadastrarEscola);
      end
  else
    pgcEscola.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEscola.btnDetalharClick(Sender: TObject);
begin
  pgcEscola.ActivePage := tbDados;
  btnListar.Enabled := True;
  btnAlterar.Enabled := True;
  btnConfirmarCadastro.Enabled := False;
  btnCancelarCadastro.Enabled := False;
  lbledtCodigo.Text :=   dbEscola.Fields[(0)].Text;
  lbledtNome.Text :=   dbEscola.Fields[(1)].Text;
  lbledtDescricao.Text :=   dbEscola.Fields[(2)].Text;
  mskedtCep.Text :=   dbEscola.Fields[(3)].Text;
  lbledtRua.Text :=   dbEscola.Fields[(4)].Text;
  lbledtComplemento.Text :=   dbEscola.Fields[(5)].Text;
  lbledtNumero.Text :=   dbEscola.Fields[(6)].Text;
  lbledtBairro.Text :=   dbEscola.Fields[(7)].Text;
  lbledtCidade.Text :=   dbEscola.Fields[(8)].Text;
  lbledtEstado.Text :=   dbEscola.Fields[(9)].Text;
  end;

procedure TfrmCadastrarEscola.btnExcluirClick(Sender: TObject);
begin
  Excluir;
  MessageDlg('Escola exclu�da com sucesso.', mtInformation, [mbOk], 0);

end;

procedure TfrmCadastrarEscola.btnFecharClick(Sender: TObject);
begin
  frmCadastrarEscola.Close;
end;

procedure TfrmCadastrarEscola.btnListarClick(Sender: TObject);
begin
  pgcEscola.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEscola.btnNovoClick(Sender: TObject);
begin
  pgcEscola.ActivePage := tbDados;
  tbPesquisar.TabVisible := False;
  btnListar.Enabled := False;
  btnAlterar.Enabled := False;
  btnConfirmarCadastro.Enabled := True;
  btnCancelarCadastro.Enabled := True;
  ClearEdits(Self);

end;



procedure TfrmCadastrarEscola.CarregarEscola;
var
  oEscola : TEscola;
  oEscolaController: TEscolaController;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    oEscolaController.CarregarEscola(oEscola, dsEscola.DataSet.FieldbyName('ESCCOD').AsInteger);
    lbledtCodigo.Text := IntToStr(oEscola.ESCCOD);
    lbledtNome.Text := oEscola.ESCNOM;
    lbledtDescricao.Text := oEscola.ESCDES;
    lbledtRua.Text := oEscola.ESCRUA;
    lbledtNumero.Text := oEscola.ESCNUM;
    lbledtBairro.Text := oEscola.ESCBAIRRO;
    mskedtCep.Text := oEscola.ESCCEP;
    lbledtEstado.Text := oEscola.ESCEST;
    lbledtCidade.Text := oEscola.ESCCIDADE;
    lbledtComplemento.Text := oEscola.ESCCOM;
  finally
    FreeAndNil(oEscola);
    FreeAndNil(oEscolaController);
  end;
end;

procedure TfrmCadastrarEscola.dbEscolaCellClick(Column: TColumn);
begin
  //CarregarEscola;
end;

procedure TfrmCadastrarEscola.dbEscolaDblClick(Sender: TObject);
begin
  CarregarEscola;
  pgcEscola.ActivePage := tbDados;
  tbPesquisar.TabVisible := False;


end;

procedure TfrmCadastrarEscola.Excluir;
var
  oEscolaController : TEscolaController;
  sError: string;
  CodigoEscolaExcluir : integer;
begin
  CodigoEscolaExcluir  := StrToInt(dbEscola.Fields[(0)].Text);
  oEscolaController := TEscolaController.Create;
  oEscolaController.Excluir(CodigoEscolaExcluir, sError);
  dsEscola.DataSet.Refresh;
end;

procedure TfrmCadastrarEscola.btnPesquisarClick(Sender: TObject);
var
  oEscolaController : TEscolaController;
begin
  oEscolaController := TEscolaController.Create;
    try
      oEscolaController.Pesquisar(edtPesquisar.Text);
      dsEscola.DataSet.Refresh;
    finally
      freeandnil(oEscolaController);

    end;
end;

procedure TfrmCadastrarEscola.FormShow(Sender: TObject);
begin
  ClearEdits(Self);
  tbPesquisar.TabVisible := False;
  tbDados.TabVisible := False;
  pgcEscola.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEscola.Inserir;
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
  sError : string;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    //oEscola.ESCCOD := StrToIntDef(lbledtCodigo.Text, 0);
    oEscola.ESCNOM := lbledtNome.Text;
    oEscola.ESCDES := lbledtDescricao.Text;
    oEscola.ESCCEP := StringReplace(mskedtCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
    oEscola.ESCRUA := lbledtRua.Text;
    oEscola.ESCNUM := lbledtNumero.Text;
    oEscola.ESCBAIRRO := lbledtBairro.Text;
    oEscola.ESCCOM := lbledtComplemento.Text;
    oEscola.ESCCIDADE := lbledtCidade.Text;
    oEscola.ESCEST := lbledtEstado.Text;
    //oEscola.ESCDATCAD := TDateTime(now);
    if oEscolaController.Inserir(oEscola, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oEscola);
    FreeAndNil(oEscolaController);
    dsEscola.DataSet.Refresh;
  end;
end;

end.
