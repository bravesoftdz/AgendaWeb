unit fmMain;

interface

uses
  KrUtil, uniKrUtil,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractTable, Menus, ZDataset, DB, ZAbstractRODataset,
  ZAbstractDataset,
  //
  uniGUIMainModule, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniEdit,
  uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniPanel,
  uniDBGrid, uniLabel, uniMainMenu, uniMemo, uniDBMemo, uniDBEdit, uniGroupBox,
  uniSplitter, uniCalendar, uniStatusBar, uniImageList, uniButton, uniBitBtn,
  uniSpeedButton;

Const
//   UserControl_User        :String  =''; // Usuário do sistema
   UserControl_LoginName   :String  =''; // Login do
   UserControl_Pass        :String  ='';
   UserControl_Email       :String  ='';
//   UserControl_UserID      :Integer =-1;
   UserControl_Profile     :Integer =-1;
   UserControl_Privilegiado:Boolean =False;
   WhereExtra              :String  ='';
   OrderBy                 :String  ='';
   FoneMask                :String  ='(99)9999-9999;1;_';
   DataMask                :String  ='99/99/9999;1;_';
   HoraMask                :String  ='99:99:99;1;_';
   Enter                   :char    =#13;
   Status_Concluido                 =4;
   Status_Pendente                  =5;
  // NewTitleMain            :String  ='';

