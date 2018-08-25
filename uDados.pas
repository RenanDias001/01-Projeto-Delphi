unit uDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Async, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Moni.Base, FireDAC.Moni.Custom, Vcl.DBActns,
  System.Actions, Vcl.ActnList;

type
  TdtModule = class(TDataModule)
    fdConnection: TFDConnection;
    fdQueryGrupo: TFDQuery;
    dtDadosGrupo: TDataSource;
    fdQueryProdutos: TFDQuery;
    dtDadosProdutos: TDataSource;
    fdUpdateSQLGrupo: TFDUpdateSQL;
    fdUpdateSQLProdutos: TFDUpdateSQL;
    fdDialGrupo: TFDGUIxAsyncExecuteDialog;
    fdDialProdutos: TFDGUIxAsyncExecuteDialog;
    fdPhysFBDriverGrupo: TFDPhysFBDriverLink;
    fdPhysFBDriverProdutos: TFDPhysFBDriverLink;
    fdMoniCustomClientLink: TFDMoniCustomClientLink;
    actionList: TActionList;
    DatasetPost1: TDataSetPost;
    DatasetEdit1: TDataSetEdit;
    DatasetCancel1: TDataSetCancel;
    DatasetInsert1: TDataSetInsert;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtModule: TdtModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses utab005, utab004;

{$R *.dfm}



end.
