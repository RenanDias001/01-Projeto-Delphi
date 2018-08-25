object dtModule: TdtModule
  OldCreateOrder = False
  Height = 433
  Width = 516
  object fdConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Renan\Banco de dados\banco.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'MonitorBy=Custom'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 16
  end
  object fdQueryGrupo: TFDQuery
    Active = True
    Connection = fdConnection
    UpdateObject = fdUpdateSQLGrupo
    SQL.Strings = (
      'SELECT * FROM GRUPO')
    Left = 40
    Top = 88
  end
  object dtDadosGrupo: TDataSource
    DataSet = fdQueryGrupo
    Left = 40
    Top = 152
  end
  object fdQueryProdutos: TFDQuery
    Active = True
    Connection = fdConnection
    UpdateObject = fdUpdateSQLProdutos
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 168
    Top = 88
  end
  object dtDadosProdutos: TDataSource
    DataSet = fdQueryProdutos
    Left = 168
    Top = 160
  end
  object fdUpdateSQLGrupo: TFDUpdateSQL
    Connection = fdConnection
    InsertSQL.Strings = (
      'INSERT INTO GRUPO'
      '(GRU_CODIGO, GRU_DESCRICAO)'
      'VALUES (:NEW_GRU_CODIGO, :NEW_GRU_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE GRUPO'
      
        'SET GRU_CODIGO = :NEW_GRU_CODIGO, GRU_DESCRICAO = :NEW_GRU_DESCR' +
        'ICAO'
      'WHERE GRU_CODIGO = :OLD_GRU_CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM GRUPO'
      'WHERE GRU_CODIGO = :OLD_GRU_CODIGO')
    FetchRowSQL.Strings = (
      'SELECT GRU_CODIGO, GRU_DESCRICAO'
      'FROM GRUPO'
      'WHERE GRU_CODIGO = :GRU_CODIGO')
    Left = 48
    Top = 232
  end
  object fdUpdateSQLProdutos: TFDUpdateSQL
    Connection = fdConnection
    Left = 176
    Top = 240
  end
  object fdDialGrupo: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 56
    Top = 304
  end
  object fdDialProdutos: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 200
    Top = 304
  end
  object fdPhysFBDriverGrupo: TFDPhysFBDriverLink
    Left = 408
    Top = 376
  end
  object fdPhysFBDriverProdutos: TFDPhysFBDriverLink
    Left = 184
    Top = 360
  end
  object fdMoniCustomClientLink: TFDMoniCustomClientLink
    Left = 352
    Top = 240
  end
  object actionList: TActionList
    Left = 400
    Top = 112
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 392
    Top = 320
  end
end
