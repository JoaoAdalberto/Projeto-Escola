unit uFrmCadastrarSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uSerieModel, uSerieController, ComCtrls, uDmSerie,
  DB, Grids, DBGrids;

type
  TfrmCadastrarSerie = class(TForm)
    pgcSerie: TPageControl;
    tbPesquisar: TTabSheet;
    Panel2: TPanel;
    btnFechar: TButton;
    tbDados: TTabSheet;
    Label1: TLabel;
    lblSexo: TLabel;
    lbledtNome: TLabeledEdit;
    btnInserir: TButton;
    lbledtCodigoEscola: TLabeledEdit;
    memoProfessores: TMemo;
    cbxEscolherprofessores: TComboBox;
    memoAlunos: TMemo;
    cbxEscolherAlunos: TComboBox;
    lbledtCodigoSerie: TLabeledEdit;
    Panel1: TPanel;
    btnFechar2: TButton;
    Panel3: TPanel;
    btnListar: TButton;
    btnAlterar: TButton;
    btnGravar: TButton;
    btnCancelar: TButton;
    pnlFiltro: TPanel;
    lbledtPesquisar: TLabeledEdit;
    btnPesquisar: TButton;
    pnlBtnsPesq: TPanel;
    btnNovo: TButton;
    btnDetalhar: TButton;
    btnExcluir: TButton;
    dbSerie: TDBGrid;
    dsSerie: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnFechar2Click(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Inserir;
    { Public declarations }
  end;

var
  frmCadastrarSerie: TfrmCadastrarSerie;

implementation

{$R *.dfm}



{ TfrmCadastrarSerie }

procedure TfrmCadastrarSerie.btnAlterarClick(Sender: TObject);
var
  oSerie : TSerie;
  oSerieController : TSerieController;
  sError : string;
begin
  oSerie := TSerie.Create;
  oSerieController := TSerieController.Create;
  try
    oSerie.SERNOM := lbledtNome.Text;
    oSerie.SERESC := StrToInt(lbledtCodigoEscola.Text);
    if oSerieController.Alterar(oSerie, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oSerie);
    FreeAndNil(oSerieController);
    //dsSerie.DataSet.Refresh;
    pgcSerie.ActivePage := tbPesquisar;
  end;
end;
procedure TfrmCadastrarSerie.btnCancelarClick(Sender: TObject);
begin
  tbDados.TabVisible := False;
  pgcSerie.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarSerie.btnDetalharClick(Sender: TObject);
begin
  pgcSerie.ActivePage := tbDados;
  btnListar.Enabled := True;
  btnAlterar.Enabled := True;
  btnGravar.Enabled := False;
  btnCancelar.Enabled := False;
  lbledtCodigoSerie.Text :=   dbSerie.Fields[(0)].Text;
  lbledtCodigoEscola.Text :=   dbSerie.Fields[(2)].Text;
  lbledtNome.Text :=   dbSerie.Fields[(1)].Text;
end;

procedure TfrmCadastrarSerie.btnExcluirClick(Sender: TObject);
var
  oSerieController : TSerieController;
  sError: string;
  CodigoSerieExcluir : integer;
begin
  CodigoSerieExcluir  := StrToInt(dbSerie.Fields[(0)].Text);
  oSerieController := TSerieController.Create;
  oSerieController.Excluir(CodigoSerieExcluir, sError);
  dsSerie.DataSet.Refresh;
end;

procedure TfrmCadastrarSerie.btnFechar2Click(Sender: TObject);
begin
  frmCadastrarSerie.Close;
end;

procedure TfrmCadastrarSerie.btnFecharClick(Sender: TObject);
begin
  frmCadastrarSerie.Close;
end;

procedure TfrmCadastrarSerie.btnGravarClick(Sender: TObject);
begin
  Inserir;
end;

procedure ClearEdits(Owner: TfrmCadastrarSerie);
var i: integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[i] is TLabeledEdit then
    begin
      TLabeledEdit(Owner.Components[i]).Clear;
    end
end;

procedure TfrmCadastrarSerie.btnListarClick(Sender: TObject);
begin
  pgcSerie.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarSerie.btnNovoClick(Sender: TObject);
begin
  pgcSerie.ActivePage := tbDados;
  tbPesquisar.TabVisible := False;
  btnListar.Enabled := False;
  btnAlterar.Enabled := False;
  btnGravar.Enabled := True;
  btnCancelar.Enabled := True;
  ClearEdits(Self);
end;

procedure TfrmCadastrarSerie.btnPesquisarClick(Sender: TObject);
var
  oSerieController : TSerieController;
begin
  oSerieController := TSerieController.Create;
    try
      oSerieController.Pesquisar(lbledtPesquisar.Text);
      //dsSerie.DataSet.Refresh;
    finally
      freeandnil(oSerieController);
    end;
end;

procedure TfrmCadastrarSerie.Inserir;
var
  oSerie : TSerie;
  oSerieController : TSerieController;
  sError : string;
begin
  oSerie := TSerie.Create;
  oSerieController := TSerieController.Create;
  try
    oSerie.SERNOM := lbledtNome.Text;
    oSerie.SERESC := StrToInt(lbledtCodigoEscola.Text);
    if oSerieController.Inserir(oSerie, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oSerie);
    FreeAndNil(oSerieController);
    //dsSerieo.DataSet.Refresh;
  end;
end;

end.
