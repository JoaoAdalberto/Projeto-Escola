unit uFrmExcluirEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DBCtrls, DB, DBGrids, uEscolaController, uEscolaModel, uDmConexao,
  ComCtrls;

type
  TfrmExcluirEscola = class(TForm)
    lblExcluirEscola: TLabel;
    lbledtCodigoEscola: TLabeledEdit;
    lblNome: TLabel;
    lblNomeEscola: TLabel;
    btnExcluir: TButton;
    procedure btnExcluirClick(Sender: TObject);
    procedure lbledtCodigoEscolaChange(Sender: TObject);
  private
    { Private declarations }
    procedure Excluir;
  public
    { Public declarations }
  end;

var
  frmExcluirEscola: TfrmExcluirEscola;

implementation

procedure TfrmExcluirEscola.btnExcluirClick(Sender: TObject);
begin
  Excluir;
  if MessageDlg('Escola excluída com sucesso.'+#13+#10+'Deseja excluir outra?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      TLabeledEdit(lbledtCodigoEscola).Clear;
      end
  else
    frmExcluirEscola.Close;

end;

procedure TfrmExcluirEscola.Excluir;
var
  oEscolaController : TEscolaController;
  sError: string;
  CodigoEscolaExcluir : integer;
begin
  CodigoEscolaExcluir  := StrToInt(lbledtCodigoEscola.Text);
  oEscolaController := TEscolaController.Create;
  oEscolaController.Excluir(CodigoEscolaExcluir, sError);



  //try
//    if (DmConexao.cdsEscola.Active) and (DmConexao.cdsEscola.RecordCount > 0) then
//    begin
//      if MessageDlg('Deseja realmente excluir esta Escola?', mtConfirmation, [mbYes, mbNo], 0) = IDYES then
//      begin
//        if oEscolaController.Excluir(CodigoEscolaExcluir, sError) = False then
//          raise Exception.Create(sError);
//      end
//    end
//    else
//      raise Exception.Create('Não há registro para ser excluído!');
//
//  finally
//end;
end;



procedure TfrmExcluirEscola.lbledtCodigoEscolaChange(Sender: TObject);
begin

end;

{$R *.dfm}

end.
