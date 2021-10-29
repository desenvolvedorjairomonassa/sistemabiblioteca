object DMassunto: TDMassunto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 221
  Top = 106
  Height = 480
  Width = 696
  object ADOQassunto: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT assunto,idassto,ativo,cdd,cdu '
      '  FROM lassunto')
    Left = 50
    Top = 40
    object ADOQassuntoassunto: TStringField
      FieldName = 'assunto'
      Size = 100
    end
    object ADOQassuntoidassto: TAutoIncField
      FieldName = 'idassto'
      ReadOnly = True
    end
    object ADOQassuntoativo: TIntegerField
      FieldName = 'ativo'
    end
    object ADOQassuntocdd: TStringField
      FieldName = 'cdd'
    end
    object ADOQassuntocdu: TStringField
      FieldName = 'cdu'
    end
  end
  object DSassunto: TDataSource
    DataSet = ADOQassunto
    Left = 130
    Top = 40
  end
end
