
 
 CREATE DEFAULT DSTATUS
 	AS 0
go
 
 CREATE DEFAULT DSYSTEM_USER
 	AS SYSTEM_USER
go
 
 exec sp_addtype Imagem, "image", "NULL"
go
 
 exec sp_addtype Monetario, "money", "NULL"
go
 
 exec sp_addtype Status, "int", "NOT NULL"
 exec sp_bindefault DSTATUS, Status
go
 
 exec sp_addtype Boolean, "varchar(1)", "NULL"
go
 
 exec sp_addtype Codigo, "varchar(20)", "NULL"
go
 
 exec sp_addtype Texto, "text", "NULL"
go
 
 exec sp_addtype TIPOFORNECEDOR, "varchar(20)", "NOT NULL"
go
 
 CREATE TABLE lanaperi (
        TituloArt            varchar(100) NOT NULL,
        Idana                int IDENTITY(1,1),
        Pg_ini               int NOT NULL,
        Pg_fim               int NOT NULL,
        Resumo               text,
        Conteudo             text,
        Idfasc               int NOT NULL,
        LocalFis             text,
        refbibli             text
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlanaperi ON lanaperi
 (
        Idana
 )
go
 
 CREATE INDEX XIF25lanaperi ON lanaperi
 (
        Idfasc
 )
go
 
 CREATE INDEX I_lanaperi_titulos ON lanaperi
 (
        TituloArt
 )
go
 
 
 CREATE TABLE lanaperiassunto (
        Idassto              int NOT NULL,
        Idana                int NOT NULL,
        Principal            int
                                    CONSTRAINT RSTATUS48
                                           CHECK ((Principal in (0,1)))
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlanaperiassunto ON lanaperiassunto
 (
        Idassto,
        Idana
 )
go
 
 CREATE INDEX XIF14lanaperiassunto ON lanaperiassunto
 (
        Idana
 )
go
 
 CREATE INDEX XIF15lanaperiassunto ON lanaperiassunto
 (
        Idassto
 )
go
 
 
 CREATE TABLE lanaperiautor (
        Idana                int NOT NULL,
        Idautor              int NOT NULL,
        Tipoautor            varchar(50) NOT NULL
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlanaperiautor ON lanaperiautor
 (
        Idana,
        Idautor
 )
go
 
 CREATE INDEX XIF8lanaperiautor ON lanaperiautor
 (
        Idautor
 )
go
 
 CREATE INDEX XIF9lanaperiautor ON lanaperiautor
 (
        Idana
 )
go
 
 
 CREATE TABLE lassinatura (
        Nassinante           varchar(20) NOT NULL,
        Idassina             int IDENTITY(1,1),
        Data_ass             datetime NULL,
        Data_fim             datetime NULL,
        Data_pg              datetime NULL,
        Preco                money,
        Texto                text,
        Total                int NULL,
        Periodicidade        varchar(20) NULL,
        IdForn               int NULL
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlassinatura ON lassinatura
 (
        Idassina
 )
go
 
 CREATE INDEX XIF26lassinatura ON lassinatura
 (
        IdForn
 )
go
 
 
 CREATE TABLE lassunto (
        Assunto              varchar(100) NULL,
        Idassto              int IDENTITY(1,1),
        Ativo                int
                                    CONSTRAINT RSTATUS49
                                           CHECK ((Ativo in (0,1))),
        CDD                  varchar(20) NULL,
        CDU                  varchar(20) NULL,
        CONSTRAINT I_assunto
        UNIQUE CLUSTERED (
               Assunto
        ),
        CONSTRAINT I_lassunto_CDD
        UNIQUE (
               CDD
        ),
        CONSTRAINT I_lassunto_CDU
        UNIQUE (
               CDU
        )
 )
go
 
 CREATE UNIQUE INDEX PKAssunto ON lassunto
 (
        Idassto
 )
go
 
 
 CREATE TABLE lassuntoperi (
        Idassto              int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        Idobra               int NOT NULL,
        Principal            int
                                    CONSTRAINT RSTATUS50
                                           CHECK ((Principal in (0,1)))
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlassuntoperi ON lassuntoperi
 (
        Idassto,
        Tipo,
        Idobra
 )
go
 
 CREATE INDEX XIF18lassuntoperi ON lassuntoperi
 (
        Idassto
 )
go
 
 CREATE INDEX XIF19lassuntoperi ON lassuntoperi
 (
        Tipo,
        Idobra
 )
go
 
 
 CREATE TABLE lautor (
        Nome                 varchar(100) NULL,
        Idautor              int IDENTITY(1,1),
        Cutter               varchar(20) NULL,
        CONSTRAINT I_lautor_cutter
        UNIQUE (
               Cutter
        )
 )
go
 
 CREATE UNIQUE INDEX PKAutor ON lautor
 (
        Idautor
 )
go
 
 
 CREATE TABLE leditora (
        Editora              varchar(100) NOT NULL,
        IDED                 int IDENTITY(1,1),
        Codedit              varchar(20) NOT NULL,
        RazaoSocial          varchar(100) NULL,
        Ender                varchar(100) NULL,
        Cidade               varchar(100) NULL,
        Federa               varchar(20) NULL,
        Pais                 varchar(50) NULL,
        Bairro               varchar(50) NULL,
        CEP                  varchar(20) NULL,
        CGC                  varchar(30) NULL,
        E_mail               varchar(100) NULL,
        Web                  varchar(100) NULL,
        Obs                  text,
        DDI_1                int NULL,
        DDI_2                int NULL,
        TEdForn              varchar(20)
                                    CONSTRAINT RTIPOFORNECEDOR3
                                           CHECK (TEdForn IN ('EDITORA', 'FORNECEDOR', 'AMBOS')),
        DDI_3                int NULL,
        Ativo                int
                                    CONSTRAINT RSTATUS51
                                           CHECK ((Ativo in (0,1))),
        DDD_1                int NULL,
        DDD_2                int NULL,
        DDD_3                int NULL,
        Fone_1               varchar(20) NULL,
        Fone_2               varchar(20) NULL,
        Fone_3               varchar(20) NULL,
        Ramal_1              int NULL,
        Ramal_2              int NULL,
        Ramal_3              int NULL,
        ClassTel_1           varchar(20) NULL,
        ClassTel_2           varchar(20) NULL,
        ClassTel_3           varchar(20) NULL,
        ObsTel_1             varchar(20) NULL,
        ObsTel_2             varchar(20) NULL,
        ObsTel_3             varchar(20) NULL,
        CONSTRAINT I_codeditora
        UNIQUE CLUSTERED (
               Codedit
        ),
        CONSTRAINT I_leditora_razaosocial
        UNIQUE (
               RazaoSocial
        )
 )
go
 
 
 CREATE TABLE lfasciculo (
        Idfasc               int IDENTITY(1,1),
        Tipo                 varchar(21) NOT NULL,
        Codigo               varchar(20),
        titulo               varchar(100) NULL,
        Num                  int NULL,
        Ano                  int NULL,
        Volume               varchar(20) NULL,
        Mes                  varchar(20) NULL,
        ISSN                 varchar(13) NULL,
        Npag                 int NULL,
        Texto                text,
        Idassina             int NULL,
        idlocal              int NOT NULL,
        idempresa            int NOT NULL,
        Idobra               int NOT NULL,
        Dono                 varchar(100) NULL,
        Perda                datetime NULL,
        Texto                text,
        No_exe               int NULL,
        Flag_emp             int NULL
                                    CONSTRAINT RSTATUS52
                                           CHECK ((Flag_emp in (0,1))),
        Razao                varchar(20) NULL,
        Imagem               image,
        refbibli             text,
        TipoAqs              varchar(20) NULL,
        Data_compra          datetime NULL,
        Data_pg              datetime NULL,
        Data_chegada         datetime NULL,
        Preco                money,
        Texto                text,
        Idforn               int NULL,
        CONSTRAINT I_lfasciculo_tombo
        UNIQUE (
               Codigo
        ),
        CONSTRAINT I_lfasciculo_referencia
        UNIQUE CLUSTERED (
               Volume,
               Ano,
               Mes,
               Num,
               No_exe,
               Idobra
        )
 )
go
 
 CREATE INDEX XIF20lfasciculo ON lfasciculo
 (
        Tipo,
        Idobra
 )
go
 
 CREATE INDEX XIF21lfasciculo ON lfasciculo
 (
        idlocal,
        idempresa
 )
go
 
 CREATE INDEX XIF22lfasciculo ON lfasciculo
 (
        Idassina
 )
go
 
 CREATE INDEX XIF24lfasciculo ON lfasciculo
 (
        Idforn
 )
go
 
 
 CREATE TABLE llocal (
        idempresa            int NOT NULL,
        idlocal              int IDENTITY(1,1),
        Nome                 varchar(100) NOT NULL,
        codlocal             varchar(20) NOT NULL,
        Ender                varchar(100) NULL,
        Bairro               varchar(50) NULL,
        Cidade               varchar(100) NULL,
        Federa               varchar(20) NULL,
        Pais                 varchar(50) NULL,
        CEP                  varchar(20) NULL,
        E_mail               varchar(100) NULL,
        Web                  varchar(100) NULL,
        Foto                 Image NULL,
        DDI_1                int NULL,
        DDI_2                int NULL,
        DDI_3                int NULL,
        DDD_1                int NULL,
        DDD_2                int NULL,
        DDD_3                int NULL,
        Fone_1               varchar(20) NULL,
        Fone_2               varchar(20) NULL,
        Fone_3               varchar(20) NULL,
        Ramal_1              int NULL,
        Ramal_2              int NULL,
        Ramal_3              int NULL,
        ClassTel_1           varchar(20) NULL,
        ClassTel_2           varchar(20) NULL,
        ClassTel_3           varchar(20) NULL,
        ObsTel_1             text,
        ObsTel_2             text,
        ObsTel_3             text,
        obs                  text NULL,
        CONSTRAINT I_depositario
        UNIQUE (
               Nome
        ),
        CONSTRAINT I_codlocal
        UNIQUE CLUSTERED (
               codlocal
        )
 )
go
 
 CREATE INDEX XIF93llocal ON llocal
 (
        idempresa
 )
go
 
 
 CREATE TABLE lmono (
        Idmono               int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        Titulo_exe           varchar(100) NULL,
        Tombo                varchar(20),
        Volume               varchar(20) NULL,
        Tomo                 int NULL,
        Edicao               int NULL,
        Impressao            int NULL,
        Tiragem              int NULL,
        Atualizado           int
                                    CONSTRAINT RSTATUS53
                                           CHECK ((Atualizado in (0,1))),
        Revisado             int
                                    CONSTRAINT RSTATUS54
                                           CHECK ((Revisado in (0,1))),
        Aumentado            int
                                    CONSTRAINT RSTATUS55
                                           CHECK ((Aumentado in (0,1))),
        Ampliado             int
                                    CONSTRAINT RSTATUS56
                                           CHECK ((Ampliado in (0,1))),
        Ano_pub              int NULL
                                    CONSTRAINT RSTATUS57
                                           CHECK ((Ano_pub in (0,1))),
        Estacao              varchar(20) NULL,
        Ilust                int
                                    CONSTRAINT RSTATUS58
                                           CHECK ((Ilust in (0,1))),
        Npag                 int NULL,
        Dimensao             varchar(20) NULL,
        ISBN                 varchar(13) NULL,
        idlocal              int NOT NULL,
        idempresa            int NOT NULL,
        Idobra               int NOT NULL,
        Dono                 varchar(100) NULL,
        Perda                datetime NULL,
        Motivo               text,
        No_exe               int NULL,
        Flag_emp             int
                                    CONSTRAINT RSTATUS59
                                           CHECK ((Flag_emp in (0,1))),
        Razao                varchar(20) NULL,
        Capa                 image,
        TipoAqs              varchar(20) NULL,
        refbibli             text,
        Data_compra          datetime NULL,
        Data_pg              datetime NULL,
        Data_chegada         datetime NULL,
        Preco                money,
        Obs                  text,
        Idforn               int NULL,
        CONSTRAINT I_lmono_tombo
        UNIQUE (
               Tombo,
               idempresa
        ),
        CONSTRAINT I_lmono_ano
        UNIQUE (
               Ano_pub
        ),
        CONSTRAINT I_lmono_referencia
        UNIQUE CLUSTERED (
               Volume,
               Tomo,
               Edicao,
               No_exe,
               Impressao,
               Tiragem,
               Atualizado,
               Revisado,
               Aumentado,
               Ampliado,
               Idobra
        )
 )
go
 
 CREATE INDEX FKlmono_llocal ON lmono
 (
        idlocal,
        idempresa
 )
go
 
 CREATE INDEX FKlmono_leditora ON lmono
 (
        Idforn
 )
go
 
 CREATE INDEX FKlmono_lobra ON lmono
 (
        Tipo,
        Idobra
 )
go
 
 
 CREATE TABLE lmonoassunto (
        Idmono               int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        Idassto              int NOT NULL,
        Principal            int
                                    CONSTRAINT RSTATUS60
                                           CHECK ((Principal in (0,1)))
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlmonoassunto ON lmonoassunto
 (
        Idmono,
        Tipo,
        Idassto
 )
go
 
 CREATE INDEX XIF11lmonoassunto ON lmonoassunto
 (
        Tipo,
        Idmono
 )
go
 
 CREATE INDEX XIF12lmonoassunto ON lmonoassunto
 (
        Idassto
 )
go
 
 
 CREATE TABLE lmonoautor (
        Idmono               int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        Idautor              int NOT NULL,
        Tipoautor            varchar(50) NOT NULL
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlmonoautor ON lmonoautor
 (
        Idmono,
        Tipo,
        Idautor
 )
go
 
 CREATE INDEX XIF5lmonoautor ON lmonoautor
 (
        Tipo,
        Idmono
 )
go
 
 CREATE INDEX XIF6lmonoautor ON lmonoautor
 (
        Idautor
 )
go
 
 
 CREATE TABLE lobramon (
        Titulo               varchar(100) NULL,
        Idobra               int IDENTITY(1,1),
        Classifica           varchar(30) NULL,
        Cutter               varchar(30) NULL,
        ISBN                 varchar(13) NULL,
        Nvolbib              int NULL,
        Nvolfis              int NULL,
        Local                varchar(150) NULL,
        DescriFi             text,
        Idioma               varchar(20) NULL,
        Titulo_Orig          varchar(100) NULL,
        Total                int NULL,
        Tperdas              int NULL,
        Serie                varchar(100) NULL,
        Nt_Geral             text,
        Resumo               text,
        Conteudo             text,
        IDED                 int NOT NULL,
        suporte              varchar(100) NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        CONSTRAINT I_lobra_isbn
        UNIQUE (
               ISBN
        )
 )
go
 
 CREATE INDEX XIF23lobramon ON lobramon
 (
        IDED
 )
go
 
 CREATE INDEX XIF50lobramon ON lobramon
 (
        Tipo,
        suporte
 )
go
 
 
 CREATE TABLE lperiodico (
        Tipo                 varchar(21) NOT NULL,
        Idobra               int IDENTITY(1,1),
        Título               varchar(100) NULL,
        ISSN                 varchar(13) NULL,
        CNN                  varchar(20) NULL,
        Periodicidade        varchar(20) NULL,
        Idioma               varchar(20) NULL,
        Local                varchar(150) NULL,
        Data_ini             datetime NULL,
        Data_fim             datetime NULL,
        Total                int NULL,
        Tperdas              int NULL,
        Nt_geral             text,
        IDED                 int NOT NULL,
        suporte              varchar(100) NOT NULL,
        CONSTRAINT I_lperiodico_titulo
        UNIQUE (
               Título
        ),
        CONSTRAINT I_lperiodico_CNN
        UNIQUE (
               CNN
        ),
        CONSTRAINT I_lperiodico_ISSN
        UNIQUE (
               ISSN
        )
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlperiodico ON lperiodico
 (
        Tipo,
        Idobra
 )
go
 
 CREATE INDEX XIF16lperiodico ON lperiodico
 (
        IDED
 )
go
 
 CREATE INDEX XIF51lperiodico ON lperiodico
 (
        Tipo,
        suporte
 )
go
 
 
 CREATE TABLE lsuporte (
        tipo                 varchar(21) NOT NULL,
        suporte              varchar(100) NOT NULL,
        Codigo               varchar(20) NOT NULL,
        idempresa            int NOT NULL,
        CONSTRAINT I_lsuporte_codigo
        UNIQUE CLUSTERED (
               tipo,
               Codigo
        )
 )
go
 
 CREATE INDEX XIF96lsuporte ON lsuporte
 (
        idempresa
 )
go
 
 CREATE VIEW veditora (Tipo, Ativo, IDED, Codedit, Editora, RazaoSocial, CGC, Ender, Bairro, Cidade, Federa, Pais, CEP, E_mail, Web, Obs, DDI_1, DDI_2, DDI_3, DDD_1, DDD_2, DDD_3, Fone_1, Fone_2, Fone_3, Ramal_1, Ramal_2, Ramal_3, ClassTel_1, ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2, ObsTel_3)  AS
        SELECT leditora.TEdForn, leditora.Ativo, leditora.IDED, leditora.Codedit, leditora.Editora, leditora.RazaoSocial, leditora.CGC, leditora.Ender, leditora.Bairro, leditora.Cidade, leditora.Federa, leditora.Pais, leditora.CEP, leditora.E_mail, leditora.Web, leditora.Obs, leditora.DDI_1, leditora.DDI_2, leditora.DDI_3, leditora.DDD_1, leditora.DDD_2, leditora.DDD_3, leditora.Fone_1, leditora.Fone_2, leditora.Fone_3, leditora.Ramal_1, leditora.Ramal_2, leditora.Ramal_3, leditora.ClassTel_1, leditora.ClassTel_2, leditora.ClassTel_3, leditora.ObsTel_1, leditora.ObsTel_2, leditora.ObsTel_3
        FROM leditora
        WHERE TEdForn<>'FORNECEDOR'
        WITH CHECK OPTION
go
 
 
 CREATE VIEW vfornecedor (Tipo, Ativo, IDED, Codedit, Editora, RazaoSocial, CGC, Ender, Bairro, Cidade, Federa, Pais, CEP, E_mail, Web, Obs, DDI_1, DDI_2, DDI_3, DDD_1, DDD_2, DDD_3, Fone_1, Fone_2, Fone_3, Ramal_1, Ramal_2, Ramal_3, ClassTel_1, ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2, ObsTel_3)  AS
        SELECT leditora.TEdForn, leditora.Ativo, leditora.IDED, leditora.Codedit, leditora.Editora, leditora.RazaoSocial, leditora.CGC, leditora.Ender, leditora.Bairro, leditora.Cidade, leditora.Federa, leditora.Pais, leditora.CEP, leditora.E_mail, leditora.Web, leditora.Obs, leditora.DDI_1, leditora.DDI_2, leditora.DDI_3, leditora.DDD_1, leditora.DDD_2, leditora.DDD_3, leditora.Fone_1, leditora.Fone_2, leditora.Fone_3, leditora.Ramal_1, leditora.Ramal_2, leditora.Ramal_3, leditora.ClassTel_1, leditora.ClassTel_2, leditora.ClassTel_3, leditora.ObsTel_1, leditora.ObsTel_2, leditora.ObsTel_3
        FROM leditora
        WHERE TEdForn<>'EDITORA'
        WITH CHECK OPTION
go
 
 
 
 ALTER TABLE lanaperiassunto
        ADD CONSTRAINT FKlanaperiassunto_lassunto
               FOREIGN KEY (Idassto)
                              REFERENCES lassunto
go
 
 
 ALTER TABLE lanaperiassunto
        ADD CONSTRAINT FKlanaperiassunto_lanaperi
               FOREIGN KEY (Idana)
                              REFERENCES lanaperi
go
 
 
 ALTER TABLE lanaperiautor
        ADD CONSTRAINT FKlanaperiautor_lanaperi
               FOREIGN KEY (Idana)
                              REFERENCES lanaperi
go
 
 
 ALTER TABLE lanaperiautor
        ADD CONSTRAINT FKlanaperiautor_lautor
               FOREIGN KEY (Idautor)
                              REFERENCES lautor
go
 
 
 ALTER TABLE lassuntoperi
        ADD CONSTRAINT FKlassuntoperi_lperiodico
               FOREIGN KEY (Tipo, Idobra)
                              REFERENCES lperiodico
go
 
 
 ALTER TABLE lassuntoperi
        ADD CONSTRAINT FKlassuntoperi_lassunto
               FOREIGN KEY (Idassto)
                              REFERENCES lassunto
go
 
 
 ALTER TABLE lfasciculo
        ADD CONSTRAINT FKlfasciculo_lassinatura
               FOREIGN KEY (Idassina)
                              REFERENCES lassinatura
go
 
 
 ALTER TABLE lfasciculo
        ADD CONSTRAINT FKlfasciculo_lperiodico
               FOREIGN KEY (Tipo, Idobra)
                              REFERENCES lperiodico
go
 
 
 ALTER TABLE llocal
        ADD CONSTRAINT FKllocal_lempresa
               FOREIGN KEY (idempresa)
                              REFERENCES lempresa
go
 
 
 ALTER TABLE lmonoassunto
        ADD CONSTRAINT FKlmonoassunto_lassunto
               FOREIGN KEY (Idassto)
                              REFERENCES lassunto
go
 
 
 ALTER TABLE lmonoautor
        ADD CONSTRAINT FKlmonoautor_lautor
               FOREIGN KEY (Idautor)
                              REFERENCES lautor
go
 
 
 ALTER TABLE lsuporte
        ADD CONSTRAINT FKlsuporte_lempresa
               FOREIGN KEY (idempresa)
                              REFERENCES lempresa
go
 
 
 
 
 create trigger tanaperi on lanaperi
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lanaperi */
/* default body for tanaperi */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdana int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lanaperi R/37 lanaperiassunto ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lanaperiassunto
      where
        /*  lanaperiassunto.Idana = deleted.Idana */
        lanaperiassunto.Idana = deleted.Idana
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lanaperi because lanaperiassunto exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi R/37 lanaperiassunto ON PARENT UPDATE RESTRICT */
  if
    /* update(Idana) */
    update(Idana)
  begin
    if exists (
      select * from deleted,lanaperiassunto
      where
        /*  lanaperiassunto.Idana = deleted.Idana */
        lanaperiassunto.Idana = deleted.Idana
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lanaperi because lanaperiassunto exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lanaperi Assuntos do analítica lassunto ON PARENT DELETE SET NULL */
    update lassunto
      set
        /*  */
        
      from lassunto,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi Assuntos do analítica lassunto ON PARENT UPDATE SET NULL */
  if
    /* update(Idana) */
    update(Idana)
  begin
    update lassunto
      set
        /*  */
        
      from lassunto,deleted
      where
        /*  */
        
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lanaperi R/32 lanaperiautor ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lanaperiautor
      where
        /*  lanaperiautor.Idana = deleted.Idana */
        lanaperiautor.Idana = deleted.Idana
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lanaperi because lanaperiautor exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi R/32 lanaperiautor ON PARENT UPDATE RESTRICT */
  if
    /* update(Idana) */
    update(Idana)
  begin
    if exists (
      select * from deleted,lanaperiautor
      where
        /*  lanaperiautor.Idana = deleted.Idana */
        lanaperiautor.Idana = deleted.Idana
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lanaperi because lanaperiautor exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tanaperiassunto on lanaperiassunto
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lanaperiassunto */
/* default body for tanaperiassunto */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdassto int, 
           @insIdana int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/38 lanaperiassunto ON CHILD INSERT RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* inserted.Idassto = lassunto.Idassto */
          inserted.Idassto = lassunto.Idassto
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiassunto because lassunto does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/38 lanaperiassunto ON CHILD UPDATE RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* inserted.Idassto = lassunto.Idassto */
          inserted.Idassto = lassunto.Idassto
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperiassunto because lassunto does not exist.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi R/37 lanaperiassunto ON CHILD INSERT RESTRICT */
  if
    /* update(Idana) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* inserted.Idana = lanaperi.Idana */
          inserted.Idana = lanaperi.Idana
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiassunto because lanaperi does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi R/37 lanaperiassunto ON CHILD UPDATE RESTRICT */
  if
    /* update(Idana) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* inserted.Idana = lanaperi.Idana */
          inserted.Idana = lanaperi.Idana
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperiassunto because lanaperi does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tanaperiautor on lanaperiautor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lanaperiautor */
/* default body for tanaperiautor */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdana int, 
           @insIdautor int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi R/32 lanaperiautor ON CHILD INSERT RESTRICT */
  if
    /* update(Idana) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* inserted.Idana = lanaperi.Idana */
          inserted.Idana = lanaperi.Idana
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiautor because lanaperi does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lanaperi R/32 lanaperiautor ON CHILD UPDATE RESTRICT */
  if
    /* update(Idana) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* inserted.Idana = lanaperi.Idana */
          inserted.Idana = lanaperi.Idana
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperiautor because lanaperi does not exist.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lautor R/31 lanaperiautor ON CHILD INSERT RESTRICT */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* inserted.Idautor = lautor.Idautor */
          inserted.Idautor = lautor.Idautor
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiautor because lautor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lautor R/31 lanaperiautor ON CHILD UPDATE RESTRICT */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* inserted.Idautor = lautor.Idautor */
          inserted.Idautor = lautor.Idautor
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperiautor because lautor does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tassinatura on lassinatura
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lassinatura */
/* default body for tassinatura */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdassina int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lassinatura Assina lfasciculo ON PARENT DELETE SET NULL */
    update lfasciculo
      set
        /* lfasciculo.Idassina = NULL */
        lfasciculo.Idassina = NULL
      from lfasciculo,deleted
      where
        /* lfasciculo.Idassina = deleted.Idassina */
        lfasciculo.Idassina = deleted.Idassina
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassinatura Assina lfasciculo ON PARENT UPDATE SET NULL */
  if
    /* update(Idassina) */
    update(Idassina)
  begin
    update lfasciculo
      set
        /* lfasciculo.Idassina = NULL */
        lfasciculo.Idassina = NULL
      from lfasciculo,deleted
      where
        /* lfasciculo.Idassina = deleted.Idassina */
        lfasciculo.Idassina = deleted.Idassina
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tassunto on lassunto
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lassunto */
/* default body for tassunto */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdassto int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lassunto R/44 lassuntoperi ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lassuntoperi
      where
        /*  lassuntoperi.Idassto = deleted.Idassto */
        lassuntoperi.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lassunto because lassuntoperi exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/44 lassuntoperi ON PARENT UPDATE RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    if exists (
      select * from deleted,lassuntoperi
      where
        /*  lassuntoperi.Idassto = deleted.Idassto */
        lassuntoperi.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lassunto because lassuntoperi exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lassunto Assuntos do periódico lperiodico ON PARENT DELETE SET NULL */
    update lperiodico
      set
        /*  */
        
      from lperiodico,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto Assuntos do periódico lperiodico ON PARENT UPDATE SET NULL */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    update lperiodico
      set
        /*  */
        
      from lperiodico,deleted
      where
        /*  */
        
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lassunto R/38 lanaperiassunto ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lanaperiassunto
      where
        /*  lanaperiassunto.Idassto = deleted.Idassto */
        lanaperiassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lassunto because lanaperiassunto exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/38 lanaperiassunto ON PARENT UPDATE RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    if exists (
      select * from deleted,lanaperiassunto
      where
        /*  lanaperiassunto.Idassto = deleted.Idassto */
        lanaperiassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lassunto because lanaperiassunto exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lassunto R/35 lmonoassunto ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lmonoassunto
      where
        /*  lmonoassunto.Idassto = deleted.Idassto */
        lmonoassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lassunto because lmonoassunto exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/35 lmonoassunto ON PARENT UPDATE RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    if exists (
      select * from deleted,lmonoassunto
      where
        /*  lmonoassunto.Idassto = deleted.Idassto */
        lmonoassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lassunto because lmonoassunto exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tassuntoperi on lassuntoperi
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lassuntoperi */
/* default body for tassuntoperi */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdassto int, 
           @insTipo varchar(21), 
           @insIdobra int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lperiodico R/45 lassuntoperi ON CHILD INSERT RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* inserted.Tipo = lperiodico.Tipo and
             inserted.Idobra = lperiodico.Idobra */
          inserted.Tipo = lperiodico.Tipo and
          inserted.Idobra = lperiodico.Idobra
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lassuntoperi because lperiodico does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lperiodico R/45 lassuntoperi ON CHILD UPDATE RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* inserted.Tipo = lperiodico.Tipo and
             inserted.Idobra = lperiodico.Idobra */
          inserted.Tipo = lperiodico.Tipo and
          inserted.Idobra = lperiodico.Idobra
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lassuntoperi because lperiodico does not exist.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/44 lassuntoperi ON CHILD INSERT RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* inserted.Idassto = lassunto.Idassto */
          inserted.Idassto = lassunto.Idassto
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lassuntoperi because lassunto does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lassunto R/44 lassuntoperi ON CHILD UPDATE RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* inserted.Idassto = lassunto.Idassto */
          inserted.Idassto = lassunto.Idassto
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lassuntoperi because lassunto does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tautor on lautor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on lautor */
/* default body for tautor */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdautor int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lautor R/31 lanaperiautor ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lanaperiautor
      where
        /*  lanaperiautor.Idautor = deleted.Idautor */
        lanaperiautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lautor because lanaperiautor exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lautor R/31 lanaperiautor ON PARENT UPDATE RESTRICT */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    if exists (
      select * from deleted,lanaperiautor
      where
        /*  lanaperiautor.Idautor = deleted.Idautor */
        lanaperiautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lautor because lanaperiautor exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lautor Autores da analítica lanaperi ON PARENT DELETE SET NULL */
    update lanaperi
      set
        /*  */
        
      from lanaperi,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lautor Autores da analítica lanaperi ON PARENT UPDATE SET NULL */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    update lanaperi
      set
        /*  */
        
      from lanaperi,deleted
      where
        /*  */
        
  end

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* lautor R/29 lmonoautor ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lmonoautor
      where
        /*  lmonoautor.Idautor = deleted.Idautor */
        lmonoautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lautor because lmonoautor exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:20 2001 */
  /* lautor R/29 lmonoautor ON PARENT UPDATE RESTRICT */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    if exists (
      select * from deleted,lmonoautor
      where
        /*  lmonoautor.Idautor = deleted.Idautor */
        lmonoautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lautor because lmonoautor exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger teditora on leditora
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
/* DELETE,INSERT,UPDATE trigger on leditora */
/* default body for teditora */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIDED int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:20 2001 */
    /* leditora Fornece lassinatura ON PARENT DELETE SET NULL */
    update lassinatura
      set
        /* lassinatura.IdForn = NULL */
        lassinatura.IdForn = NULL
      from lassinatura,deleted
      where
        /* lassinatura.IdForn = deleted.IDED */
        lassinatura.IdForn = deleted.IDED
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* leditora Fornece lassinatura ON PARENT UPDATE SET NULL */
  if
    /* update(IDED) */
    update(IDED)
  begin
    update lassinatura
      set
        /* lassinatura.IdForn = NULL */
        lassinatura.IdForn = NULL
      from lassinatura,deleted
      where
        /* lassinatura.IdForn = deleted.IDED */
        lassinatura.IdForn = deleted.IDED
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* leditora Fornece lfasciculo ON PARENT DELETE SET NULL */
    update lfasciculo
      set
        /* lfasciculo.Idforn = NULL */
        lfasciculo.Idforn = NULL
      from lfasciculo,deleted
      where
        /* lfasciculo.Idforn = deleted.IDED */
        lfasciculo.Idforn = deleted.IDED
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* leditora Fornece lfasciculo ON PARENT UPDATE SET NULL */
  if
    /* update(IDED) */
    update(IDED)
  begin
    update lfasciculo
      set
        /* lfasciculo.Idforn = NULL */
        lfasciculo.Idforn = NULL
      from lfasciculo,deleted
      where
        /* lfasciculo.Idforn = deleted.IDED */
        lfasciculo.Idforn = deleted.IDED
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* leditora Publica lobramon ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lobramon
      where
        /*  lobramon.IDED = deleted.IDED */
        lobramon.IDED = deleted.IDED
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE leditora because lobramon exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* leditora Publica lobramon ON PARENT UPDATE RESTRICT */
  if
    /* update(IDED) */
    update(IDED)
  begin
    if exists (
      select * from deleted,lobramon
      where
        /*  lobramon.IDED = deleted.IDED */
        lobramon.IDED = deleted.IDED
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE leditora because lobramon exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* leditora Publica lperiodico ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lperiodico
      where
        /*  lperiodico.IDED = deleted.IDED */
        lperiodico.IDED = deleted.IDED
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE leditora because lperiodico exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* leditora Publica lperiodico ON PARENT UPDATE RESTRICT */
  if
    /* update(IDED) */
    update(IDED)
  begin
    if exists (
      select * from deleted,lperiodico
      where
        /*  lperiodico.IDED = deleted.IDED */
        lperiodico.IDED = deleted.IDED
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE leditora because lperiodico exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* leditora Fornece lmono ON PARENT DELETE SET NULL */
    update lmono
      set
        /* lmono.Idforn = NULL */
        lmono.Idforn = NULL
      from lmono,deleted
      where
        /* lmono.Idforn = deleted.IDED */
        lmono.Idforn = deleted.IDED
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* leditora Fornece lmono ON PARENT UPDATE SET NULL */
  if
    /* update(IDED) */
    update(IDED)
  begin
    update lmono
      set
        /* lmono.Idforn = NULL */
        lmono.Idforn = NULL
      from lmono,deleted
      where
        /* lmono.Idforn = deleted.IDED */
        lmono.Idforn = deleted.IDED
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tfasciculo on lfasciculo
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
/* DELETE,INSERT,UPDATE trigger on lfasciculo */
/* default body for tfasciculo */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdfasc int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lassinatura Assina lfasciculo ON CHILD INSERT SET NULL */
  if
    /* update(Idassina) */
    update(Idassina)
  begin
    update lfasciculo
      set
        /* lfasciculo.Idassina = NULL */
        lfasciculo.Idassina = NULL
      from lfasciculo,inserted
      where
        /*  */
         and
        not exists (
          select * from lassinatura
          where
            /* inserted.Idassina = lassinatura.Idassina */
            inserted.Idassina = lassinatura.Idassina
        )
  end
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lassinatura Assina lfasciculo ON CHILD UPDATE SET NULL */
  if
    /* update(Idassina) */
    update(Idassina)
  begin
    update lfasciculo
      set
        /* lfasciculo.Idassina = NULL */
        lfasciculo.Idassina = NULL
      from lfasciculo,inserted
      where
        /*  */
         and 
        not exists (
          select * from lassinatura
          where
            /* inserted.Idassina = lassinatura.Idassina */
            inserted.Idassina = lassinatura.Idassina
        )
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lperiodico Compõe lfasciculo ON CHILD INSERT RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* inserted.Tipo = lperiodico.Tipo and
             inserted.Idobra = lperiodico.Idobra */
          inserted.Tipo = lperiodico.Tipo and
          inserted.Idobra = lperiodico.Idobra
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lfasciculo because lperiodico does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lperiodico Compõe lfasciculo ON CHILD UPDATE RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* inserted.Tipo = lperiodico.Tipo and
             inserted.Idobra = lperiodico.Idobra */
          inserted.Tipo = lperiodico.Tipo and
          inserted.Idobra = lperiodico.Idobra
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lfasciculo because lperiodico does not exist.'
      goto error
    end
  end


/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* lfasciculo Compõe lcompocons ON PARENT DELETE SET NULL */
    update lcompocons
      set
        /* lcompocons.idexemplar = NULL */
        lcompocons.idexemplar = NULL
      from lcompocons,deleted
      where
        /* lcompocons.idexemplar = deleted.Idfasc */
        lcompocons.idexemplar = deleted.Idfasc
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lfasciculo Compõe lcompocons ON PARENT UPDATE SET NULL */
  if
    /* update(Idfasc) */
    update(Idfasc)
  begin
    update lcompocons
      set
        /* lcompocons.idexemplar = NULL */
        lcompocons.idexemplar = NULL
      from lcompocons,deleted
      where
        /* lcompocons.idexemplar = deleted.Idfasc */
        lcompocons.idexemplar = deleted.Idfasc
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* lfasciculo Compõe lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* lcompoemp.idexemplar = NULL */
        lcompoemp.idexemplar = NULL
      from lcompoemp,deleted
      where
        /* lcompoemp.idexemplar = deleted.Idfasc */
        lcompoemp.idexemplar = deleted.Idfasc
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lfasciculo Compõe lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* update(Idfasc) */
    update(Idfasc)
  begin
    update lcompoemp
      set
        /* lcompoemp.idexemplar = NULL */
        lcompoemp.idexemplar = NULL
      from lcompoemp,deleted
      where
        /* lcompoemp.idexemplar = deleted.Idfasc */
        lcompoemp.idexemplar = deleted.Idfasc
  end

/* ERwin Builtin Thu Nov 29 12:50:21 2001 */
    /* lfasciculo analítico lanaperi ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lanaperi
      where
        /*  lanaperi.Idfasc = deleted.Idfasc */
        lanaperi.Idfasc = deleted.Idfasc
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lfasciculo because lanaperi exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:21 2001 */
  /* lfasciculo analítico lanaperi ON PARENT UPDATE RESTRICT */
  if
    /* update(Idfasc) */
    update(Idfasc)
  begin
    if exists (
      select * from deleted,lanaperi
      where
        /*  lanaperi.Idfasc = deleted.Idfasc */
        lanaperi.Idfasc = deleted.Idfasc
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lfasciculo because lanaperi exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tlocal on llocal
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
/* DELETE,INSERT,UPDATE trigger on llocal */
/* default body for tlocal */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insidempresa int, 
           @insidlocal int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* lempresa Pertence llocal ON CHILD INSERT RESTRICT */
  if
    /* update(idempresa) */
    update(idempresa)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lempresa
        where
          /* inserted.idempresa = lempresa.idempresa */
          inserted.idempresa = lempresa.idempresa
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT llocal because lempresa does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* lempresa Pertence llocal ON CHILD UPDATE RESTRICT */
  if
    /* update(idempresa) */
    update(idempresa)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lempresa
        where
          /* inserted.idempresa = lempresa.idempresa */
          inserted.idempresa = lempresa.idempresa
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE llocal because lempresa does not exist.'
      goto error
    end
  end


/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
    /* llocal Deposita lfasciculo ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lfasciculo
      where
        /*  lfasciculo.idempresa = deleted.idempresa and
            lfasciculo.idlocal = deleted.idlocal */
        lfasciculo.idempresa = deleted.idempresa and
        lfasciculo.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE llocal because lfasciculo exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* llocal Deposita lfasciculo ON PARENT UPDATE RESTRICT */
  if
    /* update(idempresa) or
       update(idlocal) */
    update(idempresa) or
    update(idlocal)
  begin
    if exists (
      select * from deleted,lfasciculo
      where
        /*  lfasciculo.idempresa = deleted.idempresa and
            lfasciculo.idlocal = deleted.idlocal */
        lfasciculo.idempresa = deleted.idempresa and
        lfasciculo.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE llocal because lfasciculo exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
    /* llocal Deposita lmono ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lmono
      where
        /*  lmono.idempresa = deleted.idempresa and
            lmono.idlocal = deleted.idlocal */
        lmono.idempresa = deleted.idempresa and
        lmono.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE llocal because lmono exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* llocal Deposita lmono ON PARENT UPDATE RESTRICT */
  if
    /* update(idempresa) or
       update(idlocal) */
    update(idempresa) or
    update(idlocal)
  begin
    if exists (
      select * from deleted,lmono
      where
        /*  lmono.idempresa = deleted.idempresa and
            lmono.idlocal = deleted.idlocal */
        lmono.idempresa = deleted.idempresa and
        lmono.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE llocal because lmono exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tmono on lmono
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
/* DELETE,INSERT,UPDATE trigger on lmono */
/* default body for tmono */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdmono int, 
           @insTipo varchar(21),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
    /* lmono Compõe lcompocons ON PARENT DELETE SET NULL */
    update lcompocons
      set
        /* lcompocons.idexemplar = NULL,
           lcompocons.Tipo = NULL */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,deleted
      where
        /* lcompocons.idexemplar = deleted.Idmono and
           lcompocons.Tipo = deleted.Tipo */
        lcompocons.idexemplar = deleted.Idmono and
        lcompocons.Tipo = deleted.Tipo
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* lmono Compõe lcompocons ON PARENT UPDATE SET NULL */
  if
    /* update(Idmono) or
       update(Tipo) */
    update(Idmono) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* lcompocons.idexemplar = NULL,
           lcompocons.Tipo = NULL */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,deleted
      where
        /* lcompocons.idexemplar = deleted.Idmono and
           lcompocons.Tipo = deleted.Tipo */
        lcompocons.idexemplar = deleted.Idmono and
        lcompocons.Tipo = deleted.Tipo
  end

/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
    /* lmono compõe lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* lcompoemp.idexemplar = NULL,
           lcompoemp.Tipo = NULL */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,deleted
      where
        /* lcompoemp.idexemplar = deleted.Idmono and
           lcompoemp.Tipo = deleted.Tipo */
        lcompoemp.idexemplar = deleted.Idmono and
        lcompoemp.Tipo = deleted.Tipo
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* lmono compõe lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* update(Idmono) or
       update(Tipo) */
    update(Idmono) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* lcompoemp.idexemplar = NULL,
           lcompoemp.Tipo = NULL */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,deleted
      where
        /* lcompoemp.idexemplar = deleted.Idmono and
           lcompoemp.Tipo = deleted.Tipo */
        lcompoemp.idexemplar = deleted.Idmono and
        lcompoemp.Tipo = deleted.Tipo
  end

/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
    /* lmono R/34 lmonoassunto ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lmonoassunto
      where
        /*  lmonoassunto.Idmono = deleted.Idmono and
            lmonoassunto.Tipo = deleted.Tipo */
        lmonoassunto.Idmono = deleted.Idmono and
        lmonoassunto.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lmono because lmonoassunto exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* lmono R/34 lmonoassunto ON PARENT UPDATE RESTRICT */
  if
    /* update(Idmono) or
       update(Tipo) */
    update(Idmono) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lmonoassunto
      where
        /*  lmonoassunto.Idmono = deleted.Idmono and
            lmonoassunto.Tipo = deleted.Tipo */
        lmonoassunto.Idmono = deleted.Idmono and
        lmonoassunto.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lmono because lmonoassunto exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:22 2001 */
    /* lmono Assuntos da monografia lassunto ON PARENT DELETE SET NULL */
    update lassunto
      set
        /*  */
        
      from lassunto,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:22 2001 */
  /* lmono Assuntos da monografia lassunto ON PARENT UPDATE SET NULL */
  if
    /* update(Idmono) or
       update(Tipo) */
    update(Idmono) or
    update(Tipo)
  begin
    update lassunto
      set
        /*  */
        
      from lassunto,deleted
      where
        /*  */
        
  end

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lmono R/28 lmonoautor ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lmonoautor
      where
        /*  lmonoautor.Idmono = deleted.Idmono and
            lmonoautor.Tipo = deleted.Tipo */
        lmonoautor.Idmono = deleted.Idmono and
        lmonoautor.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lmono because lmonoautor exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lmono R/28 lmonoautor ON PARENT UPDATE RESTRICT */
  if
    /* update(Idmono) or
       update(Tipo) */
    update(Idmono) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lmonoautor
      where
        /*  lmonoautor.Idmono = deleted.Idmono and
            lmonoautor.Tipo = deleted.Tipo */
        lmonoautor.Idmono = deleted.Idmono and
        lmonoautor.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lmono because lmonoautor exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lmono Autores da monografia lautor ON PARENT DELETE SET NULL */
    update lautor
      set
        /*  */
        
      from lautor,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lmono Autores da monografia lautor ON PARENT UPDATE SET NULL */
  if
    /* update(Idmono) or
       update(Tipo) */
    update(Idmono) or
    update(Tipo)
  begin
    update lautor
      set
        /*  */
        
      from lautor,deleted
      where
        /*  */
        
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tmonoassuto on lmonoassunto
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
/* DELETE,INSERT,UPDATE trigger on lmonoassunto */
/* default body for tmonoassuto */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdmono int, 
           @insTipo varchar(21), 
           @insIdassto int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lassunto R/35 lmonoassunto ON CHILD INSERT RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* inserted.Idassto = lassunto.Idassto */
          inserted.Idassto = lassunto.Idassto
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmonoassunto because lassunto does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lassunto R/35 lmonoassunto ON CHILD UPDATE RESTRICT */
  if
    /* update(Idassto) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* inserted.Idassto = lassunto.Idassto */
          inserted.Idassto = lassunto.Idassto
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmonoassunto because lassunto does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tmonoautor on lmonoautor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
/* DELETE,INSERT,UPDATE trigger on lmonoautor */
/* default body for tmonoautor */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdmono int, 
           @insTipo varchar(21), 
           @insIdautor int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lautor R/29 lmonoautor ON CHILD INSERT RESTRICT */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* inserted.Idautor = lautor.Idautor */
          inserted.Idautor = lautor.Idautor
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmonoautor because lautor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lautor R/29 lmonoautor ON CHILD UPDATE RESTRICT */
  if
    /* update(Idautor) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* inserted.Idautor = lautor.Idautor */
          inserted.Idautor = lautor.Idautor
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmonoautor because lautor does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tobramono on lobramon
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
/* DELETE,INSERT,UPDATE trigger on lobramon */
/* default body for tobramono */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdobra int, 
           @insTipo varchar(21),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lobramon compõe lreservas ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lreservas
      where
        /*  lreservas.idobra = deleted.Idobra and
            lreservas.Tipo = deleted.Tipo */
        lreservas.idobra = deleted.Idobra and
        lreservas.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lobramon because lreservas exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lobramon compõe lreservas ON PARENT UPDATE RESTRICT */
  if
    /* update(Idobra) or
       update(Tipo) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lreservas
      where
        /*  lreservas.idobra = deleted.Idobra and
            lreservas.Tipo = deleted.Tipo */
        lreservas.idobra = deleted.Idobra and
        lreservas.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lobramon because lreservas exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lobramon Compõe lmono ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lmono
      where
        /*  lmono.Idobra = deleted.Idobra and
            lmono.Tipo = deleted.Tipo */
        lmono.Idobra = deleted.Idobra and
        lmono.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lobramon because lmono exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lobramon Compõe lmono ON PARENT UPDATE RESTRICT */
  if
    /* update(Idobra) or
       update(Tipo) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lmono
      where
        /*  lmono.Idobra = deleted.Idobra and
            lmono.Tipo = deleted.Tipo */
        lmono.Idobra = deleted.Idobra and
        lmono.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lobramon because lmono exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tperiodico on lperiodico
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
/* DELETE,INSERT,UPDATE trigger on lperiodico */
/* default body for tperiodico */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTipo varchar(21), 
           @insIdobra int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lperiodico compõe lreservas ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lreservas
      where
        /*  lreservas.Tipo = deleted.Tipo and
            lreservas.idobra = deleted.Idobra */
        lreservas.Tipo = deleted.Tipo and
        lreservas.idobra = deleted.Idobra
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lperiodico because lreservas exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lperiodico compõe lreservas ON PARENT UPDATE RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    if exists (
      select * from deleted,lreservas
      where
        /*  lreservas.Tipo = deleted.Tipo and
            lreservas.idobra = deleted.Idobra */
        lreservas.Tipo = deleted.Tipo and
        lreservas.idobra = deleted.Idobra
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lperiodico because lreservas exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lperiodico Compõe lfasciculo ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lfasciculo
      where
        /*  lfasciculo.Tipo = deleted.Tipo and
            lfasciculo.Idobra = deleted.Idobra */
        lfasciculo.Tipo = deleted.Tipo and
        lfasciculo.Idobra = deleted.Idobra
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lperiodico because lfasciculo exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lperiodico Compõe lfasciculo ON PARENT UPDATE RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    if exists (
      select * from deleted,lfasciculo
      where
        /*  lfasciculo.Tipo = deleted.Tipo and
            lfasciculo.Idobra = deleted.Idobra */
        lfasciculo.Tipo = deleted.Tipo and
        lfasciculo.Idobra = deleted.Idobra
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lperiodico because lfasciculo exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
    /* lperiodico R/45 lassuntoperi ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lassuntoperi
      where
        /*  lassuntoperi.Tipo = deleted.Tipo and
            lassuntoperi.Idobra = deleted.Idobra */
        lassuntoperi.Tipo = deleted.Tipo and
        lassuntoperi.Idobra = deleted.Idobra
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lperiodico because lassuntoperi exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lperiodico R/45 lassuntoperi ON PARENT UPDATE RESTRICT */
  if
    /* update(Tipo) or
       update(Idobra) */
    update(Tipo) or
    update(Idobra)
  begin
    if exists (
      select * from deleted,lassuntoperi
      where
        /*  lassuntoperi.Tipo = deleted.Tipo and
            lassuntoperi.Idobra = deleted.Idobra */
        lassuntoperi.Tipo = deleted.Tipo and
        lassuntoperi.Idobra = deleted.Idobra
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lperiodico because lassuntoperi exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go






create trigger tsuporte on lsuporte
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
/* DELETE,INSERT,UPDATE trigger on lsuporte */
/* default body for tsuporte */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @instipo varchar(21), 
           @inssuporte varchar(100),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lempresa possui lsuporte ON CHILD INSERT RESTRICT */
  if
    /* update(idempresa) */
    update(idempresa)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lempresa
        where
          /* inserted.idempresa = lempresa.idempresa */
          inserted.idempresa = lempresa.idempresa
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lsuporte because lempresa does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:50:23 2001 */
  /* lempresa possui lsuporte ON CHILD UPDATE RESTRICT */
  if
    /* update(idempresa) */
    update(idempresa)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lempresa
        where
          /* inserted.idempresa = lempresa.idempresa */
          inserted.idempresa = lempresa.idempresa
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lsuporte because lempresa does not exist.'
      goto error
    end
  end


/* ERwin Builtin Thu Nov 29 12:50:24 2001 */
    /* lsuporte mídia do acervo lperiodico ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lperiodico
      where
        /*  lperiodico.Tipo = deleted.tipo and
            lperiodico.suporte = deleted.tipo and
            lperiodico.suporte = deleted.suporte */
        lperiodico.Tipo = deleted.tipo and
        lperiodico.suporte = deleted.tipo and
        lperiodico.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lsuporte because lperiodico exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:24 2001 */
  /* lsuporte mídia do acervo lperiodico ON PARENT UPDATE RESTRICT */
  if
    /* update(tipo) or
       update(suporte) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lperiodico
      where
        /*  lperiodico.Tipo = deleted.tipo and
            lperiodico.suporte = deleted.tipo and
            lperiodico.suporte = deleted.suporte */
        lperiodico.Tipo = deleted.tipo and
        lperiodico.suporte = deleted.tipo and
        lperiodico.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lperiodico exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:24 2001 */
    /* lsuporte mídia do acervo lobramon ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lobramon
      where
        /*  lobramon.Tipo = deleted.tipo and
            lobramon.suporte = deleted.tipo and
            lobramon.suporte = deleted.suporte */
        lobramon.Tipo = deleted.tipo and
        lobramon.suporte = deleted.tipo and
        lobramon.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lsuporte because lobramon exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:24 2001 */
  /* lsuporte mídia do acervo lobramon ON PARENT UPDATE RESTRICT */
  if
    /* update(tipo) or
       update(suporte) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lobramon
      where
        /*  lobramon.Tipo = deleted.tipo and
            lobramon.suporte = deleted.tipo and
            lobramon.suporte = deleted.suporte */
        lobramon.Tipo = deleted.tipo and
        lobramon.suporte = deleted.tipo and
        lobramon.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lobramon exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:24 2001 */
    /* lsuporte R/70 lctrlcons ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lctrlcons
      where
        /*  lctrlcons.suporte = deleted.tipo and
            lctrlcons.tipo = deleted.tipo and
            lctrlcons.suporte = deleted.suporte */
        lctrlcons.suporte = deleted.tipo and
        lctrlcons.tipo = deleted.tipo and
        lctrlcons.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lsuporte because lctrlcons exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:24 2001 */
  /* lsuporte R/70 lctrlcons ON PARENT UPDATE RESTRICT */
  if
    /* update(tipo) or
       update(suporte) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lctrlcons
      where
        /*  lctrlcons.suporte = deleted.tipo and
            lctrlcons.tipo = deleted.tipo and
            lctrlcons.suporte = deleted.suporte */
        lctrlcons.suporte = deleted.tipo and
        lctrlcons.tipo = deleted.tipo and
        lctrlcons.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lctrlcons exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:24 2001 */
    /* lsuporte Controle de empréstimo lgrupo ON PARENT DELETE SET NULL */
    update lgrupo
      set
        /*  */
        
      from lgrupo,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:24 2001 */
  /* lsuporte Controle de empréstimo lgrupo ON PARENT UPDATE SET NULL */
  if
    /* update(tipo) or
       update(suporte) */
    update(tipo) or
    update(suporte)
  begin
    update lgrupo
      set
        /*  */
        
      from lgrupo,deleted
      where
        /*  */
        
  end

/* ERwin Builtin Thu Nov 29 12:50:24 2001 */
    /* lsuporte R/67 lctrlemp ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lctrlemp
      where
        /*  lctrlemp.suporte = deleted.tipo and
            lctrlemp.tipo = deleted.tipo and
            lctrlemp.suporte = deleted.suporte */
        lctrlemp.suporte = deleted.tipo and
        lctrlemp.tipo = deleted.tipo and
        lctrlemp.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lsuporte because lctrlemp exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:50:24 2001 */
  /* lsuporte R/67 lctrlemp ON PARENT UPDATE RESTRICT */
  if
    /* update(tipo) or
       update(suporte) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lctrlemp
      where
        /*  lctrlemp.suporte = deleted.tipo and
            lctrlemp.tipo = deleted.tipo and
            lctrlemp.suporte = deleted.suporte */
        lctrlemp.suporte = deleted.tipo and
        lctrlemp.tipo = deleted.tipo and
        lctrlemp.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lctrlemp exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:50:24 2001 */
    /* lsuporte Controle de consulta lgrupo ON PARENT DELETE SET NULL */
    update lgrupo
      set
        /*  */
        
      from lgrupo,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:50:24 2001 */
  /* lsuporte Controle de consulta lgrupo ON PARENT UPDATE SET NULL */
  if
    /* update(tipo) or
       update(suporte) */
    update(tipo) or
    update(suporte)
  begin
    update lgrupo
      set
        /*  */
        
      from lgrupo,deleted
      where
        /*  */
        
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


