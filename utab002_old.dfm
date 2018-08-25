object pGrupo: TpGrupo
  Left = 0
  Top = 0
  Caption = 'utab002 - Pesquisa de Grupo'
  ClientHeight = 325
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 122
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 61
      Width = 42
      Height = 13
      Caption = 'Pesquisa'
    end
    object Panel2: TPanel
      Left = 265
      Top = 48
      Width = 162
      Height = 53
      TabOrder = 7
      object Label2: TLabel
        Left = 16
        Top = 6
        Width = 96
        Height = 13
        Caption = 'Op'#231#245'es de Consulta'
      end
    end
    object btnAlterar: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 0
    end
    object btnAdicionar: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Adicionar'
      TabOrder = 1
    end
    object btnRemover: TBitBtn
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Remover'
      TabOrder = 2
    end
    object btnSair: TBitBtn
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 3
    end
    object pGrupo: TEdit
      Left = 16
      Top = 80
      Width = 243
      Height = 21
      TabOrder = 4
      OnChange = pGrupoChange
    end
    object rbCodigo: TRadioButton
      Left = 281
      Top = 73
      Width = 48
      Height = 17
      Caption = 'Codigo'
      TabOrder = 5
    end
    object rbNome: TRadioButton
      Left = 370
      Top = 73
      Width = 47
      Height = 17
      Caption = 'Nome'
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 433
    Height = 209
    DataSource = dtModule.dtDadosGrupo
    Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clSkyBlue
        Expanded = False
        FieldName = 'GRU_CODIGO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRU_DESCRICAO'
        Width = 250
        Visible = True
      end>
  end
end
