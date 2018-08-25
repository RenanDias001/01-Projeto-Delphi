unit utab003;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TpProdutos = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnAlterar: TBitBtn;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    btnSair: TBitBtn;
    pProduto: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    rbCodigo: TRadioButton;
    RadioButton1: TRadioButton;
    procedure pProdutoChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pProdutos: TpProdutos;

implementation

{$R *.dfm}

uses uDados, utab002, utab004, utab005;

procedure TpProdutos.btnAdicionarClick(Sender: TObject);
begin
  try
      cProduto := TcProduto.Create(Self);
      cProduto.ShowModal;
    finally
     FreeAndNil(cProduto)
end;
end;

procedure TpProdutos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TpProdutos.pProdutoChange(Sender: TObject);
begin
  dtModule.fdQueryProdutos.Close;
  dtModule.fdQueryProdutos.SQL.Clear;
  dtModule.fdQueryProdutos.SQL.Add('select * from produto where pro_descricao like :n ');
  dtModule.fdQueryProdutos.ParamByName('n').AsString := pProduto.Text + '%';
  dtModule.fdQueryProdutos.Open;
end;


end.
