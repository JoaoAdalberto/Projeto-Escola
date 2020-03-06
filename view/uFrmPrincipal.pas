unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, uFrmCadastrarEscola, Grids, DBGrids,
  DBCtrls, Mask, uFrmExcluirEscola, uFrmCadastrarEspecialidades, uFrmCadastrarFuncionario, uFrmCadastrarAluno, uFrmCadastrarSerie;

type
  TunFrmPrincipal = class(TForm)
    lblSCEFA: TLabel;
    Label1: TLabel;
    mainmenPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Funcionarios1: TMenuItem;
    Alunos1: TMenuItem;
    Escolas1: TMenuItem;
    Series1: TMenuItem;
    Especialidades1: TMenuItem;
    datetime: TTimer;
    lblDataHora: TLabel;
    procedure datetimeTimer(Sender: TObject);
    procedure Escolas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Escola1Click(Sender: TObject);
    procedure Especialidades1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure Series1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unFrmPrincipal: TunFrmPrincipal;

implementation

uses uDmConexao;

{$R *.dfm}

procedure TunFrmPrincipal.Especialidades1Click(Sender: TObject);
begin
  frmCadastrarEspecialidades := TFrmCadastrarEspecialidades.Create(nil);
  try
    frmCadastrarEspecialidades.ShowModal;
  finally
  FreeAndNil(frmCadastrarEspecialidades);

  end;
end;

procedure TunFrmPrincipal.Alunos1Click(Sender: TObject);
begin
  frmCadastrarAluno := TfrmCadastrarAluno.Create(nil);
  try
    frmCadastrarAluno.ShowModal;
  finally
  FreeAndNil(frmCadastrarAluno);
  end;

end;

procedure TunFrmPrincipal.datetimeTimer(Sender: TObject);
begin
  lblDataHora.Caption := DateTimetoStr(now);
end;



procedure TunFrmPrincipal.Escola1Click(Sender: TObject);
begin
  frmExcluirEscola := TfrmExcluirEscola.Create(nil);
  try
    frmExcluirEscola.ShowModal;
  finally
  FreeAndNil(frmExcluirEscola);
  end;
end;

procedure TunFrmPrincipal.Escolas1Click(Sender: TObject);
begin
  frmCadastrarEscola := TfrmCadastrarEscola.Create(nil);
  try
    frmCadastrarEscola.ShowModal;
    frmCadastrarEscola.tbDados.TabVisible := True;

  finally
    FreeAndNil(frmCadastrarEscola);
  end;
end;


procedure TunFrmPrincipal.FormShow(Sender: TObject);
begin
  uDmConexao.dmConexao.cdsEscola.active := True;
end;

procedure TunFrmPrincipal.Funcionarios1Click(Sender: TObject);
begin
frmCadastrarFuncionario := TfrmCadastrarFuncionario.Create(nil);
  try
    frmCadastrarFuncionario.ShowModal;
  finally
  FreeAndNil(frmCadastrarFuncionario);
  end;
end;

procedure TunFrmPrincipal.Series1Click(Sender: TObject);
begin
frmCadastrarSerie := TfrmCadastrarSerie.Create(nil);
  try
    frmCadastrarSerie.ShowModal;
  finally
  FreeAndNil(frmCadastrarSerie);
  end;
end;

end.
