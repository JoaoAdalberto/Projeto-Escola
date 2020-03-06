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
    LabeledEdit1: TLabeledEdit;
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

  private
    procedure InserirEspecialidade;
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

procedure TfrmCadastrarEspecialidades.btnFecharClick(Sender: TObject);
begin
   frmCadastrarEspecialidades.Close;
end;

procedure TfrmCadastrarEspecialidades.btnGravarClick(Sender: TObject);
begin
InserirEspecialidade;
  if MessageDlg('Especialidade adicionada com sucesso.'+#13+#10+'Deseja adicionar outra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      TLabeledEdit(lbledtEspecialidadeDes).Clear;
      end
  else
    frmCadastrarEspecialidades.Close;
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
  end;
end;



{$R *.dfm}

end.
