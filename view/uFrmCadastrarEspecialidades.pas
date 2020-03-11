unit uFrmCadastrarEspecialidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uEspecialidadeModel, uEspecialidadeController, uDmConexao, DB, DBGrids,
  Grids, ComCtrls;

type
  TfrmCadastrarEspecialidades = class(TForm)
    pgcEspecialidade: TPageControl;
    tbPesquisar: TTabSheet;
    tbDados: TTabSheet;
    Panel1: TPanel;
    btnFechar1: TButton;
    Panel2: TPanel;
    btnFechar: TButton;
    lbledtEspecialidadeDes: TLabeledEdit;
    lbledtCodigo: TLabeledEdit;
    Panel3: TPanel;
    btnListar: TButton;
    btnAlterar: TButton;
    btnGravar: TButton;
    btnCancelar: TButton;
    pnlPesquisar: TPanel;
    lbledtPesquisar: TLabeledEdit;
    btnPesquisar: TButton;
    dbEspecialidade: TDBGrid;
    dsEspecialidade: TDataSource;
    pnlBotoes: TPanel;
    btnDetalhar: TButton;
    btnNovo: TButton;
    btnExcluir: TButton;
    procedure btnGravarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFechar1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);

  private
    procedure InserirEspecialidade;
    procedure ResetarGrid;
    public
    { Public declarations }
  end;

var
  frmCadastrarEspecialidades: TfrmCadastrarEspecialidades;

implementation


procedure ClearEdits(Owner: TfrmCadastrarEspecialidades);
var i: integer;
begin
  for i := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[i] is TLabeledEdit then
    begin
      TLabeledEdit(Owner.Components[i]).Clear;
    end
end;

procedure TfrmCadastrarEspecialidades.btnAlterarClick(Sender: TObject);
var
  oEspecialidade : TEspecialidade;
  oEspecialidadeController : TEspecialidadeController;
  sError : string;
begin
  oEspecialidade := TEspecialidade.Create;
  oEspecialidadeController := TEspecialidadeController.Create;
  try
    oEspecialidade.ESPDES:= lbledtEspecialidadeDes.Text;
    oEspecialidade.ESPCOD := StrToInt(lbledtCodigo.Text);
    if oEspecialidadeController.Alterar(oEspecialidade, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oEspecialidade);
    FreeAndNil(oEspecialidadeController);
    dsEspecialidade.DataSet.Refresh;
    pgcEspecialidade.ActivePage := tbPesquisar;
  end;
end;

procedure TfrmCadastrarEspecialidades.btnCancelarClick(Sender: TObject);
begin
  ClearEdits(Self);
  pgcEspecialidade.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEspecialidades.btnDetalharClick(Sender: TObject);
begin
  pgcEspecialidade.ActivePage := tbDados;
  btnListar.Enabled := True;
  btnAlterar.Enabled := True;
  btnGravar.Enabled := False;
  btnCancelar.Enabled := False;
  lbledtCodigo.Text :=   dbEspecialidade.Fields[(0)].Text;
  lbledtEspecialidadeDes.Text :=   dbEspecialidade.Fields[(1)].Text;
end;

procedure TfrmCadastrarEspecialidades.btnExcluirClick(Sender: TObject);
var
  oEspecialidadeController : TEspecialidadeController;
  sError: string;
  CodigoEspecialidadeExcluir : integer;
begin
  CodigoEspecialidadeExcluir  := StrToInt(dbEspecialidade.Fields[(0)].Text);
  oEspecialidadeController := TEspecialidadeController.Create;
  oEspecialidadeController.Excluir(CodigoEspecialidadeExcluir, sError);
  dsEspecialidade.DataSet.Refresh;
end;

procedure TfrmCadastrarEspecialidades.btnFechar1Click(Sender: TObject);
begin
  frmCadastrarEspecialidades.Close;
  dsEspecialidade.DataSet.Active := False;
end;

procedure TfrmCadastrarEspecialidades.btnFecharClick(Sender: TObject);
begin
   frmCadastrarEspecialidades.Close;
   dsEspecialidade.DataSet.Active := False;
end;

procedure TfrmCadastrarEspecialidades.btnGravarClick(Sender: TObject);
begin
InserirEspecialidade;
  if MessageDlg('Especialidade adicionada com sucesso.'+#13+#10+'Deseja adicionar outra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      TLabeledEdit(lbledtEspecialidadeDes).Clear;
      end
  else
    pgcEspecialidade.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEspecialidades.btnListarClick(Sender: TObject);
begin
   pgcEspecialidade.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarEspecialidades.btnNovoClick(Sender: TObject);
begin
  pgcEspecialidade.ActivePage := tbDados;
  tbPesquisar.TabVisible := False;
  btnListar.Enabled := False;
  btnAlterar.Enabled := False;
  btnGravar.Enabled := True;
  btnCancelar.Enabled := True;
  ClearEdits(Self);
end;

procedure TfrmCadastrarEspecialidades.btnPesquisarClick(Sender: TObject);
begin
  dsEspecialidade.DataSet.Filtered := False;
  dsEspecialidade.DataSet.Filter := 'ESPDES = ' + QuotedStr(lbledtPesquisar.Text);
  dsEspecialidade.DataSet.Filtered := True;
  if lbledtPesquisar.Text = '' then
    ResetarGrid;
end;

procedure TfrmCadastrarEspecialidades.FormShow(Sender: TObject);
begin
  ClearEdits(Self);
  tbPesquisar.TabVisible := False;
  tbDados.TabVisible := False;
  dsEspecialidade.DataSet.Active := True;
  pgcEspecialidade.ActivePage := tbPesquisar;
  ResetarGrid;
end;

procedure TfrmCadastrarEspecialidades.InserirEspecialidade;
var
  oEspecialidade : TEspecialidade;
  oEspecialidadeController : TEspecialidadeController;
  sError : string;
begin
  oEspecialidade := TEspecialidade.Create;
  oEspecialidadeController := TEspecialidadeController.Create;
  try
    //oEscola.ESCCOD := StrToIntDef(lbledtCodigo.Text, 0);
    oEspecialidade.ESPDES := lbledtEspecialidadeDes.Text;
    if oEspecialidadeController.InserirEspecialidade(oEspecialidade, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oEspecialidade);
    FreeAndNil(oEspecialidadeController);
    dsEspecialidade.DataSet.Refresh;
  end;
end;





procedure TfrmCadastrarEspecialidades.ResetarGrid;
begin
  dsEspecialidade.DataSet.Filtered := False;
  dsEspecialidade.DataSet.Filter := 'ESPCOD <> NULL';
  dsEspecialidade.DataSet.Filtered := True;
end;

{$R *.dfm}

end.
