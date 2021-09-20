object frmMain: TfrmMain
  Left = 0
  Top = 0
  ClientHeight = 577
  ClientWidth = 1221
  Caption = 'Agenda de Contatos'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnActivate = UniFormActivate
  OnKeyDown = UniFormKeyDown
  BorderIcons = []
  KeyPreview = True
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 96
    Top = -3
    Width = 29
    Height = 13
    Visible = False
    Caption = 'NOVO'
    TabOrder = 0
  end
  object UniPanel3: TUniPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 550
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    BorderStyle = ubsNone
    object UniPanel5: TUniPanel
      Left = 0
      Top = 0
      Width = 811
      Height = 32
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      BorderStyle = ubsFrameLowered
      object BT_B: TUniSpeedButton
        Left = 24
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra B'
        ShowHint = True
        ParentShowHint = False
        Caption = 'B'
        ParentColor = False
        Color = clWindow
        TabOrder = 1
        OnClick = FiltrarPorLetra
      end
      object BT_C: TUniSpeedButton
        Left = 47
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra C '
        ShowHint = True
        ParentShowHint = False
        Caption = 'C'
        ParentColor = False
        Color = clWindow
        TabOrder = 2
        OnClick = FiltrarPorLetra
      end
      object BT_E: TUniSpeedButton
        Left = 95
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra E'
        ShowHint = True
        ParentShowHint = False
        Caption = 'E'
        ParentColor = False
        Color = clWindow
        TabOrder = 3
        OnClick = FiltrarPorLetra
      end
      object BT_D: TUniSpeedButton
        Left = 71
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra D'
        ShowHint = True
        ParentShowHint = False
        Caption = 'D'
        ParentColor = False
        Color = clWindow
        TabOrder = 4
        OnClick = FiltrarPorLetra
      end
      object BT_I: TUniSpeedButton
        Left = 189
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra I'
        ShowHint = True
        ParentShowHint = False
        Caption = 'I'
        ParentColor = False
        Color = clWindow
        TabOrder = 5
        OnClick = FiltrarPorLetra
      end
      object BT_H: TUniSpeedButton
        Left = 166
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra H'
        ShowHint = True
        ParentShowHint = False
        Caption = 'H'
        ParentColor = False
        Color = clWindow
        TabOrder = 6
        OnClick = FiltrarPorLetra
      end
      object BT_G: TUniSpeedButton
        Left = 142
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra G'
        ShowHint = True
        ParentShowHint = False
        Caption = 'G'
        ParentColor = False
        Color = clWindow
        TabOrder = 7
        OnClick = FiltrarPorLetra
      end
      object BT_F: TUniSpeedButton
        Left = 118
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra F'
        ShowHint = True
        ParentShowHint = False
        Caption = 'F'
        ParentColor = False
        Color = clWindow
        TabOrder = 8
        OnClick = FiltrarPorLetra
      end
      object BT_Q: TUniSpeedButton
        Left = 379
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra Q'
        ShowHint = True
        ParentShowHint = False
        Caption = 'Q'
        ParentColor = False
        Color = clWindow
        TabOrder = 9
        OnClick = FiltrarPorLetra
      end
      object BT_P: TUniSpeedButton
        Left = 355
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra P'
        ShowHint = True
        ParentShowHint = False
        Caption = 'P'
        ParentColor = False
        Color = clWindow
        TabOrder = 10
        OnClick = FiltrarPorLetra
      end
      object BT_O: TUniSpeedButton
        Left = 331
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra O'
        ShowHint = True
        ParentShowHint = False
        Caption = 'O'
        ParentColor = False
        Color = clWindow
        TabOrder = 11
        OnClick = FiltrarPorLetra
      end
      object BT_N: TUniSpeedButton
        Left = 308
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra N'
        ShowHint = True
        ParentShowHint = False
        Caption = 'N'
        ParentColor = False
        Color = clWindow
        TabOrder = 12
        OnClick = FiltrarPorLetra
      end
      object BT_M: TUniSpeedButton
        Left = 284
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra M'
        ShowHint = True
        ParentShowHint = False
        Caption = 'M'
        ParentColor = False
        Color = clWindow
        TabOrder = 13
        OnClick = FiltrarPorLetra
      end
      object BT_L: TUniSpeedButton
        Left = 260
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra L'
        ShowHint = True
        ParentShowHint = False
        Caption = 'L'
        ParentColor = False
        Color = clWindow
        TabOrder = 14
        OnClick = FiltrarPorLetra
      end
      object BT_K: TUniSpeedButton
        Left = 237
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra K'
        ShowHint = True
        ParentShowHint = False
        Caption = 'K'
        ParentColor = False
        Color = clWindow
        TabOrder = 15
        OnClick = FiltrarPorLetra
      end
      object BT_J: TUniSpeedButton
        Left = 213
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra J'
        ShowHint = True
        ParentShowHint = False
        Caption = 'J'
        ParentColor = False
        Color = clWindow
        TabOrder = 16
        OnClick = FiltrarPorLetra
      end
      object BT_Z: TUniSpeedButton
        Left = 592
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra Z'
        ShowHint = True
        ParentShowHint = False
        Caption = 'Z'
        ParentColor = False
        Color = clWindow
        TabOrder = 17
        OnClick = FiltrarPorLetra
      end
      object BT_Y: TUniSpeedButton
        Left = 568
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra Y'
        ShowHint = True
        ParentShowHint = False
        Caption = 'Y'
        ParentColor = False
        Color = clWindow
        TabOrder = 18
        OnClick = FiltrarPorLetra
      end
      object BT_X: TUniSpeedButton
        Left = 544
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra X'
        ShowHint = True
        ParentShowHint = False
        Caption = 'X'
        ParentColor = False
        Color = clWindow
        TabOrder = 19
        OnClick = FiltrarPorLetra
      end
      object BT_W: TUniSpeedButton
        Left = 521
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra W'
        ShowHint = True
        ParentShowHint = False
        Caption = 'W'
        ParentColor = False
        Color = clWindow
        TabOrder = 20
        OnClick = FiltrarPorLetra
      end
      object BT_V: TUniSpeedButton
        Left = 497
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra V'
        ShowHint = True
        ParentShowHint = False
        Caption = 'V'
        ParentColor = False
        Color = clWindow
        TabOrder = 21
        OnClick = FiltrarPorLetra
      end
      object BT_U: TUniSpeedButton
        Left = 473
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra U'
        ShowHint = True
        ParentShowHint = False
        Caption = 'U'
        ParentColor = False
        Color = clWindow
        TabOrder = 22
        OnClick = FiltrarPorLetra
      end
      object BT_T: TUniSpeedButton
        Left = 450
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra T'
        ShowHint = True
        ParentShowHint = False
        Caption = 'T'
        ParentColor = False
        Color = clWindow
        TabOrder = 23
        OnClick = FiltrarPorLetra
      end
      object BT_S: TUniSpeedButton
        Left = 426
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra S'
        ShowHint = True
        ParentShowHint = False
        Caption = 'S'
        ParentColor = False
        Color = clWindow
        TabOrder = 24
        OnClick = FiltrarPorLetra
      end
      object BT_R: TUniSpeedButton
        Left = 402
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra R'
        ShowHint = True
        ParentShowHint = False
        Caption = 'R'
        ParentColor = False
        Color = clWindow
        TabOrder = 25
        OnClick = FiltrarPorLetra
      end
      object BT_A: TUniSpeedButton
        Left = 1
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtra somente nomes come'#231'ados com a letra A'
        ShowHint = True
        ParentShowHint = False
        Caption = 'A'
        ParentColor = False
        Color = clWindow
        TabOrder = 27
        OnClick = FiltrarPorLetra
      end
      object bt_All: TUniSpeedButton
        Left = 616
        Top = 2
        Width = 38
        Height = 22
        Hint = 'Mostrar todos os registros'
        ShowHint = True
        ParentShowHint = False
        Caption = 'Todos'
        ParentColor = False
        Color = clWindow
        TabOrder = 28
        OnClick = FiltrarPorLetra
      end
      object UniPanel6: TUniPanel
        Left = 507
        Top = 2
        Width = 302
        Height = 28
        Align = alRight
        Anchors = [akTop, akRight, akBottom]
        TabOrder = 26
        BorderStyle = ubsNone
        object lblPesquisa: TUniLabel
          Left = 0
          Top = 0
          Width = 50
          Height = 13
          Caption = 'Pesquisa'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 2
        end
        object edSearch: TUniEdit
          Left = 52
          Top = 0
          Width = 250
          Height = 28
          CharCase = ecUpperCase
          MaxLength = 70
          ParentFont = False
          Font.Height = -13
          Align = alRight
          Anchors = [akTop, akRight, akBottom]
          TabOrder = 0
          OnChange = edSearchChange
          OnKeyPress = edSearchKeyPress
        end
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 32
      Width = 811
      Height = 518
      Hint = 'Duplo click para mostrar mais detalhes...'
      DataSource = ddsConsMain
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTitleClick]
      ReadOnly = True
      WebOptions.PageSize = 100
      LoadMask.Message = 'Loading data...'
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      TabStop = False
      Summary.Enabled = True
      OnDblClick = UniDBGrid1DblClick
      OnTitleClick = UniDBGrid1TitleClick
      Columns = <
        item
          FieldName = 'nome'
          Title.Caption = 'Unidade Policial'
          Width = 320
        end
        item
          FieldName = 'fone1'
          Title.Caption = 'Delegado'
          Width = 95
        end
        item
          FieldName = 'celular1'
          Title.Caption = 'Celular Delegado'
          Width = 95
        end
        item
          FieldName = 'celular2'
          Title.Caption = 'Celular'
          Width = 95
        end
        item
          FieldName = 'fone2'
          Title.Caption = 'Perman'#234'ncia'
          Width = 90
        end
        item
          FieldName = 'fone3'
          Title.Caption = 'Fax'
          Width = 90
        end
        item
          FieldName = 'endereco'
          Title.Caption = 'Endere'#231'o'
          Width = 295
        end
        item
          FieldName = 'numero'
          Title.Caption = 'N'#250'mero'
          Width = 60
        end>
    end
  end
  object pnlSearch: TUniPanel
    Left = 811
    Top = 0
    Width = 410
    Height = 550
    Visible = False
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 2
    object UniDBEdit1: TUniDBEdit
      Left = 8
      Top = 19
      Width = 385
      Height = 22
      DataField = 'nome'
      DataSource = ddsConsMain
      TabOrder = 1
      ReadOnly = True
      BorderStyle = ubsInset
    end
    object UniLabel2: TUniLabel
      Left = 13
      Top = 4
      Width = 73
      Height = 13
      Caption = 'Unidade Policial'
      TabOrder = 2
    end
    object UniGroupBox1: TUniGroupBox
      Left = 6
      Top = 42
      Width = 400
      Height = 190
      Caption = 'Endere'#231'o'
      TabOrder = 3
      object UniDBEdit4: TUniDBEdit
        Left = 7
        Top = 32
        Width = 312
        Height = 22
        DataField = 'endereco'
        DataSource = ddsConsMain
        TabOrder = 1
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniDBEdit6: TUniDBEdit
        Left = 325
        Top = 31
        Width = 57
        Height = 22
        DataField = 'numero'
        DataSource = ddsConsMain
        TabOrder = 2
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniDBEdit7: TUniDBEdit
        Left = 7
        Top = 76
        Width = 376
        Height = 22
        DataField = 'complemento'
        DataSource = ddsConsMain
        TabOrder = 3
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniDBEdit8: TUniDBEdit
        Left = 7
        Top = 117
        Width = 299
        Height = 22
        DataField = 'bairro'
        DataSource = ddsConsMain
        TabOrder = 4
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniDBEdit9: TUniDBEdit
        Left = 313
        Top = 117
        Width = 70
        Height = 22
        DataField = 'cep'
        DataSource = ddsConsMain
        TabOrder = 5
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniDBEdit10: TUniDBEdit
        Left = 7
        Top = 156
        Width = 316
        Height = 22
        DataField = 'cidade'
        DataSource = ddsConsMain
        TabOrder = 6
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniDBEdit11: TUniDBEdit
        Left = 328
        Top = 156
        Width = 54
        Height = 22
        DataField = 'uf'
        DataSource = ddsConsMain
        TabOrder = 7
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniLabel5: TUniLabel
        Left = 7
        Top = 17
        Width = 46
        Height = 13
        Caption = 'Rua / Av.'
        TabOrder = 8
      end
      object UniLabel6: TUniLabel
        Left = 325
        Top = 17
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        TabOrder = 9
      end
      object UniLabel8: TUniLabel
        Left = 7
        Top = 101
        Width = 28
        Height = 13
        Caption = 'Bairro'
        TabOrder = 10
      end
      object UniLabel9: TUniLabel
        Left = 313
        Top = 101
        Width = 19
        Height = 13
        Caption = 'CEP'
        TabOrder = 11
      end
      object UniLabel10: TUniLabel
        Left = 7
        Top = 141
        Width = 33
        Height = 13
        Caption = 'Cidade'
        TabOrder = 12
      end
      object UniLabel11: TUniLabel
        Left = 328
        Top = 141
        Width = 13
        Height = 13
        Caption = 'UF'
        TabOrder = 13
      end
    end
    object UniLabel7: TUniLabel
      Left = 14
      Top = 104
      Width = 65
      Height = 13
      Caption = 'Complemento'
      TabOrder = 4
    end
    object UniGroupBox2: TUniGroupBox
      Left = 6
      Top = 232
      Width = 400
      Height = 143
      Caption = 'Contatos'
      TabOrder = 5
      object UniLabel16: TUniLabel
        Left = 9
        Top = 14
        Width = 90
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'Nome do Delegado'
        TabOrder = 1
      end
      object UniDBEdit2: TUniDBEdit
        Left = 9
        Top = 28
        Width = 279
        Height = 22
        ShowHint = True
        ParentShowHint = False
        DataField = 'Nome_delegado'
        DataSource = ddsConsMain
        TabOrder = 2
        ReadOnly = True
        BorderStyle = ubsInset
      end
      object UniLabel13: TUniLabel
        Left = 294
        Top = 14
        Width = 81
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'Celular Delegado'
        TabOrder = 3
      end
      object UniDBEdit13: TUniDBEdit
        Left = 294
        Top = 28
        Width = 89
        Height = 22
        Hint = 'Celular Institucional do Delegado'
        ShowHint = True
        ParentShowHint = False
        DataField = 'CELULAR1'
        DataSource = ddsConsMain
        TabOrder = 4
        ReadOnly = True
        InputMask.Mask = '(99)9 9999-9999'
        BorderStyle = ubsInset
      end
      object UniLabel15: TUniLabel
        Left = 293
        Top = 53
        Width = 18
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'Fax'
        TabOrder = 5
      end
      object UniDBEdit15: TUniDBEdit
        Left = 293
        Top = 66
        Width = 89
        Height = 22
        ShowHint = True
        ParentShowHint = False
        DataField = 'fone3'
        DataSource = ddsConsMain
        TabOrder = 6
        ReadOnly = True
        InputMask.Mask = '(99)9999-9999'
        BorderStyle = ubsInset
      end
      object UniDBEdit16: TUniDBEdit
        Left = 199
        Top = 66
        Width = 89
        Height = 22
        ShowHint = True
        ParentShowHint = False
        DataField = 'fone2'
        DataSource = ddsConsMain
        TabOrder = 7
        ReadOnly = True
        InputMask.Mask = '(99)9999-9999'
        BorderStyle = ubsInset
      end
      object UniLabel4: TUniLabel
        Left = 199
        Top = 53
        Width = 61
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'Perman'#234'ncia'
        TabOrder = 8
      end
      object UniDBEdit14: TUniDBEdit
        Left = 104
        Top = 66
        Width = 89
        Height = 22
        ShowHint = True
        ParentShowHint = False
        DataField = 'CELULAR2'
        DataSource = ddsConsMain
        TabOrder = 9
        ReadOnly = True
        InputMask.Mask = '(99)9 9999-9999'
        BorderStyle = ubsInset
      end
      object UniLabel14: TUniLabel
        Left = 104
        Top = 53
        Width = 33
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'Celular'
        TabOrder = 10
      end
      object UniDBEdit12: TUniDBEdit
        Left = 9
        Top = 66
        Width = 89
        Height = 22
        ShowHint = True
        ParentShowHint = False
        DataField = 'fone1'
        DataSource = ddsConsMain
        TabOrder = 11
        ReadOnly = True
        InputMask.Mask = '(99)9999-9999'
        BorderStyle = ubsInset
      end
      object UniLabel12: TUniLabel
        Left = 9
        Top = 53
        Width = 83
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'Fixo do Delegado'
        TabOrder = 12
      end
      object UniLabel19: TUniLabel
        Left = 8
        Top = 90
        Width = 28
        Height = 13
        ShowHint = True
        ParentShowHint = False
        Caption = 'e-Mail'
        TabOrder = 13
      end
      object UniDBEdit5: TUniDBEdit
        Left = 8
        Top = 105
        Width = 374
        Height = 22
        ShowHint = True
        ParentShowHint = False
        DataField = 'e_mail'
        DataSource = ddsConsMain
        TabOrder = 14
        ReadOnly = True
        BorderStyle = ubsInset
      end
    end
    object UniLabel18: TUniLabel
      Left = 10
      Top = 381
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
      TabOrder = 6
    end
    object UniDBMemo1: TUniDBMemo
      Left = 6
      Top = 400
      Width = 390
      Height = 89
      DataField = 'obs'
      DataSource = ddsConsMain
      BorderStyle = ubsInset
      ReadOnly = True
      TabOrder = 7
    end
    object UniPanel1: TUniPanel
      Left = 1
      Top = 512
      Width = 408
      Height = 37
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 8
      BorderStyle = ubsNone
      object UniButton1: TUniButton
        Left = 165
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = UniButton1Click
      end
    end
  end
  object pnlStatusBar: TUniPanel
    Left = 0
    Top = 550
    Width = 1221
    Height = 27
    ShowHint = True
    ParentShowHint = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 3
    object pnlDataHora: TUniPanel
      Left = 994
      Top = 1
      Width = 226
      Height = 25
      ShowHint = True
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 1
      BorderStyle = ubsNone
      Alignment = taRightJustify
    end
    object pnlIPCliente: TUniPanel
      Left = 1
      Top = 1
      Width = 166
      Height = 25
      ShowHint = True
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'dblclick=function dblclick(sender, eOpts)'#13#10'{'#13#10'  getIPs(function(' +
          'ip){sender.setText("IP Local: " + ip);});'#13#10'}')
      BorderStyle = ubsNone
      Alignment = taLeftJustify
      object lblIPClient: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 141
        Height = 13
        Hint = 'N'#250'mero IP da m'#225'quina.'
        ShowHint = True
        Alignment = taCenter
        Caption = '                                               '
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 1
      end
    end
    object pnlUsuarioLogado: TUniPanel
      Left = 167
      Top = 1
      Width = 226
      Height = 25
      ShowHint = True
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 3
      BorderStyle = ubsNone
      Alignment = taLeftJustify
    end
  end
  object dqrLogin: TZQuery
    Connection = UniMainModule.ZConnection1
    SQL.Strings = (
      'SELECT *'
      'from tb_usuario')
    Params = <>
    Left = 600
    Top = 224
    object dqrLoginid_usuario: TIntegerField
      FieldName = 'id_usuario'
      Required = True
    end
    object dqrLoginNome: TWideStringField
      FieldName = 'Nome'
      Size = 140
    end
    object dqrLoginusuario: TWideStringField
      FieldName = 'usuario'
      Size = 40
    end
    object dqrLoginsenha: TWideStringField
      FieldName = 'senha'
      Size = 40
    end
    object dqrLoginis_adm: TIntegerField
      FieldName = 'is_adm'
    end
  end
  object ddsLogin: TDataSource
    DataSet = dqrLogin
    Left = 384
    Top = 112
  end
  object UniImageList1: TUniImageList
    Left = 440
    Top = 160
    Bitmap = {
      494C010102000400800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FDFEFE0024837A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFEFE00E3F0EA00DAF1EC0021837A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00ECF4
      F1008DC6AC0038936A00AED9D3001D837A000000000000000000C0C0C0008080
      8000C0C0C0008080800080808000C0C0C000808080000000000000000000C0C0
      C00080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1EEE8008EC6
      AD003C956C0050896F00F1F6F50023837A000000000000000000000000000000
      00000000000000000000C0C0C00080808000C0C0C00000000000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFE0081BFA2003591
      660051886F00BAC8C1000000000024837A000000000000000000000000000000
      0000000000000000000080808000C0C0C0008080800000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00E4F0EA0039936A004685
      6800ADC0B800F4F7F6000000000024837A000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00F0EF
      EF00E1E0E000D9D8D800E7E7E700F0F1F100B4D4C500469A7400B3C4BC00F3F5
      F400FEFEFE00000000000000000024837A000000000000000000C0C0C000C0C0
      C0000000000080800000FFFFFF0000FFFF00FFFFFF0000000000000000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1DFDF00CBC7
      C300C7C2BD00C7C2BE00B8B5B200C2C2C000BAC8C20087A99A00F8F8F8000000
      000000000000000000000000000024837A000000000000000000000000000000
      000000000000FFFF000000000000FFFFFF0000FFFF0000000000000000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00D1C8BF00DBCD
      C000E3D5C800E4D7CB00D5CCC300B8B3AD00B4B3B100DADDDC00000000000000
      000000000000000000000000000024837A000000000000000000808000008080
      000080800000FFFF000080800000000000000000000000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F1F000DEC9B400E3CA
      B300E2CDB700E4CFBB00E3D1C000D8C9B900B4ACA300DAD9D700000000000000
      000000000000000000000000000024837A000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000080800000000000000000000000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00E5E1DB00E1B99000E0B6
      8B00E4BC9400E9C29C00E3BF9D00E0BF9E00CCB09400BAB2AB00000000000000
      000000000000000000000000000024837A000000000000000000000000000000
      0000000000008080000000FFFF00FFFFFF0000FFFF0000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFC00E7E2DC00DFAF7F00DEAB
      7900E2B18000E6B68700E0B58A00DEB68D00CCAA8700BDB3AA00000000000000
      000000000000000000000000000024837A000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000000000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00EEEBE800DDA77000DB9F
      6200DCA26800DEA56C00DCA77300DBA97800C3A07C00CDC6BF00000000000000
      000000000000000000000000000024837A000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF00808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F6F600DBA87400DA95
      4F00D9944F00DA965300DA9B5D00D29D6800BFA78E00E6E3E000000000000000
      000000000000000000000000000024837A000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F0ED00E1CF
      BD00D5B18C00D0A57800D0B9A200E1DBD500F7F6F60000000000000000000000
      000000000000000000000000000024837A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FAF9
      F900F4F1EF00EFEBE700F7F5F400FDFCFC000000000000000000000000000000
      000000000000000000000000000024837A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFF8FFFF00000000FFF0FFFF00000000
      FFC0C00300000000FFC0800300000000FF82FC0700000000FF02F00700000000
      C006C00700000000C01E800700000000803E800700000000803E800700000000
      003EF00700000000003EF00700000000003EF00700000000803EFC0700000000
      C07EFFFF00000000C0FEFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object UniMainMenu1: TUniMainMenu
    Left = 544
    Top = 88
    object mnCadastro: TUniMenuItem
      Caption = 'Cadastro'
      object mnCadUsurio: TUniMenuItem
        Caption = 'Usu'#225'rio'
        OnClick = mnCadUsurioClick
      end
      object mnCadContatos: TUniMenuItem
        Caption = 'Contatos'
        OnClick = mnCadContatosClick
      end
      object mnCadCompromissos: TUniMenuItem
        Caption = 'Compromissos'
      end
    end
    object mnConsultas: TUniMenuItem
      Caption = 'Consultas'
      Visible = False
      object mnConsCompromissos: TUniMenuItem
        Caption = 'Compromissos'
        Visible = False
      end
    end
    object mnManutencao: TUniMenuItem
      Caption = 'Manuten'#231#227'o'
      object mnAlteraraSenhadoUsurio: TUniMenuItem
        Caption = 'Alterar a Senha do Usu'#225'rio'
        Visible = False
        OnClick = mnAlteraraSenhadoUsurioClick
      end
      object mnLogin: TUniMenuItem
        Caption = 'Login'
        OnClick = mnLoginClick
      end
    end
    object mnAjuda: TUniMenuItem
      Caption = 'Ajuda'
      object mnSobre: TUniMenuItem
        Caption = 'Sobre...'
        OnClick = mnSobreClick
      end
    end
  end
  object ddsConsMain: TDataSource
    DataSet = dqrConsMain
    Left = 441
    Top = 232
  end
  object dqrConsMain: TZReadOnlyQuery
    Connection = UniMainModule.ZConnection1
    SortType = stDescending
    SQL.Strings = (
      'SELECT A.*, U.* '
      'FROM TB_AGENDA A'
      'LEFT JOIN TB_UF U ON (U.ID_UF = A.ID_UF)'
      'Order by A.Nome;')
    Params = <>
    Left = 355
    Top = 232
    object dqrConsMainid_agenda: TIntegerField
      FieldName = 'id_agenda'
      Required = True
    end
    object dqrConsMainid_uf: TIntegerField
      FieldName = 'id_uf'
    end
    object dqrConsMainid_user: TIntegerField
      FieldName = 'id_user'
    end
    object dqrConsMainnome: TWideStringField
      FieldName = 'nome'
      Size = 200
    end
    object dqrConsMainnome_soudex: TWideStringField
      FieldName = 'nome_soudex'
      Size = 240
    end
    object dqrConsMaindt_nasc: TWideStringField
      FieldName = 'dt_nasc'
    end
    object dqrConsMainendereco: TWideStringField
      FieldName = 'endereco'
      Size = 140
    end
    object dqrConsMainnumero: TWideStringField
      FieldName = 'numero'
      Size = 14
    end
    object dqrConsMaincomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 160
    end
    object dqrConsMainbairro: TWideStringField
      FieldName = 'bairro'
      Size = 100
    end
    object dqrConsMaincep: TWideStringField
      FieldName = 'cep'
    end
    object dqrConsMaincidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object dqrConsMaine_mail: TWideStringField
      FieldName = 'e_mail'
      Size = 140
    end
    object dqrConsMainfone1: TWideStringField
      FieldName = 'fone1'
      Size = 28
    end
    object dqrConsMainfone2: TWideStringField
      FieldName = 'fone2'
      Size = 28
    end
    object dqrConsMainfone3: TWideStringField
      FieldName = 'fone3'
      Size = 28
    end
    object dqrConsMaincelular1: TWideStringField
      FieldName = 'celular1'
      Size = 28
    end
    object dqrConsMaincelular2: TWideStringField
      FieldName = 'celular2'
      Size = 28
    end
    object dqrConsMainobs: TBlobField
      FieldName = 'obs'
    end
    object dqrConsMainfoto: TBlobField
      FieldName = 'foto'
    end
    object dqrConsMainapelido: TWideStringField
      FieldName = 'apelido'
      Size = 80
    end
    object dqrConsMaincont_pub: TIntegerField
      FieldName = 'cont_pub'
    end
    object dqrConsMainid_uf_1: TIntegerField
      FieldName = 'id_uf_1'
      Required = True
    end
    object dqrConsMainuf: TWideStringField
      FieldName = 'uf'
      Size = 4
    end
    object dqrConsMaindesc_uf: TWideStringField
      FieldName = 'desc_uf'
      Size = 80
    end
    object dqrConsMainNome_delegado: TWideStringField
      FieldName = 'Nome_delegado'
      Size = 140
    end
  end
end
