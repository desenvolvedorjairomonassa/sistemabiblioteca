object DMlocal: TDMlocal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 214
  Top = 134
  Height = 480
  Width = 696
  object ADOQlocal: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQlocalBeforePost
    Parameters = <
      item
        Name = 'idempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT idempresa,idlocal,Nome,codlocal,Ender,Bairro,Cidade,Feder' +
        'a,Pais,'
      '  CEP,E_mail,Web,Foto,DDI_1,DDI_2,DDI_3, DDD_1,DDD_2,DDD_3,'
      '  Fone_1,Fone_2,Fone_3,Ramal_1,Ramal_2,Ramal_3,ClassTel_1,'
      '  ClassTel_2,ClassTel_3, ObsTel_1,ObsTel_2,ObsTel_3,obs '
      ' FROM llocal'
      ' WHERE idempresa=:idempresa')
    Left = 56
    Top = 32
    object ADOQlocalidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object ADOQlocalidlocal: TAutoIncField
      FieldName = 'idlocal'
      ReadOnly = True
    end
    object ADOQlocalNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object ADOQlocalcodlocal: TStringField
      FieldName = 'codlocal'
    end
    object ADOQlocalEnder: TStringField
      FieldName = 'Ender'
      Size = 100
    end
    object ADOQlocalBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object ADOQlocalCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object ADOQlocalFedera: TStringField
      FieldName = 'Federa'
    end
    object ADOQlocalPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object ADOQlocalCEP: TStringField
      FieldName = 'CEP'
    end
    object ADOQlocalE_mail: TStringField
      FieldName = 'E_mail'
      Size = 100
    end
    object ADOQlocalWeb: TStringField
      FieldName = 'Web'
      Size = 100
    end
    object ADOQlocalFoto: TBlobField
      FieldName = 'Foto'
      BlobType = ftBlob
    end
    object ADOQlocalDDI_1: TIntegerField
      FieldName = 'DDI_1'
    end
    object ADOQlocalDDI_2: TIntegerField
      FieldName = 'DDI_2'
    end
    object ADOQlocalDDI_3: TIntegerField
      FieldName = 'DDI_3'
    end
    object ADOQlocalDDD_1: TIntegerField
      FieldName = 'DDD_1'
    end
    object ADOQlocalDDD_2: TIntegerField
      FieldName = 'DDD_2'
    end
    object ADOQlocalDDD_3: TIntegerField
      FieldName = 'DDD_3'
    end
    object ADOQlocalFone_1: TStringField
      FieldName = 'Fone_1'
    end
    object ADOQlocalFone_2: TStringField
      FieldName = 'Fone_2'
    end
    object ADOQlocalFone_3: TStringField
      FieldName = 'Fone_3'
    end
    object ADOQlocalRamal_1: TIntegerField
      FieldName = 'Ramal_1'
    end
    object ADOQlocalRamal_2: TIntegerField
      FieldName = 'Ramal_2'
    end
    object ADOQlocalRamal_3: TIntegerField
      FieldName = 'Ramal_3'
    end
    object ADOQlocalClassTel_1: TStringField
      FieldName = 'ClassTel_1'
    end
    object ADOQlocalClassTel_2: TStringField
      FieldName = 'ClassTel_2'
    end
    object ADOQlocalClassTel_3: TStringField
      FieldName = 'ClassTel_3'
    end
    object ADOQlocalObsTel_1: TMemoField
      FieldName = 'ObsTel_1'
      BlobType = ftMemo
    end
    object ADOQlocalObsTel_2: TMemoField
      FieldName = 'ObsTel_2'
      BlobType = ftMemo
    end
    object ADOQlocalObsTel_3: TMemoField
      FieldName = 'ObsTel_3'
      BlobType = ftMemo
    end
    object ADOQlocalobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
  end
  object DSlocal: TDataSource
    DataSet = ADOQlocal
    Left = 128
    Top = 32
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
end
