object cAtualiza: TcAtualiza
  Left = 0
  Top = 0
  Caption = 'utab006 - Atualiza'#231#227'o de Pre'#231'os'
  ClientHeight = 369
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rgOpcao: TRadioGroup
    Left = 0
    Top = -3
    Width = 561
    Height = 45
    Align = alCustom
    Caption = 'Op'#231#245'es'
    Columns = 2
    Items.Strings = (
      'Aumentar'
      'Diminuir')
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 0
    Top = 40
    Width = 561
    Height = 136
    Align = alCustom
    TabOrder = 1
    object lbl1: TLabel
      Left = 17
      Top = 48
      Width = 54
      Height = 13
      Caption = 'Grupo Final'
    end
    object lbl: TLabel
      Left = 17
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Grupo Inicial'
    end
    object lbl2: TLabel
      Left = 17
      Top = 88
      Width = 26
      Height = 13
      Caption = 'Fator'
    end
    object edtGrupoIni: TEdit
      Left = 17
      Top = 25
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtGrupoFinal: TEdit
      Left = 17
      Top = 63
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtFator: TEdit
      Left = 17
      Top = 102
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object grdProdutos: TDBGrid
    Left = 0
    Top = 169
    Width = 561
    Height = 152
    Align = alCustom
    DataSource = dtModule.dtDadosProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO_CODIGO'
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_VALOR'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 315
        Visible = True
      end>
  end
  object pnl4: TPanel
    Left = -1
    Top = 317
    Width = 563
    Height = 52
    Align = alCustom
    TabOrder = 3
  end
end
