inherited frmCadContatos: TfrmCadContatos
  ClientHeight = 576
  ClientWidth = 697
  Caption = 'Cadastro de Contatos'
  ExplicitWidth = 713
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TUniPageControl
    Width = 697
    Height = 576
    ExplicitWidth = 697
    ExplicitHeight = 535
    inherited tbCadastro: TUniTabSheet
      ExplicitWidth = 689
      ExplicitHeight = 548
      inherited UniPanel4: TUniPanel
        Top = 508
        Width = 689
        TabOrder = 4
        ExplicitTop = 508
        ExplicitWidth = 689
        inherited UniPanel5: TUniPanel
          Left = 586
          ExplicitLeft = 586
        end
        inherited btDelete: TUniBitBtn
          Left = 541
          ExplicitLeft = 541
        end
        inherited btCancel: TUniBitBtn
          Left = 496
          ExplicitLeft = 496
        end
        inherited btPost: TUniBitBtn
          Left = 451
          ExplicitLeft = 451
        end
        inherited btEdit: TUniBitBtn
          Left = 406
          ExplicitLeft = 406
        end
        inherited btInsert: TUniBitBtn
          Left = 361
          ExplicitLeft = 361
        end
      end
      object UniGroupBox1: TUniGroupBox
        Left = 8
        Top = 36
        Width = 404
        Height = 183
        ShowHint = True
        Caption = 'Endere'#231'o'
        TabOrder = 1
        object UniDBEdit4: TUniDBEdit
          Left = 7
          Top = 27
          Width = 312
          Height = 22
          ShowHint = True
          DataField = 'endereco'
          DataSource = ddsMain
          TabOrder = 0
          ReadOnly = True
        end
        object UniDBEdit6: TUniDBEdit
          Left = 325
          Top = 26
          Width = 57
          Height = 22
          ShowHint = True
          DataField = 'numero'
          DataSource = ddsMain
          TabOrder = 1
          ReadOnly = True
        end
        object UniDBEdit7: TUniDBEdit
          Left = 7
          Top = 71
          Width = 376
          Height = 22
          ShowHint = True
          DataField = 'complemento'
          DataSource = ddsMain
          TabOrder = 2
          ReadOnly = True
        end
        object UniDBEdit8: TUniDBEdit
          Left = 7
          Top = 112
          Width = 299
          Height = 22
          ShowHint = True
          DataField = 'bairro'
          DataSource = ddsMain
          TabOrder = 3
          ReadOnly = True
        end
        object UniDBEdit9: TUniDBEdit
          Left = 313
          Top = 112
          Width = 70
          Height = 22
          ShowHint = True
          DataField = 'cep'
          DataSource = ddsMain
          TabOrder = 4
          ReadOnly = True
          InputMask.Mask = '99.999-999'
        end
        object UniDBEdit10: TUniDBEdit
          Left = 7
          Top = 151
          Width = 316
          Height = 22
          ShowHint = True
          DataField = 'cidade'
          DataSource = ddsMain
          TabOrder = 5
          ReadOnly = True
        end
        object UniLabel5: TUniLabel
          Left = 8
          Top = 13
          Width = 46
          Height = 13
          ShowHint = True
          Caption = 'Rua / Av.'
          TabOrder = 8
        end
        object UniLabel6: TUniLabel
          Left = 326
          Top = 13
          Width = 37
          Height = 13
          ShowHint = True
          Caption = 'N'#250'mero'
          TabOrder = 9
        end
        object UniLabel7: TUniLabel
          Left = 8
          Top = 53
          Width = 65
          Height = 13
          ShowHint = True
          Caption = 'Complemento'
          TabOrder = 10
        end
        object UniLabel8: TUniLabel
          Left = 8
          Top = 97
          Width = 28
          Height = 13
          ShowHint = True
          Caption = 'Bairro'
          TabOrder = 11
        end
        object UniLabel9: TUniLabel
          Left = 314
          Top = 97
          Width = 19
          Height = 13
          ShowHint = True
          Caption = 'CEP'
          TabOrder = 12
        end
        object UniLabel10: TUniLabel
          Left = 8
          Top = 139
          Width = 33
          Height = 13
          ShowHint = True
          Caption = 'Cidade'
          TabOrder = 13
        end
        object UniLabel11: TUniLabel
          Left = 329
          Top = 139
          Width = 13
          Height = 13
          ShowHint = True
          Caption = 'UF'
          TabOrder = 14
        end
        object UniDBLookupComboBox1: TUniDBLookupComboBox
          Left = 326
          Top = 151
          Width = 57
          ShowHint = True
          ListField = 'uf'
          ListSource = ddsUF
          KeyField = 'id_uf'
          ListFieldIndex = 0
          DataField = 'id_uf'
          DataSource = ddsMain
          TabOrder = 6
          Color = clWindow
        end
      end
      object UniGroupBox2: TUniGroupBox
        Left = 8
        Top = 222
        Width = 404
        Height = 135
        ShowHint = True
        Caption = 'Contatos'
        TabOrder = 2
        object UniDBEdit12: TUniDBEdit
          Left = 9
          Top = 63
          Width = 89
          Height = 22
          ShowHint = True
          DataField = 'fone1'
          DataSource = ddsMain
          TabOrder = 2
          ReadOnly = True
          InputMask.Mask = '(99)9999-9999'
        end
        object UniDBEdit13: TUniDBEdit
          Left = 294
          Top = 26
          Width = 89
          Height = 22
          Hint = 'Celular Institucional do Delegado'
          ShowHint = True
          DataField = 'CELULAR1'
          DataSource = ddsMain
          TabOrder = 1
          ReadOnly = True
          InputMask.Mask = '(99)9 9999-9999'
        end
        object UniDBEdit14: TUniDBEdit
          Left = 104
          Top = 63
          Width = 89
          Height = 22
          ShowHint = True
          DataField = 'CELULAR2'
          DataSource = ddsMain
          TabOrder = 3
          ReadOnly = True
          InputMask.Mask = '(99)9 9999-9999'
        end
        object UniDBEdit15: TUniDBEdit
          Left = 293
          Top = 63
          Width = 89
          Height = 22
          ShowHint = True
          DataField = 'fone3'
          DataSource = ddsMain
          TabOrder = 5
          ReadOnly = True
          InputMask.Mask = '(99)9999-9999'
        end
        object UniDBEdit16: TUniDBEdit
          Left = 199
          Top = 63
          Width = 89
          Height = 22
          ShowHint = True
          DataField = 'fone2'
          DataSource = ddsMain
          TabOrder = 4
          ReadOnly = True
          InputMask.Mask = '(99)9999-9999'
        end
        object UniDBEdit5: TUniDBEdit
          Left = 8
          Top = 102
          Width = 261
          Height = 22
          ShowHint = True
          DataField = 'e_mail'
          DataSource = ddsMain
          TabOrder = 6
          ReadOnly = True
        end
        object UniLabel12: TUniLabel
          Left = 9
          Top = 51
          Width = 83
          Height = 13
          ShowHint = True
          Caption = 'Fixo do Delegado'
          TabOrder = 9
        end
        object UniLabel13: TUniLabel
          Left = 294
          Top = 13
          Width = 81
          Height = 13
          ShowHint = True
          Caption = 'Celular Delegado'
          TabOrder = 10
        end
        object UniLabel14: TUniLabel
          Left = 104
          Top = 51
          Width = 33
          Height = 13
          ShowHint = True
          Caption = 'Celular'
          TabOrder = 11
        end
        object UniLabel15: TUniLabel
          Left = 293
          Top = 51
          Width = 18
          Height = 13
          ShowHint = True
          Caption = 'Fax'
          TabOrder = 12
        end
        object UniLabel4: TUniLabel
          Left = 199
          Top = 51
          Width = 61
          Height = 13
          ShowHint = True
          Caption = 'Perman'#234'ncia'
          TabOrder = 13
        end
        object UniLabel19: TUniLabel
          Left = 8
          Top = 88
          Width = 28
          Height = 13
          ShowHint = True
          Caption = 'e-Mail'
          TabOrder = 14
        end
        object UniDBEdit2: TUniDBEdit
          Left = 9
          Top = 26
          Width = 279
          Height = 22
          ShowHint = True
          DataField = 'Nome_delegado'
          DataSource = ddsMain
          TabOrder = 0
          ReadOnly = True
        end
        object UniLabel16: TUniLabel
          Left = 9
          Top = 13
          Width = 90
          Height = 13
          ShowHint = True
          Caption = 'Nome do Delegado'
          TabOrder = 15
        end
        object UniDBCheckBox1: TUniDBCheckBox
          Left = 277
          Top = 104
          Width = 116
          Height = 17
          ShowHint = True
          DataField = 'cont_pub'
          DataSource = ddsMain
          ValueChecked = '0'
          ValueUnchecked = '1'
          Caption = 'Contato particular?'
          TabOrder = 7
        end
      end
      object UniLabel18: TUniLabel
        Left = 10
        Top = 360
        Width = 63
        Height = 13
        ShowHint = True
        Caption = 'Observa'#231#245'es'
        TabOrder = 5
      end
      object UniDBMemo1: TUniDBMemo
        Left = 8
        Top = 376
        Width = 404
        Height = 84
        ShowHint = True
        DataField = 'obs'
        DataSource = ddsMain
        ReadOnly = True
        TabOrder = 3
      end
      object UniDBEdit1: TUniDBEdit
        Left = 8
        Top = 14
        Width = 404
        Height = 22
        ShowHint = True
        DataField = 'nome'
        DataSource = ddsMain
        TabOrder = 0
        ReadOnly = True
      end
      object UniLabel3: TUniLabel
        Left = 13
        Top = -1
        Width = 73
        Height = 13
        ShowHint = True
        Caption = 'Unidade Policial'
        TabOrder = 6
      end
    end
    inherited tbConsulta: TUniTabSheet
      ExplicitWidth = 689
      ExplicitHeight = 548
      inherited UniPanel1: TUniPanel
        Width = 689
        ExplicitWidth = 689
        inherited UniPanel3: TUniPanel
          Left = 570
          ExplicitLeft = 570
        end
      end
      inherited DBGrid1: TUniDBGrid
        Width = 689
        Height = 466
        Columns = <
          item
            FieldName = 'nome'
            Title.Caption = 'Unidade Policial'
            Width = 230
          end
          item
            FieldName = 'fone1'
            Title.Caption = 'Delegado'
            Width = 87
          end
          item
            FieldName = 'fone3'
            Title.Caption = 'Fax'
            Width = 87
          end
          item
            FieldName = 'fone2'
            Title.Caption = 'Perman'#234'ncia'
            Width = 87
          end
          item
            FieldName = 'celular1'
            Title.Caption = 'Celular Delegado'
            Width = 87
          end
          item
            FieldName = 'celular2'
            Title.Caption = 'Celular'
            Width = 87
          end
          item
            FieldName = 'e_mail'
            Title.Caption = 'e-mail'
            Width = 170
          end>
      end
    end
  end
  inherited dqrMain: TZTable
    BeforeOpen = dqrMainBeforeOpen
    AfterInsert = dqrMainAfterInsert
    TableName = 'tb_agenda'
    Left = 516
    Top = 180
    object dqrMainid_agenda: TIntegerField
      Tag = 1
      FieldName = 'id_agenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dqrMainid_uf: TIntegerField
      Tag = 1
      FieldName = 'id_uf'
    end
    object dqrMainid_user: TIntegerField
      Tag = 1
      FieldName = 'id_user'
    end
    object dqrMainnome: TWideStringField
      DisplayLabel = 'Unidade Policial'
      FieldName = 'nome'
      Size = 200
    end
    object dqrMainnome_soudex: TWideStringField
      Tag = 1
      FieldName = 'nome_soudex'
      Size = 240
    end
    object dqrMaindt_nasc: TWideStringField
      Tag = 1
      FieldName = 'dt_nasc'
    end
    object dqrMainendereco: TWideStringField
      Tag = 1
      FieldName = 'endereco'
      Size = 140
    end
    object dqrMainnumero: TWideStringField
      Tag = 1
      FieldName = 'numero'
      Size = 14
    end
    object dqrMaincomplemento: TWideStringField
      Tag = 1
      FieldName = 'complemento'
      Size = 160
    end
    object dqrMainbairro: TWideStringField
      Tag = 1
      FieldName = 'bairro'
      Size = 100
    end
    object dqrMaincep: TWideStringField
      Tag = 1
      FieldName = 'cep'
    end
    object dqrMaincidade: TWideStringField
      Tag = 1
      FieldName = 'cidade'
      Size = 100
    end
    object dqrMaine_mail: TWideStringField
      Tag = 1
      DisplayLabel = 'e-mail'
      FieldName = 'e_mail'
      Size = 140
    end
    object dqrMainfone1: TWideStringField
      DisplayLabel = 'Delegado'
      FieldName = 'fone1'
      Size = 28
    end
    object dqrMainfone2: TWideStringField
      DisplayLabel = 'Perman'#234'ncia'
      FieldName = 'fone2'
      Size = 28
    end
    object dqrMainfone3: TWideStringField
      DisplayLabel = 'Fax'
      FieldName = 'fone3'
      Size = 28
    end
    object dqrMaincelular1: TWideStringField
      DisplayLabel = 'Celular Delegado'
      FieldName = 'celular1'
      Size = 28
    end
    object dqrMaincelular2: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular2'
      Size = 28
    end
    object dqrMainobs: TBlobField
      Tag = 1
      FieldName = 'obs'
    end
    object dqrMainfoto: TBlobField
      Tag = 1
      FieldName = 'foto'
    end
    object dqrMainapelido: TWideStringField
      Tag = 1
      FieldName = 'apelido'
      Size = 80
    end
    object dqrMaincont_pub: TIntegerField
      Tag = 1
      FieldName = 'cont_pub'
    end
    object dqrMainNome_delegado: TWideStringField
      FieldName = 'Nome_delegado'
      Size = 140
    end
  end
  inherited ddsMain: TDataSource
    Left = 504
  end
  inherited dqrConsMain: TZReadOnlyQuery
    SQL.Strings = (
      'SELECT * FROM tb_agenda')
    Left = 464
    Top = 184
  end
  inherited ddsConsMain: TDataSource
    Left = 448
    Top = 124
  end
  object dqrUF: TZTable
    Connection = UniMainModule.ZConnection1
    TableName = 'tb_uf'
    Left = 480
    Top = 48
    object dqrUFid_uf: TIntegerField
      FieldName = 'id_uf'
      Required = True
    end
    object dqrUFuf: TWideStringField
      FieldName = 'uf'
      Size = 4
    end
    object dqrUFdesc_uf: TWideStringField
      FieldName = 'desc_uf'
      Size = 80
    end
  end
  object ddsUF: TDataSource
    DataSet = dqrUF
    Left = 560
    Top = 136
  end
end
