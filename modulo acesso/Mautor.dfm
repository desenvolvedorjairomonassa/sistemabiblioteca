object DMautor: TDMautor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 308
  Top = 267
  Height = 300
  Width = 411
  object ADOQautor: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT nome,idautor,Cutter'
      '  FROM lautor')
    Left = 35
    Top = 25
    object ADOQautornome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object ADOQautoridautor: TAutoIncField
      FieldName = 'idautor'
      ReadOnly = True
    end
    object ADOQautorCutter: TStringField
      FieldName = 'Cutter'
    end
  end
  object DSautor: TDataSource
    DataSet = ADOQautor
    Left = 105
    Top = 30
  end
end
