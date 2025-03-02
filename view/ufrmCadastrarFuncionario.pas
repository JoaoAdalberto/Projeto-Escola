﻿unit ufrmCadastrarFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, ExtCtrls, uFuncionarioModel, uFuncionarioController, uDmFuncionario, DBCtrls, DB, DBGrids,
  Grids , uDmConexao, uFuncoesAuxiliares;

type
  TfrmCadastrarFuncionario = class(TForm)
    pgcFuncionario: TPageControl;
    tbPesquisar: TTabSheet;
    pnlFiltro: TPanel;
    edtPesquisar: TLabeledEdit;
    btnPesquisar: TButton;
    dbFuncionario: TDBGrid;
    pnlBtnsPesq: TPanel;
    btnNovo: TButton;
    btnDetalhar: TButton;
    btnExcluir: TButton;
    tbDados: TTabSheet;
    pnlBotoes: TPanel;
    btnGravar: TButton;
    btnCancelarCadastroo: TButton;
    btnAlterar: TButton;
    btnListar: TButton;
    Label1: TLabel;
    lblDataContratacao: TLabel;
    lblSexo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblCargo: TLabel;
    lbledtEstado: TLabeledEdit;
    lbledtRua: TLabeledEdit;
    lbledtNumero: TLabeledEdit;
    lbledtComplemento: TLabeledEdit;
    lbledtBairro: TLabeledEdit;
    lbledtCidade: TLabeledEdit;
    mskedtCep: TMaskEdit;
    lbledtNome: TLabeledEdit;
    dattimpickDataContratacao: TDateTimePicker;
    cbxSexo: TComboBox;
    dattimpckDataNascimento: TDateTimePicker;
    mskedtCPF: TMaskEdit;
    lbledtCodigo: TLabeledEdit;
    dsFuncionario: TDataSource;
    dsEspecialidade: TDataSource;
    dblcbxEscola: TDBLookupComboBox;
    dsEscola: TDataSource;
    dblucbxEspecialidade: TDBLookupComboBox;
    Label4: TLabel;
    Panel1: TPanel;
    btnFechar: TButton;
    pnlRodape: TPanel;
    btnFechar2: TButton;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbFuncionarioDblClick(Sender: TObject);
    procedure Inserir;
    procedure Excluir;
    procedure CarregarFuncionario;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarCadastroClick(Sender: TObject);
    procedure btnConfirmarCadastroClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure lbledtEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure lbledtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure lbledtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure pgcFuncionarioEnter(Sender: TObject);
    procedure btnFechar2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ResetarGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarFuncionario: TfrmCadastrarFuncionario;

implementation




procedure TfrmCadastrarFuncionario.btnGravarClick(Sender: TObject);
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
    oFuncionario.FUNDATEMP := dattimpickDataContratacao.Date;
    oFuncionario.FUNSEX := cbxSexo.Text;
    oFuncionario.FUNCPF := cpfsemponto;
    oFuncionario.FUNESC := dblcbxEscola.KeyValue;
    //oFuncionario.FUNESC := StrToInt(lbledtCodigoEscola.Text);
    oFuncionario.FUNESP := dblucbxEspecialidade.KeyValue;
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
    dsFuncionario.DataSet.Active := True;
    dsFuncionario.DataSet.Refresh;
  end;
end;


procedure TfrmCadastrarFuncionario.lbledtCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := SoAceitaLetra(Key, lbledtCidade.Text);
end;

procedure TfrmCadastrarFuncionario.lbledtEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := SoAceitaLetra(Key, lbledtEstado.Text);
end;

procedure TfrmCadastrarFuncionario.lbledtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := SoAceitaNumeros(Key, lbledtNumero.Text);
end;

procedure TfrmCadastrarFuncionario.pgcFuncionarioEnter(Sender: TObject);
begin
  dsFuncionario.DataSet.Refresh;
end;

procedure TfrmCadastrarFuncionario.ResetarGrid;
begin
  dsFuncionario.DataSet.Filtered := False;
  dsFuncionario.DataSet.Filter := 'FUNCOD <> NULL';
  dsFuncionario.DataSet.Filtered := True;
end;

{$R *.dfm}
procedure ClearEdits(Owner: TfrmCadastrarFuncionario);
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


procedure TfrmCadastrarFuncionario.btnAlterarClick(Sender: TObject);
var
  oFuncionario : TFuncionario;
  oFuncionarioController : TFuncionarioController;
  sError: String;
