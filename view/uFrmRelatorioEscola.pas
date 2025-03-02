unit uFrmRelatorioEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, uDmConexao, WideStrings, DB, SqlExpr, DBClient, Provider, FMTBcd,
  DateUtils, StrUtils, SimpleDS, jpeg;

type
  TTRelatorioEscola = class(TForm)
    RLReport1: TRLReport;
    qryEscola: TSQLQuery;
    dsEscola: TDataSource;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    qryEscolaESCCOD: TIntegerField;
    qryEscolaESCNOM: TStringField;
    qryEscolaESCDES: TStringField;
    RLImage1: TRLImage;
    RLMemo1: TRLMemo;
    qryEscolaESCDATCAD: TWideStringField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand5: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TRelatorioEscola: TTRelatorioEscola;

implementation

{$R *.dfm}

end.
