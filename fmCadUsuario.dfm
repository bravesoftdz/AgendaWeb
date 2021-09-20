inherited frmCadUsuario: TfrmCadUsuario
  ClientHeight = 514
  Caption = 'Cadastro de Usu'#225'rio'
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TUniPageControl
    Height = 514
    ActivePage = tbCadastro
    ExplicitHeight = 514
    inherited tbCadastro: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 731
      ExplicitHeight = 486
      inherited UniPanel4: TUniPanel
        Top = 446
        TabOrder = 4
        ExplicitTop = 446
      end
      object UniDBEdit1: TUniDBEdit
        Left = 20
        Top = 85
        Width = 121
        Height = 22
        ShowHint = True
        DataField = 'usuario'
        DataSource = ddsMain
        TabOrder = 1
      end
      object UniDBEdit2: TUniDBEdit
        Left = 163
        Top = 85
        Width = 121
        Height = 22
        ShowHint = True
        DataField = 'senha'
        DataSource = ddsMain
        PasswordChar = '*'
        TabOrder = 2
      end
      object UniLabel4: TUniLabel
        Left = 20
        Top = 67
        Width = 36
        Height = 13
        ShowHint = True
        Caption = 'Usu'#225'rio'
        TabOrder = 5
      end
      object UniLabel5: TUniLabel
        Left = 163
        Top = 66
        Width = 30
        Height = 13
        ShowHint = True
        Caption = 'Senha'
        TabOrder = 6
      end
      object UniDBEdit3: TUniDBEdit
        Left = 20
        Top = 27
        Width = 397
        Height = 22
        ShowHint = True
        DataField = 'nome'
        DataSource = ddsMain
        TabOrder = 0
      end
      object UniLabel3: TUniLabel
        Left = 20
        Top = 9
        Width = 81
        Height = 13
        ShowHint = True
        Caption = 'Nome do Usu'#225'rio'
        TabOrder = 7
      end
      object UniDBCheckBox1: TUniDBCheckBox
        Left = 320
        Top = 85
        Width = 97
        Height = 17
        ShowHint = True
        DataField = 'is_adm'
        DataSource = ddsMain
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = 'Administrador?'
        TabOrder = 3
      end
      object cbxUsuarioBloqueado: TUniDBCheckBox
        Left = 19
        Top = 123
        Width = 121
        Height = 17
        ShowHint = True
        DataField = 'Is_Bloqueado'
        DataSource = ddsMain
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = 'Usu'#225'rio Bloqueado.'
        TabOrder = 8
      end
    end
    inherited tbConsulta: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 731
      ExplicitHeight = 486
      inherited DBGrid1: TUniDBGrid
        Height = 404
      end
    end
  end
  inherited dqrMain: TZTable
    SortedFields = 'nome'
    BeforePost = dqrMainBeforePost
    TableName = 'tb_usuario'
    IndexFieldNames = 'nome Asc'
    object dqrMainid_usuario: TIntegerField
      Tag = 1
      FieldName = 'id_usuario'
      Required = True
    end
    object dqrMainNome: TWideStringField
      FieldName = 'Nome'
      Size = 140
    end
    object dqrMainusuario: TWideStringField
      DisplayLabel = 'Usuario'
      FieldName = 'usuario'
      Size = 40
    end
    object dqrMainsenha: TWideStringField
      Tag = 1
      FieldName = 'senha'
      Size = 40
    end
    object dqrMainis_adm: TIntegerField
      Tag = 1
      FieldName = 'is_adm'
    end
    object dqrMainDT_ULTIMO_ACESSO: TDateField
      Tag = 1
      FieldName = 'DT_ULTIMO_ACESSO'
    end
    object dqrMainIs_Bloqueado: TIntegerField
      Tag = 1
      FieldName = 'Is_Bloqueado'
    end
  end
  object ZQuery1: TZQuery
    Connection = UniMainModule.ZConnection1
    Params = <>
    Left = 504
    Top = 256
  end
end