begin
  oFuncionario := TFuncionario.Create;
  oFuncionarioController := TFuncionarioController.Create;
  try
    oFuncionario.FUNCOD := StrToInt(lbledtCodigo.Text);
    oFuncionario.FUNNOM := lbledtNome.Text;
    oFuncionario.FUNDATNAS := dattimpckDataNascimento.Date;
    oFuncionario.FUNSEX := cbxSexo.Text;
    oFuncionario.FUNCPF := StringReplace(StringReplace(mskedtcpf.Text, '.', '', [rfReplaceAll, rfIgnoreCase]), '-', '', [rfreplaceAll, rfignorecase]);
    //oFuncionario.FUNESC := StrToInt(lbledtCodigoEscola.Text);
    oFuncionario.FUNESC := dblcbxEscola.KeyValue;
    oFuncionario.FUNESP := dblucbxEspecialidade.KeyValue;
    oFuncionario.FUNCEP := StringReplace(mskedtCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]);
    oFuncionario.FUNRUA := lbledtRua.Text;
    oFuncionario.FUNNUM := lbledtNumero.Text;
    oFuncionario.FUNBAI := lbledtBairro.Text;
    oFuncionario.FUNCOM := lbledtComplemento.Text;
    oFuncionario.FUNCID := lbledtCidade.Text;
    oFuncionario.FUNEST := lbledtEstado.Text;
    if oFuncionarioController.Alterar(oFuncionario, sError) = False then
      raise Exception.Create(sError);
  finally
    FreeAndNil(oFuncionarioController);
    FreeAndNil(oFuncionario);
    dsFuncionario.DataSet.Refresh;
    pgcFuncionario.ActivePage := tbPesquisar;
  end;
end;

procedure TfrmCadastrarFuncionario.btnCancelarCadastroClick(Sender: TObject);
begin
  tbDados.TabVisible := False;
  pgcFuncionario.ActivePage := tbPesquisar;
end;


