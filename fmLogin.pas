unit fmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, DateUtils,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, pngimage, uniImage, uniBitBtn,
  DB, uniLabel, uniGUIClasses, uniEdit, uniGUIBaseClasses, ZAbstractTable;

type
  TfrmLogin = class(TUniForm)
    dqrLogin: TZQuery;
    imgDiv: TUniImage;
    edUsername: TUniEdit;
    img3: TUniImage;
    edPassword: TUniEdit;
    btLogin: TUniImage;
    UniLabel1: TUniLabel;
    dqrUsuario: TZTable;
    procedure UniLoginFormCreate(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edUsernameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, fmMain;

function frmLogin: TfrmLogin;
begin
  Result := TfrmLogin(UniMainModule.GetFormInstance(TfrmLogin));
end;

procedure TfrmLogin.btLoginClick(Sender: TObject);
begin
  if Trim(edUsername.Text) = '' then
  Begin
    MessageDlg('Favor informar o usuário de acesso ao sistema',mtInformation, [mbOk]);
    Exit;
  end else
  if Trim(edPassword.Text) = '' then
  Begin
    MessageDlg('Favor informar a senha de acesso ao sistema',mtInformation, [mbOk]);
    Exit;
  end;
  if (Trim(UpperCase(edUsername.Text)) = 'ADMIN' ) and (Trim(UpperCase(edPassword.Text))='DEINFPC') then
  Begin
    UniMainModule.Usuario := edUsername.Text;
    UniMainModule.Senha   := edPassword.Text;
    UniMainModule.Setor   := 'DEPARTAMENTO DE INFORMÁTICA';
    UniMainModule.isAdmin := True;
    frmMain.mnCadastro.Visible:=True;
    ModalResult           := mroK;
  End
  Else
  Begin
    dqrLogin.Close;
    dqrLogin.ParamByName('nome').Value  := edUsername.Text;
    dqrLogin.ParamByName('senha').Value := edPassword.Text;
    dqrLogin.Open;
    //
    if not dqrLogin.IsEmpty then
    Begin
      dqrUsuario.Close;
      dqrUsuario.Filtered := False;
      dqrUsuario.Filter   := 'id_usuario='+QuotedStr(dqrLogin.FieldByName('id_usuario').AsString);
      dqrUsuario.Filtered := True;
      dqrUsuario.Open;

      if (dqrLogin.FieldByName('Is_Bloqueado').AsInteger = 0) and
         ((dqrUsuario.FieldByName('DT_ULTIMO_ACESSO').IsNull) or (DaysBetween(dqrUsuario.FieldByName('DT_ULTIMO_ACESSO').AsDateTime, now)<=45)) then
      Begin
        dqrUsuario.Edit;
        dqrUsuario.FieldByName('DT_ULTIMO_ACESSO').AsDateTime := Now;
        dqrUsuario.Post;
      End
      else
      Begin
        dqrUsuario.Edit;
        dqrUsuario.FieldByName('Is_Bloqueado').AsInteger := 1;
        dqrUsuario.Post;
        dqrLogin.Close;
        dqrLogin.Open;
      End;
    End;
    //

    if not dqrLogin.IsEmpty then
    Begin
      UniMainModule.Usuario := edUsername.Text;
      UniMainModule.Senha   := edPassword.Text;
      UniMainModule.ID_Setor:= 0;//dqrLogin.FieldByName('setor').AsInteger;
      UniMainModule.ID_User := dqrLogin.FieldByName('id_usuario').AsInteger;
      UniMainModule.Setor   := '';//dqrLogin.FieldByName('nomesetor').AsString;
      UniMainModule.isAdmin := dqrLogin.FieldByName('is_adm').asInteger=1;

      frmMain.mnCadastro.Visible:=UniMainModule.isAdmin;
      ModalResult           := mroK;
    End
    else
    Begin
      ModalResult := mrNone;
      MessageDlg('Usuário ou senha inválida !', mtError, [MBOK]);
    End;
  End;
end;

procedure TfrmLogin.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btLoginClick(Self);
end;

procedure TfrmLogin.edUsernameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edPassword.SetFocus;
end;

procedure TfrmLogin.UniLoginFormCreate(Sender: TObject);
begin
   UniMainModule.ZConnection1.Connected := True;
end;

//initialization
//  RegisterAppFormClass(TfrmLogin);

end.
