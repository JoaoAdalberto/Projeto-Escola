program ProjetoEscola;

uses
  Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {unFrmPrincipal},
  uFrmCadastrarEscola in 'view\uFrmCadastrarEscola.pas' {frmCadastrarEscola},
  uEscolaModel in 'model\uEscolaModel.pas',
  uDmConexao in 'dao\uDmConexao.pas' {dmConexao: TDataModule},
  uEscolaController in 'controller\uEscolaController.pas',
  uFrmExcluirEscola in 'view\uFrmExcluirEscola.pas' {frmExcluirEscola},
  uCargoModel in 'model\uCargoModel.pas',
  uCargoController in 'controller\uCargoController.pas',
  uFrmCadastrarCargo in 'view\uFrmCadastrarCargo.pas' {frmCadastrarCargo},
  ufrmCadastrarFuncionario in 'view\ufrmCadastrarFuncionario.pas' {frmCadastrarFuncionario},
  uFuncionarioModel in 'model\uFuncionarioModel.pas',
  uFrmCadastrarAluno in 'view\uFrmCadastrarAluno.pas' {frmCadastrarAluno},
  uFrmCadastrarSerie in 'view\uFrmCadastrarSerie.pas' {frmCadastrarSerie};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TunFrmPrincipal, unFrmPrincipal);
  Application.CreateForm(TfrmExcluirEscola, frmExcluirEscola);
  Application.CreateForm(TfrmCadastrarCargo, frmCadastrarCargo);
  Application.CreateForm(TfrmCadastrarFuncionario, frmCadastrarFuncionario);
  Application.CreateForm(TfrmCadastrarAluno, frmCadastrarAluno);
  Application.CreateForm(TfrmCadastrarSerie, frmCadastrarSerie);
  //Application.CreateForm(TfrmCadastrarEscola, frmCadastrarEscola);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
