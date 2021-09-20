unit ServerModule;

interface

uses
  SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars,   UniKrUtil;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
  IniciarSistema;// Inializa as principais variáveis e localiza os asquivos do uniGUI
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
