unit uFrmCadastrarEspecialidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uEspecialidadeModel, uEspecialidadeController;

type
  TfrmCadastrarEspecialidades = class(TForm)
    Label1: TLabel;
    lbledtEspecialidadeDes: TLabeledEdit;
    btnCadastrarEspecialidade: TButton;
    procedure btnCadastrarEspecialidadeClick(Sender: TObject);
    procedure btnCancelarCadastroClick(Sender: TObject);

  private
    procedure InserirEspecialidade;
    public
    { Public declarations }
  end;

var
  frmCadastrarEspecialidades: TfrmCadastrarEspecialidades;

implementation

procedure TfrmCadastrarEspecialidades.btnCancelarCadastroClick(Sender: TObject);
begin
  frmCadastrarEspecialidades.Close;
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

procedure TfrmCadastrarEspecialidades.btnCadastrarEspecialidadeClick(Sender: TObject);
begin
InserirEspecialidade;
  if MessageDlg('Especialidade adicionada com sucesso.'+#13+#10+'Deseja adicionar outra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      TLabeledEdit(lbledtEspecialidadeDes).Clear;
      end
  else
    frmCadastrarEspecialidades.Close;
end;


{$R *.dfm}

end.
