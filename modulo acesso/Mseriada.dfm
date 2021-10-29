object DMseriada: TDMseriada
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 209
  Top = 106
  Height = 480
  Width = 696
  object ADOQidioma: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  idioma from LDidioma')
    Left = 30
    Top = 120
  end
  object DSidioma: TDataSource
    AutoEdit = False
    DataSet = ADOQidioma
    Left = 95
    Top = 120
  end
  object ADOQEditora: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT editora, ided,codedit,razaosocial '
      '  FROM leditora'
      '  WHERE TEdForn IN ('#39'EDITORA'#39' ,'#39'AMBOS'#39') and ativo=1'
      '   ORDER BY editora')
    Left = 30
    Top = 185
  end
  object DSeditora: TDataSource
    AutoEdit = False
    DataSet = ADOQEditora
    Left = 95
    Top = 185
  end
  object ADOQsuporte: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT suporte,codigo,idsuporte'
      '  FROM lsuporte'
      '   WHERE ativo=1 and '
      '    (SELECT suporte FROM lsuporte p '
      
        '         WHERE p.idsuporte=lsuporte.parent_sup) ='#39'Publicação ser' +
        'iada'#39)
    Left = 30
    Top = 260
  end
  object DSsuporte: TDataSource
    AutoEdit = False
    DataSet = ADOQsuporte
    Left = 100
    Top = 255
  end
  object ADOQautor: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT nome,idautor,Cutter'
      '  FROM lautor')
    Left = 180
    Top = 150
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
  object ADOQtiporesp: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT responsabilidade '
      ' FROM ldresponsabilidade')
    Left = 250
    Top = 150
    object ADOQtiporespresponsabilidade: TStringField
      FieldName = 'responsabilidade'
      Size = 50
    end
  end
  object ADOQassunto: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT assunto,idassto,ativo,cdd,cdu '
      '  FROM lassunto'
      '  WHERE ativo=1')
    Left = 185
    Top = 260
  end
  object ADOQperiodico: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT Idobra,Titulo,ISSN,CNN,'
      'Periodicidade,Idioma,Local,Data_ini,Data_fim,Total,'
      'Tperdas,Nt_geral,IDED,idsuporte,tipo'
      'FROM lperiodico')
    Left = 35
    Top = 30
    object ADOQperiodicoIdobra: TAutoIncField
      FieldName = 'Idobra'
      ReadOnly = True
    end
    object ADOQperiodicoTitulo: TStringField
      FieldName = 'Titulo'
      Size = 100
    end
    object ADOQperiodicoISSN: TStringField
      FieldName = 'ISSN'
      Size = 13
    end
    object ADOQperiodicoCNN: TStringField
      FieldName = 'CNN'
    end
    object ADOQperiodicoPeriodicidade: TStringField
      FieldName = 'Periodicidade'
    end
    object ADOQperiodicoIdioma: TStringField
      FieldName = 'Idioma'
    end
    object ADOQperiodicoLocal: TStringField
      FieldName = 'Local'
      Size = 150
    end
    object ADOQperiodicoData_ini: TDateTimeField
      FieldName = 'Data_ini'
    end
    object ADOQperiodicoData_fim: TDateTimeField
      FieldName = 'Data_fim'
    end
    object ADOQperiodicoTotal: TIntegerField
      FieldName = 'Total'
    end
    object ADOQperiodicoTperdas: TIntegerField
      FieldName = 'Tperdas'
    end
    object ADOQperiodicoNt_geral: TMemoField
      FieldName = 'Nt_geral'
      BlobType = ftMemo
    end
    object ADOQperiodicoIDED: TIntegerField
      FieldName = 'IDED'
    end
    object ADOQperiodicoidsuporte: TIntegerField
      FieldName = 'idsuporte'
    end
    object ADOQperiodicotipo: TStringField
      FieldName = 'tipo'
      Size = 21
    end
  end
  object DSperiodico: TDataSource
    DataSet = ADOQperiodico
    Left = 120
    Top = 35
  end
end
