unit utab004;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns,
  System.Actions, Vcl.ActnList;

type
  TcGrupo = class(TForm)
    cGrupo: TPanel;
    btnProdutos: TBitBtn;
    btnGrupos: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    campo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cGrupo: TcGrupo;

implementation

{$R *.dfm}

uses uDados;



procedure TcGrupo.FormShow(Sender: TObject);
begin
  dtModule.fdQueryGrupo.Open
end;

end.
