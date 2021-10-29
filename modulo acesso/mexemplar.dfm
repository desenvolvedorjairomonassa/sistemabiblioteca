object DMexemplar: TDMexemplar
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 251
  Top = 193
  Height = 480
  Width = 696
  object DSmono: TDataSource
    DataSet = ADOQmono
    Left = 95
    Top = 25
  end
  object ADOQmono: TADOQuery
    Connection = DMmain.ADOConexao
    CursorType = ctStatic
    BeforePost = ADOQmonoBeforePost
    Parameters = <
      item
        Name = 'idobra'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'idmono'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
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
      'WHERE tipo='#39'Monografia'#39' AND'
      'idobra=:idobra and'
      'idmono=:idmono')
    Left = 35
    Top = 25
    object ADOQmonoIdmono: TIntegerField
      FieldName = 'Idmono'
    end
    object ADOQmonoTipo: TStringField
      FieldName = 'Tipo'
      Size = 21
    end
    object ADOQmonoTitulo_exe: TStringField
      FieldName = 'Titulo_exe'
      Size = 100
    end
    object ADOQmonoTombo: TStringField
      FieldName = 'Tombo'
    end
    object ADOQmonoVolume: TStringField
      FieldName = 'Volume'
    end
    object ADOQmonoTomo: TIntegerField
      FieldName = 'Tomo'
    end
    object ADOQmonoEdicao: TIntegerField
      FieldName = 'Edicao'
    end
    object ADOQmonoImpressao: TIntegerField
      FieldName = 'Impressao'
    end
    object ADOQmonoTiragem: TIntegerField
      FieldName = 'Tiragem'
    end
    object ADOQmonoAtualizado: TIntegerField
      FieldName = 'Atualizado'
    end
    object ADOQmonoRevisado: TIntegerField
      FieldName = 'Revisado'
    end
    object ADOQmonoAumentado: TIntegerField
      FieldName = 'Aumentado'
    end
    object ADOQmonoAmpliado: TIntegerField
      FieldName = 'Ampliado'
    end
    object ADOQmonoAno_pub: TIntegerField
      FieldName = 'Ano_pub'
    end
    object ADOQmonoEstacao: TStringField
      FieldName = 'Estacao'
    end
    object ADOQmonoIlust: TIntegerField
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
    object ADOQmonoidlocal: TIntegerField
      FieldName = 'idlocal'
    end
    object ADOQmonoidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object ADOQmonoIdobra: TIntegerField
      FieldName = 'Idobra'
    end
    object ADOQmonoDono: TStringField
      FieldName = 'Dono'
      Size = 100
    end
    object ADOQmonoPerda: TDateTimeField
      FieldName = 'Perda'
    end
    object ADOQmonoMotivo: TMemoField
      FieldName = 'Motivo'
      BlobType = ftMemo
    end
    object ADOQmonoNo_exe: TIntegerField
      FieldName = 'No_exe'
    end
    object ADOQmonoFlag_emp: TIntegerField
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
end
