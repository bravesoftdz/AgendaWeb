unit fmCadContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, fmCadPatterns, ZDataset, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, uniBasicGrid, uniDBGrid, uniCheckBox,
  uniEdit, uniMultiItem, uniComboBox, uniLabel, uniDBNavigator, uniButton,
  uniBitBtn, uniPanel, uniPageControl, uniGUIBaseClasses, uniMemo, uniDBMemo,
  uniDBEdit, uniGroupBox, uniDBComboBox, uniDBLookupComboBox, uniDBCheckBox,
  uniScreenMask;

type
  TfrmCadContatos = class(TfrmCadPatterns)
    UniGroupBox1: TUniGroupBox;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniDBEdit1: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel19: TUniLabel;
    dqrMainid_agenda: TIntegerField;
    dqrMainid_uf: TIntegerField;
    dqrMainid_user: TIntegerField;
    dqrMainnome: TWideStringField;
    dqrMainnome_soudex: TWideStringField;
    dqrMaindt_nasc: TWideStringField;
    dqrMainendereco: TWideStringField;
    dqrMainnumero: TWideStringField;
    dqrMaincomplemento: TWideStringField;
    dqrMainbairro: TWideStringField;
    dqrMaincep: TWideStringField;
    dqrMaincidade: TWideStringField;
    dqrMaine_mail: TWideStringField;
    dqrMainfone1: TWideStringField;
    dqrMainfone2: TWideStringField;
    dqrMainfone3: TWideStringField;
    dqrMaincelular1: TWideStringField;
    dqrMaincelular2: TWideStringField;
    dqrMainobs: TBlobField;
    dqrMainfoto: TBlobField;
    dqrMainapelido: TWideStringField;
    dqrMaincont_pub: TIntegerField;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    dqrUF: TZTable;
    dqrUFid_uf: TIntegerField;
    dqrUFuf: TWideStringField;
    dqrUFdesc_uf: TWideStringField;
    ddsUF: TDataSource;
    UniDBEdit2: TUniDBEdit;
    dqrMainNome_delegado: TWideStringField;
    UniLabel16: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    procedure dqrMainAfterInsert(DataSet: TDataSet);
    procedure dqrMainBeforeOpen(DataSet: TDataSet);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCadContatos: TfrmCadContatos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCadContatos: TfrmCadContatos;
begin
  Result := TfrmCadContatos(UniMainModule.GetFormInstance(TfrmCadContatos));
end;

procedure TfrmCadContatos.dqrMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dqrMain.FieldByName('id_user').AsInteger  := UniMainModule.ID_User;
  dqrMain.FieldByName('cont_pub').AsInteger := 1;
end;

procedure TfrmCadContatos.dqrMainBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dqrMain.Filtered:= False;
  dqrMain.Filter  := 'cont_pub = 1 or ID_USER = '+IntToStr(UniMainModule.ID_User);
  dqrMain.Filtered:= True;
end;

procedure TfrmCadContatos.UniFormShow(Sender: TObject);
begin
  inherited;
  WhereExtra := '(cont_pub = 1 or ID_USER = '+IntToStr(UniMainModule.ID_User)+')';
end;

end.
