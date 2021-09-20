unit fmRelDocImp;
//2010
//427
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniEdit, uniMultiItem,
  uniComboBox, uniButton, uniBitBtn, uniBasicGrid, uniDBGrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable, uniMemo,
  uniPanel, uniDBComboBox, uniDBLookupComboBox;

type
  TfrmRelDocImp = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZTable1: TZTable;
    ZTable1id: TIntegerField;
    ZTable1id_usuario: TIntegerField;
    ZTable1id_setor: TIntegerField;
    ZTable1id_documento: TIntegerField;
    ZTable1numerodocumento: TIntegerField;
    ZTable1ano: TDateTimeField;
    ZQuery1Numero: TIntegerField;
    ZQuery1Ano: TLargeintField;
    ZQuery1Setor: TWideStringField;
    ZQuery1Tipo: TWideStringField;
    ZQuery1Usuario: TWideStringField;
    UniPanel1: TUniPanel;
    edAno: TUniEdit;
    UniLabel1: TUniLabel;
    edNumero: TUniEdit;
    UniLabel2: TUniLabel;
    cbcUsuario: TUniComboBox;
    UniLabel3: TUniLabel;
    btSearch: TUniBitBtn;
    UniBitBtn1: TUniBitBtn;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    UniLabel4: TUniLabel;
    dqrTipoDocumento: TZTable;
    cbcTipoDocumento: TUniComboBox;
    dqrUsuario: TZTable;
    UniMemo1: TUniMemo;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
  private
    procedure AddTipoDocumento;
    procedure AddUsuario;
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRelDocImp: TfrmRelDocImp;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmRelDocImp: TfrmRelDocImp;
begin
  Result := TfrmRelDocImp(UniMainModule.GetFormInstance(TfrmRelDocImp));
end;

procedure TfrmRelDocImp.btSearchClick(Sender: TObject);
begin
  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add(' SELECT R.NUMERODOCUMENTO AS NUMERO, YEAR(R.ANO) AS ANO, S.NOMESETOR AS SETOR,');
  ZQuery1.SQL.Add('        T.NOME_DOC AS TIPO, U.NOME AS USUARIO');
  ZQuery1.SQL.Add(' FROM REGISTRODOCUMENTO R');
  ZQuery1.SQL.Add(' INNER JOIN TIPO_DOCUMENTO T ON (T.ID_DOC = R.ID_DOCUMENTO)');
  ZQuery1.SQL.Add(' INNER JOIN SETOR S          ON (S.SETOR  = R.ID_SETOR)');
  ZQuery1.SQL.Add(' INNER JOIN USUARIO U        ON (U.`ID`   = R.ID_USUARIO)');
  ZQuery1.SQL.Add('WHERE');

  if not UniMainModule.isAdmin then
    ZQuery1.SQL.Add('R.id_setor="'+IntToStr(UniMainModule.ID_Setor)+'"')
  else
    ZQuery1.SQL.Add('R.id_setor like ""');
  if Trim(edAno.Text)<>'' then
    ZQuery1.SQL.Add('and YEAR(R.ANO)='+edAno.Text);
  if Trim(edNumero.Text)<>'' then
    ZQuery1.SQL.Add('and R.numerodocumento='+edNumero.Text);

  if Trim(cbcUsuario.Text)<>'[T o d o s]' then
    ZQuery1.SQL.Add('and U.NOME="'+cbcUsuario.Text+'"');

  if Trim(cbcTipoDocumento.Text)<>'[T o d o s]' then
    ZQuery1.SQL.Add('and T.NOME_DOC="'+cbcTipoDocumento.Text+'"');
 // UniMemo1.Lines.Text := ZQuery1.SQL.Text;
  ZQuery1.Open;
end;

procedure TfrmRelDocImp.AddTipoDocumento;
Begin
  dqrTipoDocumento.Open;
  cbcTipoDocumento.Items.Clear;
  cbcTipoDocumento.Items.Add('[T o d o s]');
  while not dqrTipoDocumento.Eof do
  Begin
    cbcTipoDocumento.Items.Add(dqrTipoDocumento.FieldByName('nome_doc').AsString);
    dqrTipoDocumento.Next;
  End;
  dqrTipoDocumento.Close;
  cbcTipoDocumento.ItemIndex := 0;
End;

procedure TfrmRelDocImp.AddUsuario;
Begin
  dqrUsuario.Open;
  cbcUsuario.Items.Clear;
  cbcUsuario.Items.Add('[T o d o s]');
  while not dqrUsuario.Eof do
  Begin
    cbcUsuario.Items.Add(dqrUsuario.FieldByName('nome').AsString);
    dqrUsuario.Next;
  End;
  dqrUsuario.Close;
  cbcUsuario.ItemIndex := 0;
End;

procedure TfrmRelDocImp.UniBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelDocImp.UniFormActivate(Sender: TObject);
begin
  AddTipoDocumento;
  AddUsuario;
end;

end.
