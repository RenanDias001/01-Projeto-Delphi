program Renan;

uses
  Vcl.Forms,
  uTab001 in 'uTab001.pas' {fMenu},
  utab002 in 'utab002.pas' {pGrupo},
  utab003 in 'utab003.pas' {pProdutos},
  utab004 in 'utab004.pas' {cGrupo},
  utab005 in 'utab005.pas' {cProduto},
  uDados in 'uDados.pas' {dtModule: TDataModule},
  utab006 in 'utab006.pas' {cAtualiza},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TdtModule, dtModule);
  Application.Run;
end.
