object DMgrupo: TDMgrupo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 285
  Top = 161
  Height = 479
  Width = 638
  object ADOQgrupo: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQgrupoBeforePost
    Parameters = <
      item
        Name = 'idempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        ' SELECT idgrupo ,  codigo, descricao, filhos, parent_grp, idempr' +
        'esa'
      '     FROM lgrupo'
      '     WHERE idempresa= :idempresa')
    Left = 48
    Top = 16
    object ADOQgrupoidgrupo: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'idgrupo'
      ReadOnly = True
    end
    object ADOQgrupocodigo: TStringField
      FieldName = 'codigo'
    end
    object ADOQgrupodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object ADOQgrupofilhos: TSmallintField
      FieldName = 'filhos'
    end
    object ADOQgrupoparent_grp: TIntegerField
      FieldName = 'parent_grp'
    end
    object ADOQgrupoidempresa: TIntegerField
      FieldName = 'idempresa'
    end
  end
  object DSgrupo: TDataSource
    DataSet = ADOQgrupo
    Left = 136
    Top = 16
  end
end
