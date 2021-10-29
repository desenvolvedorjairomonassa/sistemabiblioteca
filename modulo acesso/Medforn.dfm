object DMEditForn: TDMEditForn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 221
  Top = 103
  Height = 480
  Width = 696
  object ADOQEditForn: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    OnNewRecord = ADOQEditFornNewRecord
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT TEdForn, Ativo, IDED, Codedit, Editora,'
      ' RazaoSocial, CGC, Ender, Bairro, Cidade, '
      'Federa, Pais, CEP, E_mail, Web, '
      'Obs, DDI_1, DDI_2, DDI_3, DDD_1,'
      ' DDD_2, DDD_3, Fone_1, Fone_2, Fone_3, '
      'Ramal_1, Ramal_2, Ramal_3, ClassTel_1, '
      'ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2, '
      'ObsTel_3'
      '       FROM leditora')
    Left = 60
    Top = 20
    object ADOQEditFornTEdForn: TStringField
      FieldName = 'TEdForn'
    end
    object ADOQEditFornAtivo: TIntegerField
      FieldName = 'Ativo'
    end
    object ADOQEditFornIDED: TAutoIncField
      FieldName = 'IDED'
      ReadOnly = True
    end
    object ADOQEditFornCodedit: TStringField
      FieldName = 'Codedit'
    end
    object ADOQEditFornEditora: TStringField
      FieldName = 'Editora'
      Size = 100
    end
    object ADOQEditFornRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 100
    end
    object ADOQEditFornCGC: TStringField
      FieldName = 'CGC'
      Size = 30
    end
    object ADOQEditFornEnder: TStringField
      FieldName = 'Ender'
      Size = 100
    end
    object ADOQEditFornBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object ADOQEditFornCidade: TStringField
      FieldName = 'Cidade'
      Size = 100
    end
    object ADOQEditFornFedera: TStringField
      FieldName = 'Federa'
    end
    object ADOQEditFornPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object ADOQEditFornCEP: TStringField
      FieldName = 'CEP'
    end
    object ADOQEditFornE_mail: TStringField
      FieldName = 'E_mail'
      Size = 100
    end
    object ADOQEditFornWeb: TStringField
      FieldName = 'Web'
      Size = 100
    end
    object ADOQEditFornObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object ADOQEditFornDDI_1: TIntegerField
      FieldName = 'DDI_1'
    end
    object ADOQEditFornDDI_2: TIntegerField
      FieldName = 'DDI_2'
    end
    object ADOQEditFornDDI_3: TIntegerField
      FieldName = 'DDI_3'
    end
    object ADOQEditFornDDD_1: TIntegerField
      FieldName = 'DDD_1'
    end
    object ADOQEditFornDDD_2: TIntegerField
      FieldName = 'DDD_2'
    end
    object ADOQEditFornDDD_3: TIntegerField
      FieldName = 'DDD_3'
    end
    object ADOQEditFornFone_1: TStringField
      FieldName = 'Fone_1'
    end
    object ADOQEditFornFone_2: TStringField
      FieldName = 'Fone_2'
    end
    object ADOQEditFornFone_3: TStringField
      FieldName = 'Fone_3'
    end
    object ADOQEditFornRamal_1: TIntegerField
      FieldName = 'Ramal_1'
    end
    object ADOQEditFornRamal_2: TIntegerField
      FieldName = 'Ramal_2'
    end
    object ADOQEditFornRamal_3: TIntegerField
      FieldName = 'Ramal_3'
    end
    object ADOQEditFornClassTel_1: TStringField
      FieldName = 'ClassTel_1'
    end
    object ADOQEditFornClassTel_2: TStringField
      FieldName = 'ClassTel_2'
    end
    object ADOQEditFornClassTel_3: TStringField
      FieldName = 'ClassTel_3'
    end
    object ADOQEditFornObsTel_1: TStringField
      FieldName = 'ObsTel_1'
    end
    object ADOQEditFornObsTel_2: TStringField
      FieldName = 'ObsTel_2'
    end
    object ADOQEditFornObsTel_3: TStringField
      FieldName = 'ObsTel_3'
    end
  end
  object DSEditForn: TDataSource
    DataSet = ADOQEditForn
    Left = 150
    Top = 20
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
    Left = 60
    Top = 180
  end
  object DSRegiao: TDataSource
    DataSet = ADOQRegiao
    Left = 140
    Top = 185
  end
end
