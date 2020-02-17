unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, uFrmCadastrarEscola;

type
  TunFrmPrincipal = class(TForm)
    lblSCEFA: TLabel;
    Label1: TLabel;
    mainmenPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Funcionrios1: TMenuItem;
    Alunos1: TMenuItem;
    Escolas1: TMenuItem;
    Series1: TMenuItem;
    Disciplinas1: TMenuItem;
    Cargos1: TMenuItem;
    datetime: TTimer;
    lblDataHora: TLabel;
    procedure datetimeTimer(Sender: TObject);
    procedure Escolas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unFrmPrincipal: TunFrmPrincipal;

implementation

{$R *.dfm}

procedure TunFrmPrincipal.datetimeTimer(Sender: TObject);
begin
  lblDataHora.Caption := DateTimetoStr(now);
end;

procedure TunFrmPrincipal.Escolas1Click(Sender: TObject);
var
  frmCadastrarEscola : TFrmCadastrarEscola;
begin
  frmCadastrarEscola.Show;
end;

end.
