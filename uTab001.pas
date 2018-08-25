unit uTab001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TfMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Grupos1: TMenuItem;
    Produtos1: TMenuItem;
    Processos1: TMenuItem;
    Atualizaodepreos1: TMenuItem;
    AnlisedosProdutoscadastrados1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    btnProdutos: TBitBtn;
    btnAtualizacao: TBitBtn;
    btnGrupos: TBitBtn;
    btnSair: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure btnGruposClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnAtualizacaoClick(Sender: TObject);
    procedure Atualizaodepreos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

{$R *.dfm}

uses uDados, utab002, utab003, utab004, utab005, utab006;

procedure TfMenu.Atualizaodepreos1Click(Sender: TObject);
begin
try
    cAtualiza := TcAtualiza.Create(Self);
    cAtualiza.ShowModal;
  finally
    FreeAndNil(cAtualiza);
  end;
end;

procedure TfMenu.btnAtualizacaoClick(Sender: TObject);
begin
try
    cAtualiza := TcAtualiza.Create(Self);
    cAtualiza.ShowModal;
  finally
    FreeAndNil(cAtualiza);
  end;
end;

procedure TfMenu.btnGruposClick(Sender: TObject);
begin
  pGrupo := TpGrupo.Create(self);
  pGrupo.ShowModal;
end;

procedure TfMenu.btnProdutosClick(Sender: TObject);
begin
  pProdutos := TpProdutos.Create(self);
  pProdutos.ShowModal;
end;

procedure TfMenu.btnSairClick(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente sair', 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
Application.Terminate
else
abort
end;

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Deseja realmente sair', 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
Application.Terminate
else
abort
end;

procedure TfMenu.Grupos1Click(Sender: TObject);
begin
  cGrupo := TcGrupo.Create(Self);
  cGrupo.ShowModal;

end;

procedure TfMenu.Produtos1Click(Sender: TObject);
begin
  cProduto := TcProduto.Create(self);
  cProduto.ShowModal;
end;

procedure TfMenu.Sair1Click(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente sair', 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
Application.Terminate
else
abort

end;

end.
