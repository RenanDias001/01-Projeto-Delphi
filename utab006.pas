unit utab006;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TcAtualiza = class(TForm)
    rgOpcao: TRadioGroup;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl: TLabel;
    lbl2: TLabel;
    edtGrupoIni: TEdit;
    edtGrupoFinal: TEdit;
    edtFator: TEdit;
    grdProdutos: TDBGrid;
    pnl4: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cAtualiza: TcAtualiza;

implementation

{$R *.dfm}

uses uDados;

end.
