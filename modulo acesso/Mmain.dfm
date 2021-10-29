object DMmain: TDMmain
  OldCreateOrder = False
  Left = 273
  Top = 195
  Height = 480
  Width = 696
  object ADOConexao: TADOConnection
    Attributes = [xaCommitRetaining]
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=TIASBS;Data Source=Pinguim;Use Procedure for Prepare=' +
      '1;Auto Translate=True;Packet Size=4096;Workstation ID=PINGUIM;Us' +
      'e Encryption for Data=False;Tag with column collation when possi' +
      'ble=False'
    ConnectOptions = coAsyncConnect
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 20
  end
end
