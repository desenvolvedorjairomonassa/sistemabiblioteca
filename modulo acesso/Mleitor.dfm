object DMleitor: TDMleitor
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 133
  Top = 108
  Height = 480
  Width = 696
  object ADOQleitor: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQleitorBeforePost
    OnNewRecord = ADOQleitorNewRecord
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
      'SELECT Idleitor, Idgrupo, Nome, Ender, Cidade, '
      '   Bairro, Federa, Pais, CEP, E_mail, Web, Obs,'
      '   comercial, residencial, Celular, Dtnascimento, '
      'idempresa,ativo, foto'
      '  FROM lleitor'
      ' WHERE idempresa=:idempresa')
    Left = 45
    Top = 35
    object ADOQleitorIdleitor: TAutoIncField
      FieldName = 'Idleitor'
      ReadOnly = True
    end
    object ADOQleitorIdgrupo: TIntegerField
      FieldName = 'Idgrupo'
    end
    object ADOQleitorNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object ADOQleitorEnder: TStringField
      FieldName = 'Ender'
      Size = 100
    end
    object ADOQleitorCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object ADOQleitorBairro: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object ADOQleitorFedera: TStringField
      FieldName = 'Federa'
    end
    object ADOQleitorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADOQleitorCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object ADOQleitorE_mail: TStringField
      FieldName = 'E_mail'
      Size = 100
    end
    object ADOQleitorWeb: TStringField
      FieldName = 'Web'
      Size = 100
    end
    object ADOQleitorObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object ADOQleitorcomercial: TStringField
      FieldName = 'comercial'
    end
    object ADOQleitorresidencial: TStringField
      FieldName = 'residencial'
    end
    object ADOQleitorCelular: TStringField
      FieldName = 'Celular'
    end
    object ADOQleitorDtnascimento: TDateTimeField
      FieldName = 'Dtnascimento'
    end
    object ADOQleitoridempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object ADOQleitorativo: TSmallintField
      FieldName = 'ativo'
    end
    object ADOQleitorfoto: TBlobField
      FieldName = 'foto'
      BlobType = ftBlob
    end
  end
  object DSleitor: TDataSource
    DataSet = ADOQleitor
    Left = 115
    Top = 35
  end
  object DSPais: TDataSource
    AutoEdit = False
    DataSet = ADOQPais
    Left = 130
    Top = 110
  end
  object ADOQPais: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT pais '
      '  FROM LDPais')
    Left = 55
    Top = 110
  end
  object ADOQRegiao: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = DSPais
    Parameters = <
      item
        Name = 'pais'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT estado'
      '  FROM vregiao'
      '  WHERE pais= :pais')
    Left = 52
    Top = 180
  end
  object DSRegiao: TDataSource
    DataSet = ADOQRegiao
    Left = 132
    Top = 185
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
        'esa,grupo'
      '     FROM lgrupo'
      '     WHERE idempresa= :idempresa and filhos = 0')
    Left = 48
    Top = 273
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
    object ADOQgrupogrupo: TStringField
      FieldName = 'grupo'
      Size = 100
    end
  end
  object DSgrupo: TDataSource
    DataSet = ADOQgrupo
    Left = 117
    Top = 269
  end
end
