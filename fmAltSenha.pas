unit fmAltSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniSpeedButton, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, uniGroupBox, uniEdit, uniDBEdit, uniLabel, DB,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset, ZSqlUpdate;

type
  TfrmAltSenha = class(TUniForm)
    UniPanel1: TUniPanel;
    btOk: TUniBitBtn;
    btCancel: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    edUsuario: TUniDBEdit;
    edSenhaAtual: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniGroupBox3: TUniGroupBox;
    edConfirmacao: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    edNovaSenha: TUniEdit;
    ddsUsuario: TDataSource;
    dqrUsuario: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
    procedure btCancelClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    procedure Warning(Msg: string);
    { Private declarations }
  public
    { Public declarations }
  end;

function frmAltSenha: TfrmAltSenha;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmAltSenha: TfrmAltSenha;
begin
  Result := TfrmAltSenha(UniMainModule.GetFormInstance(TfrmAltSenha));
end;

procedure TfrmAltSenha.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAltSenha.Warning(Msg: string);
Begin
  MessageDlg(Msg, mtWarning, [mbOk]);
end;

procedure TfrmAltSenha.btOkClick(Sender: TObject);
begin
  if Trim(edSenhaAtual.Text)='' then
  Begin
    Warning('Favor Informar a Senha atual.');
    Exit;
  End
  else
    if Trim(edNovaSenha.Text)='' then
    Begin
      Warning('Favor Informar a Nova Senha.');
      Exit;
    End
    else
      if Trim(edConfirmacao.Text)='' then
      Begin
        Warning('Favor Informar a confirmação da Senha.');
        Exit;
      End
      else
        if Trim(edNovaSenha.Text) <> Trim(edConfirmacao.Text) then
        Begin
          Warning('A nova senha está diferente da senha de confirmação.');
          Exit;
        End;


  if Trim(edSenhaAtual.Text) <>  dqrUsuario.FieldByName('senha').asString then
  Begin
    Warning('A senha atual não está correta.');
    Exit;
  End;

  dqrUsuario.Edit;
  dqrUsuario.FieldByName('senha').AsString := Trim(edNovaSenha.Text);
  dqrUsuario.Post;
  Warning('Senha alterada com sucesso.');
  Close;
end;

procedure TfrmAltSenha.UniFormShow(Sender: TObject);
begin
  dqrUsuario.Close;
  dqrUsuario.ParamByName('nome').AsString := UniMainModule.Usuario;
  dqrUsuario.ParamByName('senha').AsString:= UniMainModule.Senha;
  dqrUsuario.Open;
end;

end.
