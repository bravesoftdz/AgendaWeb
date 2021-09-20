object frmAltSenha: TfrmAltSenha
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  ClientHeight = 194
  ClientWidth = 280
  Caption = 'Alterar Senha'
  OnShow = UniFormShow
  Color = clBtnFace
  BorderStyle = bsDialog
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  ActiveControl = edSenhaAtual
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 153
    Width = 280
    Height = 41
    BorderStyle = ubsFrameLowered
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clWindow
    TabOrder = 2
    object btOk: TUniBitBtn
      Left = 58
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TUniBitBtn
      Left = 164
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelClick
    end
    object UniGroupBox1: TUniGroupBox
      Left = 88
      Top = -104
      Width = 185
      Height = 105
      Caption = 'UniGroupBox1'
      TabOrder = 3
    end
  end
  object UniGroupBox2: TUniGroupBox
    Left = 1
    Top = -1
    Width = 279
    Height = 74
    TabOrder = 1
    object edUsuario: TUniDBEdit
      Left = 70
      Top = 16
      Width = 189
      Height = 22
      DataField = 'nome'
      DataSource = ddsUsuario
      TabOrder = 0
      Color = clWindow
      ReadOnly = True
    end
    object edSenhaAtual: TUniEdit
      Left = 70
      Top = 44
      Width = 189
      PasswordChar = '*'
      TabOrder = 1
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 9
      Top = 20
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 9
      Top = 46
      Width = 58
      Height = 13
      Caption = 'Senha Atual'
      TabOrder = 4
    end
  end
  object UniGroupBox3: TUniGroupBox
    Left = 1
    Top = 76
    Width = 279
    Height = 74
    TabOrder = 0
    object edConfirmacao: TUniEdit
      Left = 70
      Top = 44
      Width = 189
      PasswordChar = '*'
      TabOrder = 1
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 9
      Top = 20
      Width = 58
      Height = 13
      Caption = 'Nova Senha'
      TabOrder = 3
    end
    object UniLabel4: TUniLabel
      Left = 9
      Top = 46
      Width = 60
      Height = 13
      Caption = 'Confirma'#231#227'o'
      TabOrder = 4
    end
    object edNovaSenha: TUniEdit
      Left = 70
      Top = 15
      Width = 189
      PasswordChar = '*'
      TabOrder = 0
      Color = clWindow
    end
  end
  object ddsUsuario: TDataSource
    DataSet = dqrUsuario
    Left = 176
    Top = 16
  end
  object dqrUsuario: TZQuery
    Connection = UniMainModule.ZConnection1
    UpdateObject = ZUpdateSQL1
    SQL.Strings = (
      'SELECT *'
      'from tb_usuario'
      'where '
      '  usuario  = :nome and'
      '  senha   = :senha')
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptUnknown
      end>
    Left = 128
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptUnknown
      end>
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM usuario'
      'WHERE'
      '  usuario.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO usuario'
      '  (id, nome, senha, setor)'
      'VALUES'
      '  (:id, :nome, :senha, :setor)')
    ModifySQL.Strings = (
      'UPDATE usuario SET'
      '  id = :id,'
      '  nome = :nome,'
      '  senha = :senha,'
      '  setor = :setor'
      'WHERE'
      '  usuario.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 192
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'setor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
end
