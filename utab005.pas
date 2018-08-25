unit utab005;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TcProduto = class(TForm)
    cProdutos: TPanel;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    campo: TDBEdit;
    data: TDBEdit;
    procedure dataChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cProduto: TcProduto;

implementation

{$R *.dfm}

uses uDados, utab004;

procedure TcProduto.dataChange(Sender: TObject);
var
  dia, mes, ano : Word;
  data : TDateTime;
begin
  ano := 2015;
  mes := 2;
  dia := 15;
  data := EncodeDate(ano, mes, dia);
end;

end.
