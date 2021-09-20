unit fmCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm,
  fmCadPatterns, DB, ZDataset, ZAbstractRODataset, ZAbstractDataset, uniDBGrid,
  ZAbstractTable, uniBasicGrid,  uniDBNavigator, uniButton, uniBitBtn, uniPanel,
  uniCheckBox, uniEdit, uniMultiItem, uniComboBox, uniLabel,  uniPageControl,
   uniGUIBaseClasses, fmMain, uniDBEdit, uniDBLookupComboBox, uniDBCheckBox,
  uniScreenMask;

type
  TfrmCadUsuario = class(TfrmCadPatterns)
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    ZQuery1: TZQuery;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    dqrMainid_usuario: TIntegerField;
    dqrMainNome: TWideStringField;
    dqrMainusuario: TWideStringField;
    dqrMainsenha: TWideStringField;
    dqrMainis_adm: TIntegerField;
    UniDBEdit3: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    dqrMainDT_ULTIMO_ACESSO: TDateField;
    dqrMainIs_Bloqueado: TIntegerField;
    cbxUsuarioBloqueado: TUniDBCheckBox;
    procedure dqrMainBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCadUsuario: TfrmCadUsuario;
begin
  Result := TfrmCadUsuario(UniMainModule.GetFormInstance(TfrmCadUsuario));
end;

procedure TfrmCadUsuario.dqrMainBeforePost(DataSet: TDataSet);
begin
  if (cbxUsuarioBloqueado.Field.OldValue = 1) and (cbxUsuarioBloqueado.Field.AsInteger = 0) then
    dqrMainDT_ULTIMO_ACESSO.AsDateTime := now;
  inherited;

end;

end.
