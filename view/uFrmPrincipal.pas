unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, uFrmCadastrarEscola, Grids, DBGrids,
  DBCtrls, Mask;

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
    procedure FormShow(Sender: TObject);
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

procedure TunFrmPrincipal.datetimeTimer(Sender: TObject);
begin
  lblDataHora.Caption := DateTimetoStr(now);
end;



procedure TunFrmPrincipal.Escolas1Click(Sender: TObject);
begin
  frmCadastrarEscola := TfrmCadastrarEscola.Create(nil);
  try
    frmCadastrarEscola.ShowModal;
  finally
    FreeAndNil(frmCadastrarEscola)
  end;
end;


procedure TunFrmPrincipal.FormShow(Sender: TObject);
begin
  uDmConexao.dmConexao.cdsEscola.active := True;
end;

end.
