unit MainModule;

interface

uses
  IniFiles, UnikrUtil,
  uniGUIForm, Dialogs, uniGUIBaseClasses,
  uniGUIMainModule, SysUtils, Classes, ZAbstractConnection, ZConnection;

type
  TUniMainModule = class(TUniGUIMainModule)
    ZConnection1: TZConnection;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    FSenha   : String;
    FUsuario : String;
    FInf     : String;
    FisAdmin : Boolean;
    FID_Setor: integer;
    FID_USer : Integer;
    FSetor: String;
    FDatabaseName: String;
    FHostName: String;
    procedure SetSenha(const Value: String);
    procedure SetUsuario(const Value: String);
    procedure SetInf(const Value: String);
    function GetInf: String;
    function GetIPRemoto: String;
    function GetHomeDir: String;
    function GerIPServidor: String;
    procedure SetisAdmin(const Value: Boolean);
    procedure SetID_Setor(const Value: integer);
    procedure SetID_User(const Value: Integer);
    procedure SetSetor(const Value: String);
    procedure SetDatabaseName(const Value: String);
    procedure SetHostName(const Value: String);
    procedure GravaIni;
    procedure LeIni;
    { Private declarations }
  public
    //
    property ID_User      : Integer read FID_User       write SetID_User;
    property ID_Setor     : integer read FID_Setor      write SetID_Setor;
    property Setor        : String  read FSetor         write SetSetor;
    property Usuario      : String  read FUsuario       write SetUsuario;
    property Senha        : String  read FSenha         write SetSenha;
    property Inf          : String  read GetInf         write SetInf;
    property IPRemoto     : String  read GetIPRemoto;   // Retorna o IP do Cliente que está acessando o Site
    Property HomeDir      : String  read GetHomeDir;    // Retorna o diretório do arquivo CGI
    property IPServidor   : String  read GerIPServidor; // Retorna o IP do Servidor que o site está hospedado
    property isAdmin      : Boolean read FisAdmin       write SetisAdmin;
    property HostName     : String  read FHostName      write SetHostName;
    property DatabaseName : String  read FDatabaseName  write SetDatabaseName;
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

function CountToken(const aTokenList:string; aTokenSeparator:char='|'):Integer;
var
  i:integer;
begin
  Result:=0;
  i:=1;
  while i<=Length(aTokenList) do
  begin
    if aTokenList[i] = aTokenSeparator then Inc(Result);
    Inc(i);
  end;
end;

function TokenN(const aTokenList:string; aIndex:integer; aTokenSeparator:char='|'):string;
var
  i,m,count:integer;
begin
  Result:='';
  count:=0;
  i:=1;
  while i<=Length(aTokenList) do
  begin
    m:=i;
    while (i<=Length(aTokenList)) and (aTokenList[i]<>aTokenSeparator) do
      Inc(i);
    inc(count);
    if count=aIndex then
    begin
      Result:=Copy(aTokenList,m,i-m);
      break;
    end;
    Inc(i);
  end;
end;

procedure TUniMainModule.GravaIni;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(HomeDir + 'Config.ini');
  try
    ArqIni.WriteString('Configs', 'HostName', '');
    ArqIni.WriteString('Configs', 'DatabaseName', '');
  finally
    FreeAndNil(ArqIni);
  end;
end;

procedure TUniMainModule.LeIni;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(HomeDir + 'Config.ini');
  try
    HostName   := ArqIni.ReadString('Configs', 'HostName', '127.0.0.1');
    DatabaseName := ArqIni.ReadString('Configs', 'DatabaseName', '');
  finally
    FreeAndNil(ArqIni);
  end;
end;

function TUniMainModule.GerIPServidor: String;
begin
  Result:=uniGUIApplication.UniSession.Host;
end;

function TUniMainModule.GetHomeDir: String;
//Const
//  Separador :Char='\';
//Var
//  Token, Cache:String;

begin
  Result:= UnikrUtil.HomeDir;
//  Token := UniServerModule.LocalCachePath;
//  Cache := TokenN(Token,CountToken(Token, Separador), Separador);
//  Result:=Copy(Token,1, Pos(Cache, Token)-1);
end;

function TUniMainModule.GetInf: String;
begin
  Result:=uniGUIApplication.UniSession.Host +
  '  '+uniGUIApplication.UniSession.URLPath;
end;

function TUniMainModule.GetIPRemoto: String;
begin
  Result:=UniSession.UniApplication.RemoteAddress;//uniGUIApplication.UniApplication.RemoteAddress//; GetRemoteAddress;
end;

procedure TUniMainModule.SetDatabaseName(const Value: String);
begin
  FDatabaseName := Value;
end;

procedure TUniMainModule.SetHostName(const Value: String);
begin
  FHostName := Value;
end;

procedure TUniMainModule.SetID_Setor(const Value: integer);
begin
  FID_Setor := Value;
end;

procedure TUniMainModule.SetID_User(const Value: Integer);
begin
  FID_User := Value;
end;

procedure TUniMainModule.SetInf(const Value: String);
begin
  FInf := Value;
end;

procedure TUniMainModule.SetisAdmin(const Value: Boolean);
begin
  FisAdmin := Value;
end;

procedure TUniMainModule.SetSenha(const Value: String);
begin
  FSenha := Value;
end;

procedure TUniMainModule.SetSetor(const Value: String);
begin
  FSetor := Value;
end;

procedure TUniMainModule.SetUsuario(const Value: String);
begin
  FUsuario := Value;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
Var
  fFile : String;

begin
  fFile := HomeDir + 'Config.ini';
  if FileExists(fFile) then
    LeIni
  else
    GravaIni;

  CurrencyFormat   :=0;
  NegCurrFormat    :=0;
  ThousandSeparator:='.';
  DecimalSeparator :=',';
  CurrencyDecimals :=2;
  DateSeparator    :='/';
  ShortDateFormat  :='dd/MM/yyyy';
  LongDateFormat   :='dddd, d'' de ''MMMM'' de ''yyyy';
  TimeSeparator    :=':';
  TimeAMString     :='';
  TimePMString     :='';
  ShortTimeFormat  :='hh:mm';
  LongTimeFormat   :='hh:mm:ss';
  //
  ZConnection1.HostName := HostName;
  ZConnection1.Database := DatabaseName;
  //
  ZConnection1.AutoCommit := True;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
