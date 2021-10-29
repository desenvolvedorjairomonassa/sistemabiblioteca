object DMmono: TDMmono
  OldCreateOrder = False
  Height = 0
  Width = 0
  object DSmono: TDataSource
    DataSet = Qmono
    Left = 32
    Top = 16
  end
  object Qmono: TQuery
    DatabaseName = 'TIASB'
    SQL.Strings = (
      'select * from lmono')
    Left = 96
    Top = 16
  end
end
