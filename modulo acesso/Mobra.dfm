object DMobra: TDMobra
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 203
  Top = 138
  Height = 480
  Width = 730
  object ADOQobra: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQobraBeforePost
    ParamCheck = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'SELECT  Idobra, tipo, Titulo, Classifica, Cutter, ISBN, Nvolbib,' +
        ' Nvolfis,'
      
        'Local, DescriFi, Idioma, Titulo_Orig, Total, Tperdas, Serie, Nt_' +
        'Geral,'
      'Resumo, Conteudo, IDED,idsuporte'
      '  FROM lobramon'
      '  WHERE tipo='#39'Monografia'#39)
    Left = 38
    Top = 19
    object ADOQobraTitulo: TStringField
      FieldName = 'Titulo'
      Size = 100
    end
    object ADOQobraIdobra: TAutoIncField
      FieldName = 'Idobra'
      ReadOnly = True
    end
    object ADOQobraClassifica: TStringField
      FieldName = 'Classifica'
      Size = 30
    end
    object ADOQobraCutter: TStringField
      FieldName = 'Cutter'
      Size = 30
    end
    object ADOQobraISBN: TStringField
      FieldName = 'ISBN'
      Size = 13
    end
    object ADOQobraNvolbib: TIntegerField
      FieldName = 'Nvolbib'
    end
    object ADOQobraNvolfis: TIntegerField
      FieldName = 'Nvolfis'
    end
    object ADOQobraLocal: TStringField
      FieldName = 'Local'
      Size = 150
    end
    object ADOQobraDescriFi: TMemoField
      FieldName = 'DescriFi'
      BlobType = ftMemo
    end
    object ADOQobraIdioma: TStringField
      FieldName = 'Idioma'
    end
    object ADOQobraTitulo_Orig: TStringField
      FieldName = 'Titulo_Orig'
      Size = 100
    end
    object ADOQobraTotal: TIntegerField
      FieldName = 'Total'
    end
    object ADOQobraTperdas: TIntegerField
      FieldName = 'Tperdas'
    end
    object ADOQobraSerie: TStringField
      FieldName = 'Serie'
      Size = 100
    end
    object ADOQobraNt_Geral: TMemoField
      FieldName = 'Nt_Geral'
      BlobType = ftMemo
    end
    object ADOQobraResumo: TMemoField
      FieldName = 'Resumo'
      BlobType = ftMemo
    end
    object ADOQobraConteudo: TMemoField
      FieldName = 'Conteudo'
      BlobType = ftMemo
    end
    object ADOQobraIDED: TIntegerField
      FieldName = 'IDED'
    end
    object ADOQobraidsuporte: TIntegerField
      FieldName = 'idsuporte'
    end
    object ADOQobraCodedit: TStringField
      FieldKind = fkLookup
      FieldName = 'Codedit'
      LookupDataSet = ADOQEditora
      LookupKeyFields = 'ided'
      LookupResultField = 'codedit'
      KeyFields = 'IDED'
      Lookup = True
    end
    object ADOQobratipo: TStringField
      FieldName = 'tipo'
      Size = 21
    end
    object ADOQobraEditora: TStringField
      FieldKind = fkLookup
      FieldName = 'Editora'
      LookupDataSet = ADOQEditora
      LookupKeyFields = 'ided'
      LookupResultField = 'editora'
      KeyFields = 'IDED'
      Size = 50
      Lookup = True
    end
  end
  object ADOQidioma: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select  idioma from LDidioma')
    Left = 30
    Top = 80
  end
  object DSidioma: TDataSource
    AutoEdit = False
    DataSet = ADOQidioma
    Left = 87
    Top = 88
  end
  object DSobra: TDataSource
    DataSet = ADOQobra
    Left = 85
    Top = 19
  end
  object ADOQEditora: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT editora, ided,codedit,razaosocial '
      '  FROM leditora'
      '  WHERE TEdForn IN ('#39'EDITORA'#39' ,'#39'AMBOS'#39') and ativo=1'
      '   ORDER BY editora')
    Left = 30
    Top = 145
  end
  object DSeditora: TDataSource
    AutoEdit = False
    DataSet = ADOQEditora
    Left = 95
    Top = 153
  end
  object DSsuporte: TDataSource
    AutoEdit = False
    DataSet = ADOQsuporte
    Left = 100
    Top = 223
  end
  object DSmono: TDataSource
    DataSet = ADOQmono
    Left = 223
    Top = 20
  end
  object ADOQmono: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQmonoBeforePost
    OnNewRecord = ADOQmonoNewRecord
    DataSource = DSobra
    Parameters = <
      item
        Name = 'Idobra'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT '
      '  Idmono,Tipo,Titulo_exe,Tombo,Volume,Tomo,'
      '  Edicao,Impressao,Tiragem,Atualizado,Revisado,'
      ' Aumentado,Ampliado,Ano_pub,Estacao,Ilust,Npag,'
      ' Dimensao,ISBN,idlocal,idempresa,Idobra,Dono,'
      ' Perda,Motivo,No_exe,Flag_emp,Razao,Capa,'
      ' TipoAqs,refbibli,Data_compra,Data_pg,Data_chegada,'
      ' Preco,Obs,Idforn'
      ' FROM lmono'
      'Where'
      '  lmono.Idobra = :Idobra')
    Left = 161
    Top = 20
    object IntegerField1: TIntegerField
      FieldName = 'Idmono'
    end
    object StringField1: TStringField
      FieldName = 'Tipo'
      Size = 21
    end
    object StringField2: TStringField
      FieldName = 'Titulo_exe'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'Tombo'
    end
    object StringField4: TStringField
      FieldName = 'Volume'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Tomo'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Edicao'
    end
    object ADOQmonoImpressao: TIntegerField
      FieldName = 'Impressao'
    end
    object ADOQmonoTiragem: TIntegerField
      FieldName = 'Tiragem'
    end
    object ADOQmonoAtualizado: TIntegerField
      DefaultExpression = '0'
      FieldName = 'Atualizado'
    end
    object ADOQmonoRevisado: TIntegerField
      DefaultExpression = '0'
      FieldName = 'Revisado'
    end
    object ADOQmonoAumentado: TIntegerField
      DefaultExpression = '0'
      FieldName = 'Aumentado'
    end
    object ADOQmonoAmpliado: TIntegerField
      DefaultExpression = '0'
      FieldName = 'Ampliado'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Ano_pub'
    end
    object ADOQmonoEstacao: TStringField
      FieldName = 'Estacao'
    end
    object ADOQmonoIlust: TIntegerField
      DefaultExpression = '0'
      FieldName = 'Ilust'
    end
    object ADOQmonoNpag: TIntegerField
      FieldName = 'Npag'
    end
    object ADOQmonoDimensao: TStringField
      FieldName = 'Dimensao'
    end
    object ADOQmonoISBN: TStringField
      FieldName = 'ISBN'
      Size = 13
    end
    object IntegerField5: TIntegerField
      FieldName = 'idlocal'
    end
    object IntegerField6: TIntegerField
      FieldName = 'idempresa'
    end
    object IntegerField7: TIntegerField
      FieldName = 'Idobra'
    end
    object ADOQmonoDono: TStringField
      FieldName = 'Dono'
      Size = 100
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Perda'
    end
    object ADOQmonoMotivo: TMemoField
      FieldName = 'Motivo'
      BlobType = ftMemo
    end
    object IntegerField8: TIntegerField
      FieldName = 'No_exe'
    end
    object ADOQmonoFlag_emp: TIntegerField
      DefaultExpression = '0'
      FieldName = 'Flag_emp'
    end
    object ADOQmonoRazao: TStringField
      FieldName = 'Razao'
    end
    object ADOQmonoCapa: TBlobField
      FieldName = 'Capa'
      BlobType = ftBlob
    end
    object ADOQmonoTipoAqs: TStringField
      FieldName = 'TipoAqs'
    end
    object ADOQmonorefbibli: TMemoField
      FieldName = 'refbibli'
      BlobType = ftMemo
    end
    object ADOQmonoData_compra: TDateTimeField
      FieldName = 'Data_compra'
    end
    object ADOQmonoData_pg: TDateTimeField
      FieldName = 'Data_pg'
    end
    object ADOQmonoData_chegada: TDateTimeField
      FieldName = 'Data_chegada'
    end
    object ADOQmonoPreco: TBCDField
      FieldName = 'Preco'
      Precision = 19
    end
    object ADOQmonoObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object ADOQmonoIdforn: TIntegerField
      FieldName = 'Idforn'
    end
  end
  object ADOQautor: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT nome,idautor,Cutter'
      '  FROM lautor')
    Left = 164
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
  object ADOQautor_mono: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    DataSource = DSmono
    Parameters = <
      item
        Name = 'idmono'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT idmono,idautor,tipoautor '
      ' FROM lmonoautor'
      ' WHERE idmono= :idmono')
    Left = 169
    Top = 80
    object ADOQautor_monoidmono: TIntegerField
      FieldName = 'idmono'
    end
    object ADOQautor_monoidautor: TIntegerField
      FieldName = 'idautor'
    end
    object ADOQautor_monotipoautor: TStringField
      FieldName = 'tipoautor'
      Size = 50
    end
    object ADOQautor_monoAutor: TStringField
      FieldKind = fkLookup
      FieldName = 'Autor'
      LookupDataSet = ADOQautor
      LookupKeyFields = 'idautor'
      LookupResultField = 'nome'
      KeyFields = 'idautor'
      Size = 100
      Lookup = True
    end
    object ADOQautor_monoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = ADOQtiporesp
      LookupKeyFields = 'responsabilidade'
      LookupResultField = 'responsabilidade'
      KeyFields = 'tipoautor'
      Size = 50
      Lookup = True
    end
  end
  object DSautor_mono: TDataSource
    DataSet = ADOQautor_mono
    Left = 257
    Top = 77
  end
  object ADOQtiporesp: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT responsabilidade '
      ' FROM ldresponsabilidade')
    Left = 242
    Top = 142
    object ADOQtiporespresponsabilidade: TStringField
      FieldName = 'responsabilidade'
      Size = 50
    end
  end
  object ADOQassunto: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT assunto,idassto,ativo,cdd,cdu '
      '  FROM lassunto'
      '  WHERE ativo=1')
    Left = 369
    Top = 206
  end
  object ADOQassunto_mono: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    DataSource = DSmono
    Parameters = <
      item
        Name = 'idmono'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT idmono,idassto,principal '
      '  FROM lmonoassunto'
      '     WHERE idmono= :idmono'
      '')
    Left = 185
    Top = 210
    object ADOQassunto_monoidmono: TIntegerField
      FieldName = 'idmono'
    end
    object ADOQassunto_monoidassto: TIntegerField
      FieldName = 'idassto'
    end
    object ADOQassunto_monoprincipal: TIntegerField
      FieldName = 'principal'
      OnGetText = ADOQassunto_monoprincipalGetText
      OnSetText = ADOQassunto_monoprincipalSetText
    end
    object ADOQassunto_monoAssunto: TStringField
      FieldKind = fkLookup
      FieldName = 'Assunto'
      LookupDataSet = ADOQassunto
      LookupKeyFields = 'idassto'
      LookupResultField = 'assunto'
      KeyFields = 'idassto'
      Size = 100
      Lookup = True
    end
  end
  object DSassunto_mono: TDataSource
    DataSet = ADOQassunto_mono
    Left = 280
    Top = 210
  end
  object ADOQlocal: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'idempresa'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT idempresa,idlocal,Nome,codlocal'
      ' FROM llocal'
      ' WHERE idempresa=:idempresa')
    Left = 24
    Top = 296
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
  end
  object DSlocal: TDataSource
    AutoEdit = False
    DataSet = ADOQlocal
    Left = 96
    Top = 296
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
      'SELECT suporte,codigo,idsuporte,idempresa'
      '  FROM lsuporte'
      '   WHERE idempresa=:idempresa and filhos = 0 and'
      'tipo = '#39'Monografia'#39)
    Left = 24
    Top = 216
    object ADOQsuportesuporte: TStringField
      FieldName = 'suporte'
      Size = 100
    end
    object ADOQsuportecodigo: TStringField
      FieldName = 'codigo'
    end
    object ADOQsuporteidsuporte: TAutoIncField
      FieldName = 'idsuporte'
      ReadOnly = True
    end
    object ADOQsuporteidempresa: TIntegerField
      FieldName = 'idempresa'
    end
  end
  object ADOQserie: TADOQuery
    AutoCalcFields = False
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT serie '
      ' FROM ldserie')
    Left = 190
    Top = 285
  end
  object DSserie: TDataSource
    DataSet = ADOQserie
    Left = 255
    Top = 290
  end
end
