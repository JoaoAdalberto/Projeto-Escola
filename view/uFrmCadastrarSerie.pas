unit uFrmCadastrarSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uSerieModel, uSerieController, ComCtrls, uDmSerie, uDmAluno, uDmFuncionario, uDmConexao, uAlunoController,
  DB, Grids, DBGrids, FMTBcd, SqlExpr, DBCtrls;

type
  TfrmCadastrarSerie = class(TForm)
    pgcSerie: TPageControl;
    tbPesquisar: TTabSheet;
    Panel2: TPanel;
    btnFechar: TButton;
    tbDados: TTabSheet;
    lbledtNome: TLabeledEdit;
    lbledtCodigoEscola: TLabeledEdit;
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
    sqlqryAlunos: TSQLQuery;
    dsAlunos: TDataSource;
    dsProfessores: TDataSource;
    sqlqryProfessores: TSQLQuery;
    tbParticipantes: TTabSheet;
    cbxEscolherAlunos: TComboBox;
    cbxEscolherprofessores: TComboBox;
    memoAlunos: TMemo;
    memoProfessores: TMemo;
    lblSexo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnConfirmar: TButton;
    btnCancelarTudo: TButton;
    SQLDataSet1: TSQLDataSet;
    dblupcbxEscola: TDBLookupComboBox;
    Label4: TLabel;
    dsEscola: TDataSource;
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
    procedure FormShow(Sender: TObject);
    procedure cbxEscolherAlunosSelect(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarTudoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxEscolherprofessoresSelect(Sender: TObject);
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

procedure TfrmCadastrarSerie.btnCancelarTudoClick(Sender: TObject);
begin
  pgcSerie.ActivePage:= tbPesquisar;
  cbxEscolherAlunos.Items.Clear;
  memoAlunos.Lines.Clear;
  cbxEscolherprofessores.Items.Clear;
end;

procedure TfrmCadastrarSerie.btnConfirmarClick(Sender: TObject);

begin
  pgcSerie.ActivePage:= tbPesquisar;
  dsSerie.DataSet.Refresh;
  cbxEscolherAlunos.Items.Clear;
  memoAlunos.Lines.Clear;
  memoProfessores.Lines.Clear;
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
var
  Escola : Integer;
  sqlEscola : TSQLDataSet;
begin
  Inserir;
  sqlEscola := TSQLDataSet.Create(nil);
  try
    sqlEscola.SQLConnection := dmConexao.sqlConexao;
    sqlEscola.CommandText := 'select SERESC from Serie where SERCOD = (select max(SERCOD) from Serie)';
    sqlEscola.Open;
    Escola := sqlEscola.FieldByName('SERESC').AsInteger;
  finally
    FreeAndNil(sqlEscola);
  end;
  sqlqryAlunos.SQL.Text := 'select ALUNOM from Aluno where (ALUESC = ' + IntToStr(Escola) + ')';
  sqlqryAlunos.Open;
  sqlqryAlunos.First;
    while not sqlqryAlunos.Eof do
      begin
        cbxEscolherAlunos.Items.Add(sqlqryAlunos.FieldByName('ALUNOM').AsString);
        sqlqryAlunos.Next;
      end;
  FreeAndNil(sqlqryAlunos);
  sqlqryProfessores.SQL.Text := 'select FUNNOM from Funcionario where (FUNESC = ' + IntToStr(Escola)+ ') and ((FUNESP = 4) or (FUNESP =5) or (FUNESP = 6) or (FUNESP = 7) or (FUNESP = 9) or (FUNESP = 10) or (FUNESP = 11) or (FUNESP = 12) or (FUNESP = 13) or (FUNESP = 14) or (FUNESP = 15) or (FUNESP = 16) or (FUNESP = 17) or (FUNESP = 18))';
  sqlqryProfessores.Open;
  sqlqryProfessores.First;
    while not sqlqryProfessores.Eof do
      begin
        cbxEscolherprofessores.Items.Add(sqlqryProfessores.FieldByName('FUNNOM').AsString);
        sqlqryProfessores.Next;
      end;
  FreeAndNil(sqlqryProfessores);
  pgcSerie.ActivePage:= tbParticipantes;
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


procedure TfrmCadastrarSerie.cbxEscolherAlunosSelect(Sender: TObject);
var
  sqlSerie : TSQLDataSet;
  Serie: Integer;
begin
  sqlSerie := TSQLDataSet.Create(nil);
  try
    sqlSerie.SQLConnection := dmConexao.sqlConexao;
    sqlSerie.CommandText := 'select coalesce(max(SERCOD), 0) as seq from Serie';
    sqlSerie.Open;
    Serie := sqlSerie.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSerie);
  end;
  memoAlunos.Lines.Add(cbxEscolherAlunos.Text);
  sqlSerie := TSQLDataSet.Create(nil);
  try
    sqlSerie.SQLConnection := dmConexao.sqlConexao;
    sqlSerie.CommandText := 'UPDATE Aluno SET SERCOD =:SERCOD WHERE ALUNOM =:ALUNOM';
    sqlSerie.ParamByName('SERCOD').AsInteger := Serie;
    sqlSerie.ParamByName('ALUNOM').AsString := cbxEscolherAlunos.Text;
    sqlSerie.ExecSQL;
  finally
    FreeAndNil(sqlSerie);
  end;
end;

procedure TfrmCadastrarSerie.cbxEscolherprofessoresSelect(Sender: TObject);
var
  sqlSerie : TSQLDataSet;
  Serie: Integer;
begin
  sqlSerie := TSQLDataSet.Create(nil);
  try
    sqlSerie.SQLConnection := dmConexao.sqlConexao;
    sqlSerie.CommandText := 'select coalesce(max(SERCOD), 0) as seq from Serie';
    sqlSerie.Open;
    Serie := sqlSerie.FieldByName('seq').AsInteger;
  finally
    FreeAndNil(sqlSerie);
  end;
  memoProfessores.Lines.Add(cbxEscolherProfessores.Text);
  sqlSerie := TSQLDataSet.Create(nil);
  try
    sqlSerie.SQLConnection := dmConexao.sqlConexao;
    sqlSerie.CommandText := 'UPDATE FUNCIONARIO SET FUNSER =:FUNSER WHERE FUNNOM =:FUNNOM';
    sqlSerie.ParamByName('FUNSER').AsInteger := Serie;
    sqlSerie.ParamByName('FUNNOM').AsString := cbxEscolherProfessores.Text;
    sqlSerie.ExecSQL;
  finally
    FreeAndNil(sqlSerie);
  end;
end;

procedure TfrmCadastrarSerie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsSerie.DataSet.Active := False;
end;

procedure TfrmCadastrarSerie.FormShow(Sender: TObject);
begin
  ClearEdits(Self);
  tbPesquisar.TabVisible := False;
  tbDados.TabVisible := False;
  tbParticipantes.TabVisible := False;
  dsSerie.DataSet.Active := True;
  dsEscola.DataSet.Active := True;
  pgcSerie.ActivePage := tbPesquisar;
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
    oSerie.SERESC := dblupcbxEscola.KeyValue;
    if oSerieController.Inserir(oSerie, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oSerie);
    FreeAndNil(oSerieController);
    //dsSerieo.DataSet.Refresh;
  end;
end;

end.
