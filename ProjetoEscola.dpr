program ProjetoEscola;

uses
  Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {unFrmPrincipal},
  uFrmCadastrarEscola in 'view\uFrmCadastrarEscola.pas' {frmCadastrarEscola},
  uEscolaModel in 'model\uEscolaModel.pas',
  uDmConexao in 'dao\uDmConexao.pas' {dmConexao: TDataModule},
  uEscolaController in 'controller\uEscolaController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TunFrmPrincipal, unFrmPrincipal);
  Application.CreateForm(TfrmCadastrarEscola, frmCadastrarEscola);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
