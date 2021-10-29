object DMempresa: TDMempresa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 0
  Width = 0
  object ADOQempresa: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    Parameters = <>
    SQL.Strings = (
      'SELECT Nome, idempresa, Razaosocial, Ender, Bairro, '
      '              Cidade, Federa, Pais, CEP, E_mail, Web, Foto,'
      '              DDI_1, DDI_2, DDI_3, DDD_1, DDD_2, DDD_3, Fone_1, '
      
        '              Fone_2, Fone_3, Ramal_1, Ramal_2, Ramal_3, ClassTe' +
        'l_1,'
      
        '              ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2, ObsTel' +
        '_3'
      '    FROM lempresa')
    Left = 40
    Top = 40
  end
  object DSempresa: TDataSource
    DataSet = ADOQempresa
    Left = 136
    Top = 40
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