procedure TfrmCadastrarFuncionario.btnConfirmarCadastroClick(Sender: TObject);
begin
  Inserir;
  if MessageDlg('Funcionario adicionada com sucesso.'+#13+#10+'Deseja adicionar outra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      ClearEdits(frmCadastrarFuncionario);
      end
  else
    pgcFuncionario.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarFuncionario.btnDetalharClick(Sender: TObject);
begin
  pgcFuncionario.ActivePage := tbDados;
  btnListar.Enabled := True;
  btnAlterar.Enabled := True;
  btnGravar.Enabled := False;
  btnCancelarCadastroo.Enabled := False;
  dattimpickDataContratacao.Enabled := False;
  lbledtCodigo.Text :=   dbFuncionario.Fields[(0)].Text;
  lbledtNome.Text :=   dbFuncionario.Fields[(1)].Text;
  dattimpckDataNascimento.Date :=   StrToDate(dbFuncionario.Fields[(2)].Text);
  //dattimpickDataContratacao.Date := StrToDate(dbFuncionario.Fields[(3)].Text);
  cbxSexo.Text := dbFuncionario.Fields[(4)].Text;
  mskedtCpf.Text := dbFuncionario.Fields[(5)].Text;
  //dblcbxEscola.Text := dbFuncionario.Fields[(6)].Text;
  //cbxEspecialidade.Text := dbFuncionario.Fields[(7)].Text;
  mskedtCep.Text :=   dbFuncionario.Fields[(8)].Text;
  lbledtRua.Text :=   dbFuncionario.Fields[(9)].Text;
  lbledtNumero.Text :=   dbFuncionario.Fields[(10)].Text;
  lbledtComplemento.Text :=   dbFuncionario.Fields[(11)].Text;
  lbledtBairro.Text :=   dbFuncionario.Fields[(12)].Text;
  lbledtCidade.Text :=   dbFuncionario.Fields[(13)].Text;
  lbledtEstado.Text :=   dbFuncionario.Fields[(14)].Text;
  end;

procedure TfrmCadastrarFuncionario.btnExcluirClick(Sender: TObject);
begin
  Excluir;
  MessageDlg('Funcionario excluído com sucesso.', mtInformation, [mbOk], 0);

end;



procedure TfrmCadastrarFuncionario.btnFechar2Click(Sender: TObject);
begin
   frmCadastrarFuncionario.Close;
end;

procedure TfrmCadastrarFuncionario.btnFecharClick(Sender: TObject);
begin
  frmCadastrarFuncionario.Close;
end;


procedure TfrmCadastrarFuncionario.btnListarClick(Sender: TObject);
begin
  pgcFuncionario.ActivePage := tbPesquisar;
end;

procedure TfrmCadastrarFuncionario.btnNovoClick(Sender: TObject);
begin
  pgcFuncionario.ActivePage := tbDados;
  tbPesquisar.TabVisible := False;
  btnListar.Enabled := False;
  btnAlterar.Enabled := False;
  btnGravar.Enabled := True;
  btnCancelarCadastroo.Enabled := True;
  ClearEdits(Self);

end;



procedure TfrmCadastrarFuncionario.CarregarFuncionario;
var
  oFuncionario : TFuncionario;
  oFuncionarioController: TFuncionarioController;
begin
  oFuncionario := TFuncionario.Create;
  oFuncionarioController := TFuncionarioController.Create;
  try
    oFuncionarioController.CarregarFuncionario(oFuncionario, dsFuncionario.DataSet.FieldbyName('FUNCOD').AsInteger);
    lbledtCodigo.Text := IntToStr(oFuncionario.FUNCOD);
    lbledtNome.Text := oFuncionario.FUNNOM;
    dattimpckDataNascimento.Date := oFuncionario.FUNDATNAS;
    dattimpickDataContratacao.Date := oFuncionario.FUNDATEMP;
    cbxSexo.Text := oFuncionario.FUNSEX;
    mskedtCPF.Text := oFuncionario.FUNCPF;
    //lbledtCodigoEscola.Text := IntToStr(oFuncionario.FUNESC);
    //cbxEspecialidade.Text := IntToStr(oFuncionario.FUNESP);
    mskedtCep.Text := oFuncionario.FUNCEP;
    lbledtRua.Text := oFuncionario.FUNRUA;
    lbledtNumero.Text := oFuncionario.FUNNUM;
    lbledtComplemento.Text := oFuncionario.FUNCOM;
    lbledtBairro.Text := oFuncionario.FUNBAI;
    lbledtCidade.Text := oFuncionario.FUNCID;
    lbledtEstado.Text := oFuncionario.FUNEST;

  finally
    FreeAndNil(oFuncionario);
    FreeAndNil(oFuncionarioController);
  end;
end;


procedure TfrmCadastrarFuncionario.dbFuncionarioDblClick(Sender: TObject);
begin
  CarregarFuncionario;
  pgcFuncionario.ActivePage := tbDados;
  tbPesquisar.TabVisible := False;


end;

procedure TfrmCadastrarFuncionario.Excluir;
var
  oFuncionarioController : TFuncionarioController;
  sError: string;
  CodigoFuncionarioExcluir : integer;
begin
  CodigoFuncionarioExcluir  := StrToInt(dbFuncionario.Fields[(0)].Text);
  oFuncionarioController := TFuncionarioController.Create;
  oFuncionarioController.Excluir(CodigoFuncionarioExcluir, sError);
  dsFuncionario.DataSet.Refresh;
end;

procedure TfrmCadastrarFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsFuncionario.DataSet.Active := False;
  dsEscola.DataSet.Active := False;
  dsEspecialidade.DataSet.Active := False;
end;

procedure TfrmCadastrarFuncionario.FormShow(Sender: TObject);
begin
  ClearEdits(Self);
  tbPesquisar.TabVisible := False;
  tbDados.TabVisible := False;
  pgcFuncionario.ActivePage := tbPesquisar;
  dsFuncionario.DataSet.Active := True;
  dsEscola.DataSet.Active := True;
  dsEspecialidade.DataSet.Active := True;
  ResetarGrid;
end;


procedure TfrmCadastrarFuncionario.btnPesquisarClick(Sender: TObject);
var
  oFuncionarioController : TFuncionarioController;
begin
  oFuncionarioController := TFuncionarioController.Create;
    try
      //oFuncionarioController.Pesquisar(edtPesquisar.Text);
      dsFuncionario.DataSet.Filtered := False;
      dsFuncionario.DataSet.Filter := 'FUNNOM = ' + QuotedStr(edtPesquisar.Text);
      dsFuncionario.DataSet.Filtered := True;
      if edtPesquisar.Text = '' then
        ResetarGrid;
    finally
      freeandnil(oFuncionarioController);

    end;
end;


end.
