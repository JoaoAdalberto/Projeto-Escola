program ProjetoEscola;

uses
  Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {unFrmPrincipal},
  uFrmCadastrarEscola in 'view\uFrmCadastrarEscola.pas' {frmCadastrarEscola};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TunFrmPrincipal, unFrmPrincipal);
  Application.CreateForm(TfrmCadastrarEscola, frmCadastrarEscola);
  Application.Run;
end.
