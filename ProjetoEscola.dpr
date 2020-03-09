program ProjetoEscola;

uses
  Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {unFrmPrincipal},
  uFrmCadastrarEscola in 'view\uFrmCadastrarEscola.pas' {frmCadastrarEscola},
  uEscolaModel in 'model\uEscolaModel.pas',
  uDmConexao in 'dao\uDmConexao.pas' {dmConexao: TDataModule},
  uEscolaController in 'controller\uEscolaController.pas',
  uFrmExcluirEscola in 'view\uFrmExcluirEscola.pas' {frmExcluirEscola},
  uEspecialidadeModel in 'model\uEspecialidadeModel.pas',
  uEspecialidadeController in 'controller\uEspecialidadeController.pas',
  uFrmCadastrarEspecialidades in 'view\uFrmCadastrarEspecialidades.pas' {frmCadastrarEspecialidades},
  ufrmCadastrarFuncionario in 'view\ufrmCadastrarFuncionario.pas' {frmCadastrarFuncionario},
  uFuncionarioModel in 'model\uFuncionarioModel.pas',
  uFrmCadastrarAluno in 'view\uFrmCadastrarAluno.pas' {frmCadastrarAluno},
  uFrmCadastrarSerie in 'view\uFrmCadastrarSerie.pas' {frmCadastrarSerie},
  uFuncionarioController in 'controller\uFuncionarioController.pas',
  uDmFuncionario in 'dao\uDmFuncionario.pas' {dmFuncionario: TDataModule},
  uDmAluno in 'dao\uDmAluno.pas' {dmAluno: TDataModule},
  uDmSerie in 'dao\uDmSerie.pas' {dmSerie: TDataModule},
  uSerieModel in 'model\uSerieModel.pas',
  uAlunoModel in 'model\uAlunoModel.pas',
  uSerieController in 'controller\uSerieController.pas',
  uAlunoController in 'controller\uAlunoController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TunFrmPrincipal, unFrmPrincipal);
//  Application.CreateForm(TfrmCadastrarEspecialidades, frmCadastrarEspecialidades);
//  application.CreateForm(TfrmExcluirEscola, frmExcluirEscola);
//  Application.CreateForm(TfrmCadastrarEspecialidades, frmCadastrarEspecialidades);
//  Application.CreateForm(TfrmCadastrarFuncionario, frmCadastrarFuncionario);
//  Application.CreateForm(TfrmCadastrarAluno, frmCadastrarAluno);
//  Application.CreateForm(TfrmCadastrarSerie, frmCadastrarSerie);
//  Application.CreateForm(TfrmCadastrarEscola, frmCadastrarEscola);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmFuncionario, dmFuncionario);
  Application.CreateForm(TdmAluno, dmAluno);
  Application.CreateForm(TdmSerie, dmSerie);
  Application.Run;
end.
