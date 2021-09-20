object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  DocumentKeyOptions = [dkDisableBackSpace]
  MonitoredKeys.Keys = <>
  Height = 143
  Width = 166
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'utf8'
    Properties.Strings = (
      'codepage=utf8'
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    HostName = '172.17.210.18'
    Port = 0
    Database = 'db_agenda'
    User = 'root'
    Password = 'Pcivil@2018'
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\htdocs\libmysql.dll'
    Left = 44
    Top = 8
  end
end
