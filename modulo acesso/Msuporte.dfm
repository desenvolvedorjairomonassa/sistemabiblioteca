object DMsuporte: TDMsuporte
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 331
  Top = 166
  Height = 480
  Width = 565
  object ADOQsuporte: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQsuporteBeforePost
    AfterPost = ADOQsuporteAfterPost
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
      'SELECT idsuporte, arvore , suporte, descricao,'
      '   idempresa, parent_sup,  Filhos'
      ' FROM lsuporte'
      '     WHERE idempresa= :idempresa'
      'ORDER BY arvore')
    Left = 40
    Top = 48
    object ADOQsuporteidsuporte: TAutoIncField
      FieldName = 'idsuporte'
      ReadOnly = True
    end
    object ADOQsuportearvore: TStringField
      FieldName = 'arvore'
      Size = 30
    end
    object ADOQsuportesuporte: TStringField
      FieldName = 'suporte'
      Size = 100
    end
    object ADOQsuportedescricao: TStringField
      FieldName = 'descricao'
      Size = 250
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
  end
  object DSsuporte: TDataSource
    DataSet = ADOQsuporte
    Left = 118
    Top = 48
  end
  object ADOQgrupo: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
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
    Top = 179
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
  object ADOQemp: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    DataSource = DSsuporte
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
    Left = 45
    Top = 115
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
    Top = 115
  end
  object DSgrupo: TDataSource
    DataSet = ADOQgrupo
    Left = 112
    Top = 179
  end
  object ADOSPancestral: TADOStoredProc
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    ProcedureName = 'ancestral;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 200
    Top = 65
  end
end