type
  TModalCallBack = procedure(ModalResult: TModalResult) of object;
  TfrmMain = class(TUniForm)
    dqrLogin: TZQuery;
    ddsLogin: TDataSource;
    UniLabel1: TUniLabel;
    UniImageList1: TUniImageList;
    UniMainMenu1: TUniMainMenu;
    mnCadastro: TUniMenuItem;
    mnCadUsurio: TUniMenuItem;
    mnManutencao: TUniMenuItem;
    mnAlteraraSenhadoUsurio: TUniMenuItem;
    dqrLoginid_usuario: TIntegerField;
    dqrLoginNome: TWideStringField;
    dqrLoginusuario: TWideStringField;
    dqrLoginsenha: TWideStringField;
    dqrLoginis_adm: TIntegerField;
    ddsConsMain: TDataSource;
    dqrConsMain: TZReadOnlyQuery;
    mnAjuda: TUniMenuItem;
    mnSobre: TUniMenuItem;
    UniPanel3: TUniPanel;
    UniPanel5: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    BT_B: TUniSpeedButton;
    BT_C: TUniSpeedButton;
    BT_E: TUniSpeedButton;
    BT_D: TUniSpeedButton;
    BT_I: TUniSpeedButton;
    BT_H: TUniSpeedButton;
    BT_G: TUniSpeedButton;
    BT_F: TUniSpeedButton;
    BT_Q: TUniSpeedButton;
    BT_P: TUniSpeedButton;
    BT_O: TUniSpeedButton;
    BT_N: TUniSpeedButton;
    BT_M: TUniSpeedButton;
    BT_L: TUniSpeedButton;
    BT_K: TUniSpeedButton;
    BT_J: TUniSpeedButton;
    BT_Z: TUniSpeedButton;
    BT_Y: TUniSpeedButton;
    BT_X: TUniSpeedButton;
    BT_W: TUniSpeedButton;
    BT_V: TUniSpeedButton;
    BT_U: TUniSpeedButton;
    BT_T: TUniSpeedButton;
    BT_S: TUniSpeedButton;
    BT_R: TUniSpeedButton;
    UniPanel6: TUniPanel;
    edSearch: TUniEdit;
    BT_A: TUniSpeedButton;
    mnCadContatos: TUniMenuItem;
    mnCadCompromissos: TUniMenuItem;
    mnConsultas: TUniMenuItem;
    mnConsCompromissos: TUniMenuItem;
    pnlSearch: TUniPanel;
    bt_All: TUniSpeedButton;
    dqrConsMainid_agenda: TIntegerField;
    dqrConsMainid_uf: TIntegerField;
    dqrConsMainid_user: TIntegerField;
    dqrConsMainnome: TWideStringField;
    dqrConsMainnome_soudex: TWideStringField;
    dqrConsMaindt_nasc: TWideStringField;
    dqrConsMainendereco: TWideStringField;
    dqrConsMainnumero: TWideStringField;
    dqrConsMaincomplemento: TWideStringField;
    dqrConsMainbairro: TWideStringField;
    dqrConsMaincep: TWideStringField;
    dqrConsMaincidade: TWideStringField;
    dqrConsMaine_mail: TWideStringField;
    dqrConsMainfone1: TWideStringField;
    dqrConsMainfone2: TWideStringField;
    dqrConsMainfone3: TWideStringField;
    dqrConsMaincelular1: TWideStringField;
    dqrConsMaincelular2: TWideStringField;
    dqrConsMainobs: TBlobField;
    dqrConsMainfoto: TBlobField;
    dqrConsMainapelido: TWideStringField;
    dqrConsMaincont_pub: TIntegerField;
    dqrConsMainid_uf_1: TIntegerField;
    dqrConsMainuf: TWideStringField;
    dqrConsMaindesc_uf: TWideStringField;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniGroupBox1: TUniGroupBox;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    UniLabel18: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    mnLogin: TUniMenuItem;
    lblPesquisa: TUniLabel;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    dqrConsMainNome_delegado: TWideStringField;
    UniLabel16: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniLabel19: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    pnlStatusBar: TUniPanel;
    pnlDataHora: TUniPanel;
    pnlIPCliente: TUniPanel;
    lblIPClient: TUniLabel;
    pnlUsuarioLogado: TUniPanel;
    procedure UniFormActivate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure mnCadUsurioClick(Sender: TObject);
    procedure mnAlteraraSenhadoUsurioClick(Sender: TObject);
    procedure mnSobreClick(Sender: TObject);
    procedure cbxOpcClick(Sender: TObject);
    procedure FiltrarPorLetra(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure mnCadContatosClick(Sender: TObject);
    procedure mnLoginClick(Sender: TObject);
    procedure CallBackCadUsuario(ModalResult: TModalResult);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure UniDBGrid1TitleClick(Column: TUniDBGridColumn);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormCreate(Sender: TObject);
  private
    fIDMedico   :integer;
    fNome_Medico:String;
    fCRM_Medico :String;
    procedure Filtrar(edSearch:String);


    { Private declarations }
  public
    ModalCallBack:TModalCallBack;
    property IDMedico    :integer read fIDMedico;
    property Nome_Medico :String  read fNome_Medico;
    property CRM_Medico  :String  read fCRM_Medico;

    { Public declarations }
  end;

function frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  fmCadUsuario,  fmAltSenha, fmSobre, fmCadContatos, fmLogin;
/////////////////////////// Funções ////////////////////////////////////////////
function DeletarChar(Value, fCHAR: String): String;
begin
  Result:=StringReplace(Value,fCHAR,'',[rfReplaceAll, rfIgnoreCase]);
end;

Function SemMask(Fone:String):String;
Var
  aFone:String;
Begin
  Result:= '';
  aFone := Trim(DeletarChar(Fone, '-'));
  Case Length(aFone) of
    4    : if aFone<>'(  )' then
             Result:=Trim(Copy(Fone, 1,4));
    5..8 : Begin
             if Copy(Fone, 1,4) <>'(  )' then
               Result:=Trim(Copy(Fone, 1,4) + Copy(Fone, 5,4))
             else
               Result := Trim(Copy(Fone, 5,4));
           end;
    9..13: Begin
             if Copy(Fone, 1,4) <>'(  )' then
               Result:=Trim(Copy(Fone, 1,4) + Copy(Fone, 5,4) + Copy(Fone, 9,5))
             else
               Result:=Trim(Copy(Fone, 5,4)) + Trim(Copy(Fone, 9,5));
           end;
  end;
end;
////////////////////////////////////////////////////////////////////////////////
function frmMain: TfrmMain;
begin
  Result := TfrmMain(UniMainModule.GetFormInstance(TfrmMain));
end;

procedure TfrmMain.FiltrarPorLetra(Sender: TObject);
Var // faz a filtragem por letra ou desfaz a filtragem mostrando assim todos os regitros
  fWhere  :String;
  Campo   :String;
  aCaption:String;
begin
  inherited;
  if Sender.ClassName = 'TUniSpeedButton' then
    aCaption:=TUniSpeedButton(Sender).Caption;
  if Sender.ClassName = 'TUniMainMenuItem' then
    aCaption:=TMenuItem(Sender).Caption;
  //
  Campo:=' A.NOME ';
  //dqrConsMain.DisableControls;
  dqrConsMain.Close;
  dqrConsMain.SQL.Text:='SELECT A.*, U.* FROM TB_AGENDA A LEFT JOIN TB_UF U ON (U.ID_UF = A.ID_UF) WHERE (ID_USER = '+ IntToStr(UniMainModule.ID_User)+' or CONT_PUB = 1) ORDER BY A.Nome';
  if Trim(WhereExtra)<>'' then
    dqrConsMain.SQL.Text:='SELECT A.*, U.* FROM TB_AGENDA A LEFT JOIN TB_UF U ON (U.ID_UF = A.ID_UF)  WHERE '+Copy(Trim(WhereExtra), 1, Length(Trim(WhereExtra))-3)+'  ORDER BY A.Nome';
  if Length(aCaption)=1 then
  Begin
    fWhere:=aCaption+'%';
    dqrConsMain.SQL.Text:='SELECT A.*, U.* FROM TB_AGENDA A LEFT JOIN TB_UF U ON (U.ID_UF = A.ID_UF)  WHERE '+WhereExtra+Campo+' like '+QuotedStr(fWhere)+' ORDER BY A.Nome';
  end;
  dqrConsMain.Open;
  edSearch.SetFocus;
  if TUniSpeedButton(Sender).Tag = -1 then
    edSearch.Clear;
  //dqrConsMain.EnableControls;
end;

procedure TfrmMain.cbxOpcClick(Sender: TObject);
begin
  edSearch.SetFocus;
end;


procedure TfrmMain.Filtrar(edSearch:String);
Const
  Perc2='%''';
  Perc1='''%';

Var
  Search:String;

begin
  Search:=Trim(edSearch);
  case Length(Search) of
    1:Search:=Search+'%%%';
    2:Search:=Search+'%%';
    3:Search:=Search+'%';
  end;

//  dqrConsMain.DisableControls;
  dqrConsMain.Close;
  dqrConsMain.SQL.Clear;
  dqrConsMain.SQL.Add('SELECT A.*, U.* FROM TB_AGENDA A LEFT JOIN TB_UF U ON (U.ID_UF = A.ID_UF)');
  dqrConsMain.SQL.Add('WHERE');
  dqrConsMain.SQL.Add('(ID_USER = '+ IntToStr(UniMainModule.ID_User)+' or CONT_PUB = 1)');
  //
  if Length(Search)>=1 then
  Begin
    dqrConsMain.SQL.Add('AND'); // dqrConsMain.SQL.Add('AND ( ');
    dqrConsMain.SQL.Add('( A.Nome_delegado LIKE '+Perc1+Search+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.NOME     LIKE '+Perc1+Search+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.ENDERECO LIKE '+Perc1+Search+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.APELIDO  LIKE '+Perc1+Search+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.FONE1    LIKE '+Perc1+SemMask(Search)+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.FONE2    LIKE '+Perc1+SemMask(Search)+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.FONE3    LIKE '+Perc1+SemMask(Search)+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.CELULAR1 LIKE '+Perc1+SemMask(Search)+Perc2+' OR');
    dqrConsMain.SQL.Add(' A.CELULAR2 LIKE '+Perc1+SemMask(Search)+Perc2+')');
//    dqrConsMain.SQL.Add(')');
  end;
  dqrConsMain.SQL.Add(' ORDER BY A.NOME');
  dqrConsMain.Open;
//  dqrConsMain.SQL.SaveToFile('_Teste.txt');
//  dqrConsMain.EnableControls;
end;

procedure TfrmMain.edSearchChange(Sender: TObject);
begin
  if Trim(edSearch.Text) = '' then
    bt_All.Click;
end;

procedure TfrmMain.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Filtrar(edSearch.Text);
end;

procedure TfrmMain.mnSobreClick(Sender: TObject);
begin
  frmSobre.MyShowModal('2014', '2019');
end;

procedure TfrmMain.UniButton1Click(Sender: TObject);
begin
  pnlSearch.Visible := False;
end;

procedure TfrmMain.UniDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  pnlSearch.Visible := True;
{  if UniMainModule.isAdmin then
  Begin
    frmCadContatos.dqrMain.Locate('ID_AGENDA', dqrConsMain.FieldByName('id_agenda').AsInteger ,[loCaseInsensitive,loPartialKey]);
    frmCadContatos.ShowModal;
  end; }
end;

procedure TfrmMain.UniDBGrid1TitleClick(Column: TUniDBGridColumn);
begin
//  UniDBGrid1.Columns.Items[0].Color
  dqrConsMain.DisableControls;
  if dqrConsMain.SortedFields <> Column.FieldName then
  Begin
    dqrConsMain.SortedFields := Column.FieldName;
    dqrConsMain.SortType     := stAscending
  End
  else
  Begin
    Case dqrConsMain.SortType of
      stAscending :dqrConsMain.SortType := stDescending;
      stDescending:dqrConsMain.SortType := stAscending;
    End;
  End;
  dqrConsMain.First;
  UniDBGrid1.Refresh;
  dqrConsMain.EnableControls;
end;

procedure TfrmMain.UniFormActivate(Sender: TObject);
begin
  frmMain.WindowState := wsMaximized;
  dqrLogin.Close;
 // dqrLogin.ParamByName('setor').AsInteger  := UniMainModule.ID_Setor;
//  dqrLogin.ParamByName('senha').Value := UniMainModule.Senha;
  dqrLogin.Open;
end;

procedure TfrmMain.UniFormCreate(Sender: TObject);
begin
//  IniciarSistema;
end;

procedure TfrmMain.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2  : Begin
               if mnCadContatos.Visible then
               Begin
                 if not frmCadContatos.dqrMain.Locate('id_agenda', dqrConsMain.FieldByName('id_agenda').Value,[loCaseInsensitive]) then
                   if not  frmCadContatos.dqrMain.Locate('id_agenda', dqrConsMain.FieldByName('id_agenda').Value,[loCaseInsensitive, loPartialKey]) then
                     Warning('Teste')
                   else
                     frmCadContatos.ShowModal();
               End;
             End;
  end;
end;

procedure TfrmMain.UniFormShow(Sender: TObject);
begin
  UniMainModule.isAdmin        := False;
  mnCadastro.Visible           := UniMainModule.isAdmin;
//  UniStatusBar1.Panels[0].Text := 'IP - '+UniMainModule.IPRemoto;
//  UniStatusBar1.Panels[1].Text := 'Usuário - '+UniMainModule.Usuario;

  pnlDataHora.Caption      := FormatDateTime('dd " de " mmmm " de" yyyy', now);
  pnlUsuarioLogado.Caption := 'Usuário - '+UniMainModule.Usuario;


  UniFormActivate(Self);
  dqrConsMain.Active := True;
end;

procedure TfrmMain.mnCadContatosClick(Sender: TObject);
begin
  frmCadContatos.ShowModal();
end;

procedure TfrmMain.CallBackCadUsuario(ModalResult: TModalResult);
Begin
  //
end;

procedure TfrmMain.mnCadUsurioClick(Sender: TObject);
begin                     //TModalCallBack
  frmCadUsuario.ShowModal();
end;

procedure TfrmMain.mnLoginClick(Sender: TObject);
begin
  frmLogin.ShowModal;
//    mnCadastro.Visible := UniMainModule.isAdmin;
end;

procedure TfrmMain.mnAlteraraSenhadoUsurioClick(Sender: TObject);
begin
  frmAltSenha.ShowModal();
end;

initialization
  RegisterAppFormClass(TfrmMain);

end.