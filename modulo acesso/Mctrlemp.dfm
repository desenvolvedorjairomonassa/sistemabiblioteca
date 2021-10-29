object DMctrlemp: TDMctrlemp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 224
  Top = 199
  Height = 480
  Width = 696
  object ADOQemp: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQempBeforePost
    OnNewRecord = ADOQempNewRecord
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
      'SELECT Idgrupo, idempresa,  idsuporte, Flag_emp,'
      'N_emp, N_dias, RecMulta, Multa, Bloqueio,'
      ' Suspende, SuspFixo, Spen'
      'FROM lctrlemp'
      'WHERE idempresa = :idempresa')
    Left = 40
    Top = 40
    object ADOQempIdgrupo: TIntegerField
      FieldName = 'Idgrupo'
    end
    object ADOQempidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object ADOQempidsuporte: TIntegerField
      FieldName = 'idsuporte'
    end
    object ADOQempFlag_emp: TIntegerField
      FieldName = 'Flag_emp'
    end
    object ADOQempN_emp: TIntegerField
      FieldName = 'N_emp'
    end
    object ADOQempN_dias: TIntegerField
      FieldName = 'N_dias'
    end
    object ADOQempRecMulta: TIntegerField
      FieldName = 'RecMulta'
    end
    object ADOQempMulta: TBCDField
      FieldName = 'Multa'
      Precision = 19
    end
    object ADOQempBloqueio: TIntegerField
      FieldName = 'Bloqueio'
    end
    object ADOQempSuspende: TIntegerField
      FieldName = 'Suspende'
    end
    object ADOQempSuspFixo: TIntegerField
      FieldName = 'SuspFixo'
    end
    object ADOQempSpen: TIntegerField
      FieldName = 'Spen'
    end
  end
  object DSemp: TDataSource
    DataSet = ADOQemp
    Left = 112
    Top = 40
  end
  object DSsuporte: TDataSource
    DataSet = ADOQsuporte
    Left = 116
    Top = 111
  end
  object ADOQgrupo: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
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
      '     WHERE idempresa= :idempresa and filhos = 0')
    Left = 40
    Top = 184
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
    Left = 112
    Top = 184
  end
  object ADOQsuporte: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
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
      'SELECT idsuporte, idempresa, codigo, parent_sup, filhos ,suporte'
      '  FROM lsuporte'
      '  WHERE idempresa= :idempresa'
      'and filhos = 0 and tipo = '#39'Monografia'#39)
    Left = 40
    Top = 118
    object ADOQsuporteidsuporte: TAutoIncField
      FieldName = 'idsuporte'
      ReadOnly = True
    end
    object ADOQsuporteCodigo: TStringField
      FieldName = 'Codigo'
    end
    object ADOQsuporteidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object ADOQsuporteparent_sup: TIntegerField
      FieldName = 'parent_sup'
    end
    object ADOQsuporteFilhos: TSmallintField
      FieldName = 'Filhos'
    end
    object ADOQsuportesuporte: TStringField
      FieldName = 'suporte'
      Size = 100
    end
  end
end
