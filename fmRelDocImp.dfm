object frmRelDocImp: TfrmRelDocImp
  Left = 0
  Top = 0
  ClientHeight = 335
  ClientWidth = 813
  Caption = 'Rela'#231#227'o de documentos impressos'
  Color = clBtnFace
  OldCreateOrder = False
  OnActivate = UniFormActivate
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 7
    Top = 44
    Width = 799
    Height = 283
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
    ReadOnly = True
    WebOptions.LoadMaskMsg = 'Please wait...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'Numero'
        Title.Caption = 'N'#250'mero'
        Width = 45
        Visible = True
        Alignment = taRightJustify
        Expanded = False
      end
      item
        FieldName = 'Ano'
        Title.Caption = 'Ano'
        Width = 40
        Visible = True
        Alignment = taRightJustify
        ReadOnly = True
        Expanded = False
      end
      item
        FieldName = 'Usuario'
        Title.Caption = 'Usuario'
        Width = 120
        Visible = True
        Expanded = False
      end
      item
        FieldName = 'Setor'
        Title.Caption = 'Setor'
        Width = 400
        Visible = True
        Expanded = False
      end
      item
        FieldName = 'Tipo'
        Title.Caption = 'Tipo de Documento'
        Width = 500
        Visible = True
        Expanded = False
      end>
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 36
    BorderStyle = ubsFrameLowered
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = clWindow
    TabOrder = 1
    object edAno: TUniEdit
      Left = 36
      Top = 8
      Width = 40
      MaxLength = 4
      TabOrder = 0
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 11
      Top = 13
      Width = 19
      Height = 13
      Caption = 'Ano'
      TabOrder = 6
    end
    object edNumero: TUniEdit
      Left = 122
      Top = 8
      Width = 79
      TabOrder = 1
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 82
      Top = 13
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      TabOrder = 7
    end
    object cbcUsuario: TUniComboBox
      Left = 248
      Top = 8
      Width = 137
      Style = csDropDownList
      Items.Strings = (
        '[T o d o s]')
      ItemIndex = -1
      TabOrder = 2
    end
    object UniLabel3: TUniLabel
      Left = 209
      Top = 13
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      TabOrder = 8
    end
    object btSearch: TUniBitBtn
      Left = 745
      Top = 5
      Width = 30
      Height = 25
      Hint = 'Localizar'
      ShowHint = True
      ParentShowHint = False
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFBFDFCFDFEFE24837AFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFEFEE3F0EABAD9CBDAF1EC21837AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE4
        F0EB88C4A94C9B7792D7CD1A8379FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEECF4F18DC6AC3893
        6A4C876CAED9D31D837AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDE1EEE88EC6AD3C956C50896FAFC1B9
        F1F6F523837AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFDFEFEE1EEE881BFA235916651886FBAC8C1F7F8F8FFFFFF24
        837AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEE4F0EA8BC3AA39936A468568ADC0B8F4F7F6FFFFFFFFFFFF24837AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFDFDFDFEFEFEFEFEFEE7F1EC86
        C1A63A946B518A70ADC0B8F2F4F4FFFFFFFFFFFFFFFFFF24837AFFFFFFFFFFFF
        FFFFFFFBFBFBF0EFEFE1E0E0D9D8D8DBDBDAE7E7E7F0F1F1B4D4C5469A74508B
        70B3C4BCF3F5F4FEFEFEFFFFFFFFFFFFFFFFFF24837AFFFFFFFFFFFFF9F9F9E1
        DFDFCBC7C3C7C2BDC7C2BEBFBCB8B8B5B2C2C2C0BAC8C287A99ABAC8C1F8F8F8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24837AFFFFFFFCFCFCE4E3E1D1C8BFDBCD
        C0E3D5C8E4D7CBE2D8CCD5CCC3B8B3ADB4B3B1DADDDCF7F9F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF24837AFFFFFFF2F1F0D9D1C9DEC9B4E3CAB3E2CDB7
        E4CFBBE4D1BEE3D1C0D8C9B9B4ACA3DAD9D7FDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF24837AFDFDFDE9E6E3DCCBBBE2C3A5E1C0A0E3C5A5E6C9ACE5
        C9AFE3C9AFE1C9B1C3B09FC4C0BDF9F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF24837AFCFCFCE5E1DBDEC6AEE1B990E0B68BE4BC94E9C29CE8C29EE3BF
        9DE0BF9ECCB094BAB2ABF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
        837AFDFDFCE7E2DCDFC3A7DFAF7FDEAB79E2B180E6B687E5B78AE0B58ADEB68D
        CCAA87BDB3AAF5F5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24837AFEFE
        FEEEEBE8DFC4ABDDA770DB9F62DCA268DEA56CDEA770DCA773DBA978C3A07CCD
        C6BFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24837AFFFFFFF7F6F6
        E3D3C4DBA874DA954FD9944FDA9653DA9957DA9B5DD29D68BFA78EE6E3E0FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24837AFFFFFFFEFEFEF1EEEBDF
        C6ADD79D64D78F45D78E44D79049D1965BC6A686D8D0C8F8F8F7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24837AFFFFFFFFFFFFFDFDFDF3F0EDE1CF
        BDD5B18CD0A578CEA780D0B9A2E1DBD5F7F6F6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF24837AFFFFFFFFFFFFFFFFFFFEFEFEFAF9F9F4F1EF
        EFEBE7F1EDEAF7F5F4FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF24837A}
      TabOrder = 4
      OnClick = btSearchClick
    end
    object UniBitBtn1: TUniBitBtn
      Left = 775
      Top = 5
      Width = 30
      Height = 25
      Hint = 'Fechar'
      ShowHint = True
      ParentShowHint = False
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000640000006400000000000000000000000000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF8080800000FF8080800000
        FF8080800000FF8080800000FF8080800000FF0000000000000000FF80808000
        00FF8080800000FF0000FF0000FF0000FF0000FF808080C0C0C0808080C0C0C0
        808080C0C0C0808080C0C0C0808080000000808000000000C0C0C0808080C0C0
        C08080800000FF0000FF0000FF00000000000000000000000000000000000000
        0000C0C0C0808080C0C0C0000000808000808000000000000000000000000000
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000008080
        80C0C0C08080800000008080008080008080000000000000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF000000C0C0C0000000000000000000
        0000000000008080008080008080000000000000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF00000000000000000000FFFFFFFFFF00FFFF00
        00008080008080008080000000000000FF0000FF0000FF0000FF0000FF0000FF
        0000FFC0C0C0C0C0C0000000808000000000FFFFFF00FFFFFFFFFF0000000000
        000000008080000000000000FF0000FF0000FF0000FF0000FF00000000000000
        0000000000000000FFFF00808000000000FFFFFF00FFFF000000000000000000
        8080000000000000FF0000FF0000FF0000FF0000FF0000008080008080008080
        00808000FFFF00FFFF0080800000000000000000000080800080800080800000
        00000000FF0000FF0000FF0000FF0000FF000000FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF008080000000000000000000008080008080008080000000000000
        FF0000FF0000FF0000FF0000FF000000000000000000000000000000FFFF0080
        800000000000FFFFFFFFFF0000008080008080008080000000000000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000080800000000000FF
        FFFFFFFF00FFFF0000008080008080008080000000000000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF000000000000000000FFFFFF00FFFF
        FFFFFF0000008080008080008080000000000000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF00000000000000000000FFFFFFFFFF00FFFFFF
        FFFF0000008080008080000000000000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF000000FFFFFF00FFFFFFFFFF00FFFFFFFF
        FF0000008080000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF000000000000000000000000000000000000000000
        0000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF}
      TabOrder = 5
      OnClick = UniBitBtn1Click
    end
    object UniLabel4: TUniLabel
      Left = 396
      Top = 13
      Width = 77
      Height = 13
      Caption = 'Tipo Documento'
      TabOrder = 9
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 44
    Width = 7
    Height = 283
    BorderStyle = ubsNone
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    Color = clWindow
    TabOrder = 2
  end
  object UniPanel3: TUniPanel
    Left = 806
    Top = 44
    Width = 7
    Height = 283
    BorderStyle = ubsNone
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    Color = clWindow
    TabOrder = 3
  end
  object UniPanel4: TUniPanel
    Left = 0
    Top = 327
    Width = 813
    Height = 8
    BorderStyle = ubsNone
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clWindow
    TabOrder = 4
  end
  object UniPanel5: TUniPanel
    Left = 0
    Top = 36
    Width = 813
    Height = 8
    BorderStyle = ubsNone
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = clWindow
    TabOrder = 5
  end
  object cbcTipoDocumento: TUniComboBox
    Left = 476
    Top = 8
    Width = 267
    Style = csOwnerDrawFixed
    ItemIndex = -1
    TabOrder = 6
  end
  object UniMemo1: TUniMemo
    Left = 36
    Top = 136
    Width = 613
    Height = 89
    Visible = False
    Lines.Strings = (
      '_UniMemo1')
    Color = clWindow
    TabOrder = 7
  end
  object ZQuery1: TZQuery
    Connection = UniMainModule.ZConnection1
    SQL.Strings = (
      
        'select r.numerodocumento as numero, Year(r.ano) as Ano, s.nomese' +
        'tor as setor,'
      '       td.nome_doc as Tipo, u.nome as Usuario  '
      'from registrodocumento r'
      'join documento d       on r.id_documento = d.id'
      'join tipo_documento td on td.id_doc = d.id_doc'
      'join usuario u         on r.id_usuario = u.id'
      'join setor s           on r.id_setor = s.setor'
      'WHERE'
      'R.id_setor="201021"'
      'and YEAR(R.ANO)=2014')
    Params = <>
    Left = 352
    Top = 96
    object ZQuery1Numero: TIntegerField
      FieldName = 'Numero'
      Required = True
    end
    object ZQuery1Ano: TLargeintField
      FieldName = 'Ano'
      ReadOnly = True
    end
    object ZQuery1Setor: TWideStringField
      FieldName = 'Setor'
      Required = True
      Size = 120
    end
    object ZQuery1Tipo: TWideStringField
      FieldName = 'Tipo'
      Required = True
      Size = 90
    end
    object ZQuery1Usuario: TWideStringField
      FieldName = 'Usuario'
      Required = True
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 416
    Top = 88
  end
  object ZTable1: TZTable
    Connection = UniMainModule.ZConnection1
    SortedFields = 'numerodocumento'
    TableName = 'registrodocumento'
    IndexFieldNames = 'numerodocumento Asc'
    Left = 208
    Top = 64
    object ZTable1id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ZTable1id_usuario: TIntegerField
      FieldName = 'id_usuario'
      Required = True
    end
    object ZTable1id_setor: TIntegerField
      FieldName = 'id_setor'
      Required = True
    end
    object ZTable1id_documento: TIntegerField
      FieldName = 'id_documento'
      Required = True
    end
    object ZTable1numerodocumento: TIntegerField
      FieldName = 'numerodocumento'
      Required = True
    end
    object ZTable1ano: TDateTimeField
      FieldName = 'ano'
      Required = True
    end
  end
  object dqrTipoDocumento: TZTable
    Connection = UniMainModule.ZConnection1
    SortedFields = 'nome_doc'
    TableName = 'tipo_documento'
    IndexFieldNames = 'nome_doc Asc'
    Left = 512
    Top = 144
  end
  object dqrUsuario: TZTable
    Connection = UniMainModule.ZConnection1
    SortedFields = 'nome'
    TableName = 'usuario'
    IndexFieldNames = 'nome Asc'
    Left = 272
    Top = 168
  end
end
