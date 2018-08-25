unit utab002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TpGrupo = class(TForm)
    Panel1: TPanel;
    btnAlterar: TBitBtn;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    DBGrid1: TDBGrid;
    btnSair: TBitBtn;
    pGrupo: TEdit;
    Label1: TLabel;
    rbCodigo: TRadioButton;
    rbNome: TRadioButton;
    Panel2: TPanel;
    Label2: TLabel;
    ds: TDataSource;
    qryProd: TFDQuery;
    qryAux: TFDQuery;
    procedure pGrupoChange(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        grupo_codigo :Integer;
  end;

var
  pGrupo: TpGrupo;

implementation

{$R *.dfm}

uses uDados, utab005, utab004, uTab001, utab003;



procedure TpGrupo.btnAdicionarClick(Sender: TObject);
begin
    try
      cGrupo := TcGrupo.Create(Self);
      cGrupo.ShowModal;
    finally
     FreeAndNil(cGrupo)
end;

end;

procedure TpGrupo.btnAlterarClick(Sender: TObject);
begin
try
    cGrupo := TcGrupo.Create(Self);
    cGrupo.ShowModal;
  finally
    FreeAndNil(cGrupo);
  end;
end;

procedure TpGrupo.btnRemoverClick(Sender: TObject);
begin
try
    if application.MessageBox(Pchar('Deseja realmente excluir o Grupo: '+IntToStr(qryProd.FieldByName('gru_codigo').AsInteger)+'-'+qryProd.FieldByName('gru_descricao').AsString+' ?'),'',MB_ICONQUESTION+MB_YESNO) = IdNo then
      exit;
    qryAux.Close;
    qryAux.SQL.Clear;
    qryAux.SQL.Add('delete from grupo where gru_codigo = ' + IntToStr(qryProd.FieldByName('gru_codigo').AsInteger) + ' ');
    qryAux.ExecSQL;

  except
    on e : exception do
    begin
      Application.MessageBox(PChar(e.Message),'Information',MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TpGrupo.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TpGrupo.pGrupoChange(Sender: TObject);
begin
  dtModule.fdQueryGrupo.Close;
  dtModule.fdQueryGrupo.SQL.Clear;
  dtModule.fdQueryGrupo.SQL.Add('select * from grupo where gru_descricao like :fnome ');
  dtModule.fdQueryGrupo.ParamByName('fnome').Value := pGrupo.Text + '%';
  dtModule.fdQueryGrupo.Open;


end;

end.
