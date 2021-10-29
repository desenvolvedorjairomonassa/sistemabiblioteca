
 
 CREATE DEFAULT DSTATUS
 	AS 0
go
 
 CREATE DEFAULT SYSTEM_USER
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
 
 DROP TABLE lgrupo
go
 
 CREATE TABLE lgrupo (
        Idgrupo              int NOT NULL,
        Codigo               Codigo,
        Descrição            varchar(100) NOT NULL,
        PRIMARY KEY NONCLUSTERED (Idgrupo)
 )
go
 
 DROP INDEX lgrupo.PKlgrupo
go
 
 DROP INDEX lgrupo.I_lgrupo_codigo
go
 
 DROP INDEX lgrupo.I_lgrupo
go
 
 CREATE UNIQUE CLUSTERED INDEX I_lgrupo_codigo ON lgrupo
 (
        Codigo
 )
go
 
 CREATE UNIQUE INDEX I_lgrupo ON lgrupo
 (
        Descrição
 )
go
 
 
 DROP TABLE lleitor
go
 
 CREATE TABLE lleitor (
        Idleitor             int IDENTITY(1,1),
        Idgrupo              int NOT NULL,
        Nome                 varchar(100) NOT NULL,
        Ender                varchar(100) NULL,
        Cidade               varchar(100) NULL,
        Bairro               varchar(100) NULL,
        Federa               varchar(20) NULL,
        Pais                 varchar(100) NULL,
        CEP                  varchar(8) NULL,
        E_mail               varchar(100) NULL,
        Web                  varchar(100) NULL,
        Obs                  Texto,
        comercial            varchar(20) NULL,
        residencial          varchar(20) NULL,
        Celular              varchar(20) NULL,
        Dtnascimento         datetime NULL,
        PRIMARY KEY NONCLUSTERED (Idleitor), 
        FOREIGN KEY (Idgrupo)
                              REFERENCES lgrupo
 )
go
 
 DROP INDEX lleitor.PKidusuario
go
 
 DROP INDEX lleitor.FKgrupo
go
 
 DROP INDEX lleitor.I_lleitor_nome
go
 
 CREATE CLUSTERED INDEX I_lleitor_nome ON lleitor
 (
        Nome
 )
go
 
 
 DROP TABLE lbloqueio
go
 
 CREATE TABLE lbloqueio (
        idbloqueio           int IDENTITY(1,1),
        Idleitor             int NOT NULL,
        motivo               varchar(20) NOT NULL,
        databloqueio         datetime NOT NULL,
        complmotivo          Texto,
        cancelado            Status
                                    CHECK ((cancelado in (0,1))),
        justificativa        Texto,
        dataliberacao        datetime NULL,
        idbiblio_bloqueio    int NULL,
        idbiblio_libera      int NULL,
        PRIMARY KEY NONCLUSTERED (idbloqueio), 
        FOREIGN KEY (idbiblio_bloqueio)
                              REFERENCES lleitor, 
        FOREIGN KEY (idbiblio_libera)
                              REFERENCES lleitor, 
        FOREIGN KEY (Idleitor)
                              REFERENCES lleitor
 )
go
 
 DROP INDEX lbloqueio.PKlbloqueio
go
 
 DROP INDEX lbloqueio.Fklbloqueio
go
 
 DROP INDEX lbloqueio.XIF146lbloqueio
go
 
 DROP INDEX lbloqueio.XIF147lbloqueio
go
 
 
 DROP TABLE LDEstado
go
 
 CREATE TABLE LDEstado (
        Estado               varchar(100) NOT NULL,
        Pais                 varchar(100) NULL,
        PRIMARY KEY (Estado)
 )
go
 
 DROP INDEX LDEstado.PKLDEstado
go
 
 
 DROP TABLE lparametro
go
 
 CREATE TABLE lparametro (
        idgrupo              int NULL,
        mtombo               varchar(20) NULL,
        idgrupovis           int NULL,
        mcodedit             varchar(20) NULL,
        mcodlocal            varchar(20) NULL,
        mcodgrupo            varchar(20) NULL,
        mcodsuporte          varchar(20) NULL,
        bloqueio             Status NULL
                                    CHECK ((bloqueio in (0,1))),
        regmultabibi         Status NULL
                                    CHECK ((regmultabibi in (0,1))),
        regdevbibi           Status NULL
                                    CHECK ((regdevbibi in (0,1))),
        regempbibi           Status NULL
                                    CHECK ((regempbibi in (0,1))),
        regreservabibi       Status NULL
                                    CHECK ((regreservabibi in (0,1))),
        regbloqueio          Status NULL
                                    CHECK ((regbloqueio in (0,1))),
        regliberabibli       Status NULL
                                    CHECK ((regliberabibli in (0,1))),
        regconsultabibi      Status NULL
                                    CHECK ((regconsultabibi in (0,1))),
        regdevconsbibi       Status NULL
                                    CHECK ((regdevconsbibi in (0,1)))
 )
go
 
 
 DROP TABLE leditora
go
 
 CREATE TABLE leditora (
        Codedit              Codigo NOT NULL,
        IDED                 int IDENTITY(1,1),
        Editora              varchar(100) NOT NULL,
        RazaoSocial          varchar(100) NULL,
        Ender                varchar(100) NULL,
        Cidade               varchar(100) NULL,
        CGC                  varchar(30) NULL,
        Federa               varchar(20) NULL,
        Pais                 varchar(20) NULL,
        Bairro               varchar(50) NULL,
        CEP                  varchar(20) NULL,
        E_mail               varchar(100) NULL,
        Web                  varchar(100) NULL,
        Obs                  Texto,
        DDI_1                int NULL,
        DDI_2                int NULL,
        TEdForn              TIPOFORNECEDOR
                                    CHECK (TEdForn IN ('EDITORA', 'FORNECEDOR', 'AMBOS')),
        DDI_3                int NULL,
        Ativo                Status
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
        PRIMARY KEY NONCLUSTERED (IDED)
 )
go
 
 DROP INDEX leditora.PKiditora
go
 
 DROP INDEX leditora.I_codeditora
go
 
 DROP INDEX leditora.I_leditora_razaosocial
go
 
 DROP INDEX leditora.I_editora
go
 
 CREATE UNIQUE CLUSTERED INDEX I_codeditora ON leditora
 (
        Codedit
 )
go
 
 CREATE UNIQUE INDEX I_leditora_razaosocial ON leditora
 (
        RazaoSocial
 )
go
 
 CREATE INDEX I_editora ON leditora
 (
        Editora
 )
go
 
 
 DROP TABLE lassinatura
go
 
 CREATE TABLE lassinatura (
        Idassina             int IDENTITY(1,1),
        Nassinante           Codigo NOT NULL,
        Data_ass             datetime NULL,
        Data_fim             datetime NULL,
        Data_pg              datetime NULL,
        Preco                Monetario,
        Obs                  Texto,
        Total                int NULL,
        Periodicidade        varchar(20) NULL,
        IdForn               int NULL,
        PRIMARY KEY (Idassina), 
        FOREIGN KEY (IdForn)
                              REFERENCES leditora
 )
go
 
 DROP INDEX lassinatura.PKlassinatura
go
 
 DROP INDEX lassinatura.FKlassinatura_fornecedor
go
 
 
 DROP TABLE llocal
go
 
 CREATE TABLE llocal (
        idlocal              int IDENTITY(1,1),
        Nome                 varchar(100) NOT NULL,
        codlocal             Codigo NOT NULL,
        Ender                varchar(100) NULL,
        Bairro               varchar(50) NULL,
        Cidade               varchar(100) NULL,
        Federa               varchar(20) NULL,
        Pais                 varchar(20) NULL,
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
        ObsTel_1             Texto,
        ObsTel_2             Texto,
        ObsTel_3             Texto,
        obs                  Texto,
        PRIMARY KEY NONCLUSTERED (idlocal)
 )
go
 
 DROP INDEX llocal.PKidlocal
go
 
 DROP INDEX llocal.I_depositario
go
 
 DROP INDEX llocal.I_codlocal
go
 
 CREATE UNIQUE INDEX I_depositario ON llocal
 (
        Nome
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX I_codlocal ON llocal
 (
        codlocal
 )
go
 
 
 DROP TABLE lsuporte
go
 
 CREATE TABLE lsuporte (
        suporte              varchar(100) NOT NULL,
        tipo                 varchar(21) NOT NULL,
        Código               Codigo,
        PRIMARY KEY NONCLUSTERED (tipo, suporte)
 )
go
 
 DROP INDEX lsuporte.PKlsuporte
go
 
 DROP INDEX lsuporte.I_lsuporte_codigo
go
 
 CREATE UNIQUE CLUSTERED INDEX I_lsuporte_codigo ON lsuporte
 (
        tipo,
        Código
 )
go
 
 
 DROP TABLE lperiodico
go
 
 CREATE TABLE lperiodico (
        Idobra               int IDENTITY(1,1),
        Tipo                 varchar(21) NOT NULL,
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
        Nt_geral             Texto,
        IDED                 int NOT NULL,
        suporte              varchar(100) NOT NULL,
        PRIMARY KEY (Idobra, Tipo), 
        FOREIGN KEY (Tipo, suporte)
                              REFERENCES lsuporte, 
        FOREIGN KEY (IDED)
                              REFERENCES leditora
 )
go
 
 DROP INDEX lperiodico.PKlperiodico
go
 
 DROP INDEX lperiodico.I_lperiodico_titulo
go
 
 DROP INDEX lperiodico.I_lperiodico_CNN
go
 
 DROP INDEX lperiodico.I_lperiodico_ISSN
go
 
 DROP INDEX lperiodico.FKlperiodico_suporte
go
 
 DROP INDEX lperiodico.FKlperiodico_editora
go
 
 DROP INDEX lperiodico.I_lperiodico_dataini
go
 
 CREATE UNIQUE INDEX I_lperiodico_titulo ON lperiodico
 (
        Título
 )
go
 
 CREATE UNIQUE INDEX I_lperiodico_CNN ON lperiodico
 (
        CNN
 )
go
 
 CREATE UNIQUE INDEX I_lperiodico_ISSN ON lperiodico
 (
        ISSN
 )
go
 
 CREATE INDEX I_lperiodico_dataini ON lperiodico
 (
        Data_ini
 )
go
 
 
 DROP TABLE lfasciculo
go
 
 CREATE TABLE lfasciculo (
        Idfasc               int IDENTITY(1,1),
        Tipo                 varchar(21) NOT NULL,
        Tombo                Codigo,
        titulo               varchar(100) NULL,
        Num                  int NULL,
        Ano                  int NULL,
        Volume               varchar(20) NULL,
        Mes                  varchar(20) NULL,
        ISSN                 varchar(13) NULL,
        Npag                 int NULL,
        Nota_indicativa      Texto,
        Idassina             int NULL,
        idlocal              int NOT NULL,
        Idobra               int NOT NULL,
        Dono                 varchar(100) NULL,
        Perda                datetime NULL,
        Motivo               Texto,
        No_exe               int NULL,
        Flag_emp             Status NULL
                                    CHECK ((Flag_emp in (0,1))),
        Razao                varchar(20) NULL,
        Capa                 Imagem,
        refbibli             Texto,
        TipoAqs              varchar(20) NULL,
        Data_compra          datetime NULL,
        Data_pg              datetime NULL,
        Data_chegada         datetime NULL,
        Preco                Monetario,
        Obs                  Texto,
        Idforn               int NULL,
        PRIMARY KEY NONCLUSTERED (Idfasc, Tipo), 
        FOREIGN KEY (Idforn)
                              REFERENCES leditora, 
        FOREIGN KEY (Idassina)
                              REFERENCES lassinatura, 
        FOREIGN KEY (idlocal)
                              REFERENCES llocal, 
        FOREIGN KEY (Idobra, Tipo)
                              REFERENCES lperiodico
 )
go
 
 DROP INDEX lfasciculo.PKidfasc
go
 
 DROP INDEX lfasciculo.I_lfasciculo_tombo
go
 
 DROP INDEX lfasciculo.I_lfasciculo_referencia
go
 
 DROP INDEX lfasciculo.FKlfasciculo_periodico
go
 
 DROP INDEX lfasciculo.FKlfasciculo_local
go
 
 DROP INDEX lfasciculo.FKlfasciculo_assinatura
go
 
 DROP INDEX lfasciculo.FKfasciculo_fornecedor
go
 
 DROP INDEX lfasciculo.I_lfasciculo_ISSN
go
 
 DROP INDEX lfasciculo.I_lfasciculo_titulo
go
 
 CREATE UNIQUE INDEX I_lfasciculo_tombo ON lfasciculo
 (
        Tombo
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX I_lfasciculo_referencia ON lfasciculo
 (
        Volume,
        Ano,
        Mes,
        Num,
        No_exe,
        Idobra
 )
go
 
 CREATE INDEX I_lfasciculo_ISSN ON lfasciculo
 (
        ISSN
 )
go
 
 CREATE INDEX I_lfasciculo_titulo ON lfasciculo
 (
        titulo
 )
go
 
 
 DROP TABLE lempdev
go
 
 CREATE TABLE lempdev (
        Idemprestimo         int IDENTITY(1,1),
        dataemprestimo       datetime NULL,
        Idleitor             int NOT NULL,
        idbiblio             int NULL,
        PRIMARY KEY (Idemprestimo), 
        FOREIGN KEY (Idleitor)
                              REFERENCES lleitor, 
        FOREIGN KEY (idbiblio)
                              REFERENCES lleitor
 )
go
 
 DROP INDEX lempdev.PKlempdev
go
 
 DROP INDEX lempdev.FKlempdev_bibliotecario
go
 
 DROP INDEX lempdev.FKlempdev_leitor
go
 
 
 DROP TABLE lobramon
go
 
 CREATE TABLE lobramon (
        Idobra               int IDENTITY(1,1),
        Titulo               varchar(100) NULL,
        Classifica           varchar(30) NULL,
        Cutter               varchar(30) NULL,
        ISBN                 varchar(13) NULL,
        Nvolbib              int NULL,
        Nvolfis              int NULL,
        Local                varchar(150) NULL,
        DescriFi             Texto,
        Idioma               varchar(20) NULL,
        Titulo_Orig          varchar(100) NULL,
        Total                int NULL,
        Tperdas              int NULL,
        Serie                varchar(100) NULL,
        Nt_Geral             Texto,
        Resumo               Texto,
        Conteudo             Texto,
        IDED                 int NOT NULL,
        suporte              varchar(100) NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        PRIMARY KEY NONCLUSTERED (Idobra, Tipo), 
        FOREIGN KEY (Tipo, suporte)
                              REFERENCES lsuporte, 
        FOREIGN KEY (IDED)
                              REFERENCES leditora
 )
go
 
 DROP INDEX lobramon.PKidobra
go
 
 DROP INDEX lobramon.I_lobra_isbn
go
 
 DROP INDEX lobramon.FKlobra_suporte
go
 
 DROP INDEX lobramon.FKlobra_editora
go
 
 DROP INDEX lobramon.I_lobra_titulo
go
 
 DROP INDEX lobramon.I_lobra_serie
go
 
 CREATE UNIQUE INDEX I_lobra_isbn ON lobramon
 (
        ISBN
 )
go
 
 CREATE CLUSTERED INDEX I_lobra_titulo ON lobramon
 (
        Titulo,
        Titulo_Orig
 )
go
 
 CREATE INDEX I_lobra_serie ON lobramon
 (
        Serie
 )
go
 
 
 DROP TABLE lreservas
go
 
 CREATE TABLE lreservas (
        idreserva            int IDENTITY(1,1),
        Tipo                 varchar(21) NOT NULL,
        idobra               int NOT NULL,
        Idleitor             int NOT NULL,
        datareserva          datetime NOT NULL,
        volume               int NULL,
        cancelado            Status
                                    CHECK ((cancelado in (0,1))),
        dataconcessao        datetime NULL,
        idbiblio             int NULL,
        PRIMARY KEY (idreserva), 
        FOREIGN KEY (idobra, Tipo)
                              REFERENCES lperiodico, 
        FOREIGN KEY (idbiblio)
                              REFERENCES lleitor, 
        FOREIGN KEY (idobra, Tipo)
                              REFERENCES lobramon, 
        FOREIGN KEY (Idleitor)
                              REFERENCES lleitor
 )
go
 
 DROP INDEX lreservas.PKlreservas
go
 
 DROP INDEX lreservas.I_reserva_bibliotecario
go
 
 DROP INDEX lreservas.FKlreservas_peri
go
 
 DROP INDEX lreservas.FKlreservas_leitor
go
 
 DROP INDEX lreservas.FKlreservas_obra
go
 
 
 exec sp_bindefault DSTATUS, 'lreservas.cancelado'
go
 
 DROP TABLE lmono
go
 
 CREATE TABLE lmono (
        Tombo                Codigo,
        Idmono               int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        Titulo_exe           varchar(100) NULL,
        Volume               varchar(20) NULL,
        Tomo                 int NULL,
        Edicao               int NULL,
        Impressao            int NULL,
        Tiragem              int NULL,
        Atualizado           Status
                                    CHECK ((Atualizado in (0,1))),
        Revisado             Status
                                    CHECK ((Revisado in (0,1))),
        Aumentado            Status
                                    CHECK ((Aumentado in (0,1))),
        Ampliado             Status
                                    CHECK ((Ampliado in (0,1))),
        Ano_pub              Status NULL
                                    CHECK ((Ano_pub in (0,1))),
        Estacao              varchar(20) NULL,
        Ilust                Status
                                    CHECK ((Ilust in (0,1))),
        Npag                 int NULL,
        Dimensao             varchar(20) NULL,
        ISBN                 varchar(13) NULL,
        idlocal              int NOT NULL,
        Idobra               int NOT NULL,
        Dono                 varchar(100) NULL,
        Perda                datetime NULL,
        Motivo               Texto,
        No_exe               int NULL,
        Flag_emp             Status
                                    CHECK ((Flag_emp in (0,1))),
        Razao                varchar(20) NULL,
        Capa                 Imagem,
        TipoAqs              varchar(20) NULL,
        refbibli             Texto,
        Data_compra          datetime NULL,
        Data_pg              datetime NULL,
        Data_chegada         datetime NULL,
        Preco                Monetario,
        Obs                  Texto,
        Idforn               int NULL,
        PRIMARY KEY NONCLUSTERED (Idmono, Tipo), 
        FOREIGN KEY (Idobra, Tipo)
                              REFERENCES lobramon, 
        FOREIGN KEY (Idforn)
                              REFERENCES leditora, 
        FOREIGN KEY (idlocal)
                              REFERENCES llocal
 )
go
 
 DROP INDEX lmono.PKidmono
go
 
 DROP INDEX lmono.I_lmono_tombo
go
 
 DROP INDEX lmono.I_lmono_ano
go
 
 DROP INDEX lmono.I_lmono_referencia
go
 
 DROP INDEX lmono.FKlmono_local
go
 
 DROP INDEX lmono.FKlmono_fornecedor
go
 
 DROP INDEX lmono.FKlmono_obra
go
 
 DROP INDEX lmono.I_lmono_titulo
go
 
 DROP INDEX lmono.I_lmono_isbn
go
 
 CREATE UNIQUE INDEX I_lmono_tombo ON lmono
 (
        Tombo
 )
go
 
 CREATE UNIQUE INDEX I_lmono_ano ON lmono
 (
        Ano_pub
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX I_lmono_referencia ON lmono
 (
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
go
 
 CREATE INDEX I_lmono_titulo ON lmono
 (
        Titulo_exe
 )
go
 
 CREATE INDEX I_lmono_isbn ON lmono
 (
        ISBN
 )
go
 
 
 DROP TABLE lcompoemp
go
 
 CREATE TABLE lcompoemp (
        idexemplar           int NOT NULL,
        Idemprestimo         int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        datadevprev          datetime NOT NULL,
        datadevolvida        datetime NULL,
        idreserva            int NULL,
        Idbiblio             int NULL,
        nemp                 int NULL,
        PRIMARY KEY (Idemprestimo, idexemplar, Tipo), 
        FOREIGN KEY (idexemplar, Tipo)
                              REFERENCES lfasciculo, 
        FOREIGN KEY (Idbiblio)
                              REFERENCES lleitor, 
        FOREIGN KEY (Idemprestimo)
                              REFERENCES lempdev, 
        FOREIGN KEY (idreserva)
                              REFERENCES lreservas, 
        FOREIGN KEY (idexemplar, Tipo)
                              REFERENCES lmono
 )
go
 
 DROP INDEX lcompoemp.PKlcompoemp
go
 
 DROP INDEX lcompoemp.FKlcompoemp_bibliotecario
go
 
 DROP INDEX lcompoemp.FKlcompoemp_fasciculo
go
 
 DROP INDEX lcompoemp.FKlcompoemp_monografia
go
 
 DROP INDEX lcompoemp.FKlcompoemp_reserva
go
 
 DROP INDEX lcompoemp.FKlcompoemp_emprestimo
go
 
 
 DROP TABLE lconsulta
go
 
 CREATE TABLE lconsulta (
        Idcons               int IDENTITY(1,1),
        dataconsulta         datetime NULL,
        Idleitor             int NOT NULL,
        idbiblio             int NULL,
        PRIMARY KEY (Idcons), 
        FOREIGN KEY (Idleitor)
                              REFERENCES lleitor, 
        FOREIGN KEY (idbiblio)
                              REFERENCES lleitor
 )
go
 
 DROP INDEX lconsulta.PKlconsulta
go
 
 DROP INDEX lconsulta.FKlconsulta_bibliotecario
go
 
 DROP INDEX lconsulta.FKlconsulta_leitor
go
 
 
 DROP TABLE lcompocons
go
 
 CREATE TABLE lcompocons (
        idexemplar           int NOT NULL,
        Idcons               int NOT NULL,
        Tipo                 varchar(21) NOT NULL,
        datadevolvida        datetime NULL,
        idbiblio             int NULL,
        PRIMARY KEY (Idcons, idexemplar, Tipo), 
        FOREIGN KEY (idexemplar, Tipo)
                              REFERENCES lfasciculo, 
        FOREIGN KEY (idbiblio)
                              REFERENCES lleitor, 
        FOREIGN KEY (Idcons)
                              REFERENCES lconsulta, 
        FOREIGN KEY (idexemplar, Tipo)
                              REFERENCES lmono
 )
go
 
 DROP INDEX lcompocons.PKlcompocons
go
 
 DROP INDEX lcompocons.FKlcompocons_bibliotecario
go
 
 DROP INDEX lcompocons.FKlcompocons_fasciculo
go
 
 DROP INDEX lcompocons.FKlcompocons_monografia
go
 
 DROP INDEX lcompocons.FKlcompocons_consulta
go
 
 
 DROP TABLE lmulta
go
 
 CREATE TABLE lmulta (
        idmulta              int IDENTITY(1,1),
        idexemplar           int NOT NULL,
        Diasatraso           int NULL,
        Valor                Monetario,
        Tipo                 varchar(21) NOT NULL,
        situacao             Status
                                    CHECK ((situacao in (0,1))),
        datamulta            datetime NULL,
        Idcons               int NULL,
        idbiblio             int NULL,
        Idemprestimo         int NOT NULL,
        idleitor             int NULL,
        PRIMARY KEY NONCLUSTERED (idmulta), 
        FOREIGN KEY (Idemprestimo, idexemplar, Tipo)
                              REFERENCES lcompoemp, 
        FOREIGN KEY (idbiblio)
                              REFERENCES lleitor, 
        FOREIGN KEY (Idcons, idexemplar, Tipo)
                              REFERENCES lcompocons
 )
go
 
 DROP INDEX lmulta.PKlmulta
go
 
 DROP INDEX lmulta.FKlmulta_consulta
go
 
 DROP INDEX lmulta.FKlmulta_bibliotecario
go
 
 DROP INDEX lmulta.FKlmulta_emprestimo
go
 
 DROP INDEX lmulta.I_idleitor
go
 
 CREATE CLUSTERED INDEX I_idleitor ON lmulta
 (
        idleitor,
        situacao
 )
go
 
 
 DROP TABLE lassunto
go
 
 CREATE TABLE lassunto (
        Idassto              int IDENTITY(1,1),
        Assunto              varchar(100) NULL,
        Ativo                Status
                                    CHECK ((Ativo in (0,1))),
        CDD                  varchar(20) NULL,
        CDU                  varchar(20) NULL,
        PRIMARY KEY NONCLUSTERED (Idassto)
 )
go
 
 DROP INDEX lassunto.PKAssunto
go
 
 DROP INDEX lassunto.I_assunto
go
 
 DROP INDEX lassunto.I_lassunto_CDD
go
 
 DROP INDEX lassunto.I_lassunto_CDU
go
 
 CREATE UNIQUE CLUSTERED INDEX I_assunto ON lassunto
 (
        Assunto
 )
go
 
 CREATE UNIQUE INDEX I_lassunto_CDD ON lassunto
 (
        CDD
 )
go
 
 CREATE UNIQUE INDEX I_lassunto_CDU ON lassunto
 (
        CDU
 )
go
 
 
 DROP TABLE lanaperi
go
 
 CREATE TABLE lanaperi (
        Idana                int IDENTITY(1,1),
        TituloArt            varchar(100) NOT NULL,
        Pg_ini               int NOT NULL,
        Pg_fim               int NOT NULL,
        Resumo               Texto,
        Conteudo             Texto,
        Idfasc               int NOT NULL,
        LocalFis             Texto,
        Tipo                 varchar(21) NOT NULL,
        refbibli             Texto,
        PRIMARY KEY (Idana), 
        FOREIGN KEY (Idfasc, Tipo)
                              REFERENCES lfasciculo
 )
go
 
 DROP INDEX lanaperi.PKlanaperi
go
 
 DROP INDEX lanaperi.FKlanaperi_fasciculos
go
 
 DROP INDEX lanaperi.I_lanaperi_titulos
go
 
 CREATE INDEX I_lanaperi_titulos ON lanaperi
 (
        TituloArt
 )
go
 
 
 DROP TABLE lanaperiassunto
go
 
 CREATE TABLE lanaperiassunto (
        Idana                int NOT NULL,
        Idassto              int NOT NULL,
        Principal            Status
                                    CHECK ((Principal in (0,1))),
        PRIMARY KEY (Idana, Idassto), 
        FOREIGN KEY (Idassto)
                              REFERENCES lassunto, 
        FOREIGN KEY (Idana)
                              REFERENCES lanaperi
 )
go
 
 DROP INDEX lanaperiassunto.PKlanaperiassunto
go
 
 DROP INDEX lanaperiassunto.FKlanaperiassunto_analitica
go
 
 DROP INDEX lanaperiassunto.FKlanaperiassunto_assunto
go
 
 
 DROP TABLE lautor
go
 
 CREATE TABLE lautor (
        Idautor              int IDENTITY(1,1),
        Nome                 varchar(100) NULL,
        Cutter               varchar(20) NULL,
        PRIMARY KEY NONCLUSTERED (Idautor)
 )
go
 
 DROP INDEX lautor.PKAutor
go
 
 DROP INDEX lautor.I_lautor_cutter
go
 
 DROP INDEX lautor.I_lautor
go
 
 CREATE UNIQUE INDEX I_lautor_cutter ON lautor
 (
        Cutter
 )
go
 
 CREATE CLUSTERED INDEX I_lautor ON lautor
 (
        Nome
 )
go
 
 
 DROP TABLE lanaperiautor
go
 
 CREATE TABLE lanaperiautor (
        Idautor              int NOT NULL,
        Idana                int NOT NULL,
        Tipoautor            varchar(50) NOT NULL,
        PRIMARY KEY (Idautor, Idana), 
        FOREIGN KEY (Idana)
                              REFERENCES lanaperi, 
        FOREIGN KEY (Idautor)
                              REFERENCES lautor
 )
go
 
 DROP INDEX lanaperiautor.PKlanaperiautor
go
 
 DROP INDEX lanaperiautor.FKlanaperiautor_autor
go
 
 DROP INDEX lanaperiautor.FKlanaperiautor_analitica
go
 
 
 DROP TABLE lmonoautor
go
 
 CREATE TABLE lmonoautor (
        Tipo                 varchar(21) NOT NULL,
        Idmono               int NOT NULL,
        Idautor              int NOT NULL,
        Tipoautor            varchar(50) NOT NULL,
        PRIMARY KEY (Tipo, Idmono, Idautor), 
        FOREIGN KEY (Idautor)
                              REFERENCES lautor, 
        FOREIGN KEY (Idmono, Tipo)
                              REFERENCES lmono
 )
go
 
 DROP INDEX lmonoautor.PKlmonoautor
go
 
 DROP INDEX lmonoautor.FKlmonoautor_monografia
go
 
 DROP INDEX lmonoautor.FKlmonoautor_autor
go
 
 
 DROP TABLE LDdono
go
 
 CREATE TABLE LDdono (
        Dono                 varchar(100) NOT NULL,
        PRIMARY KEY (Dono)
 )
go
 
 
 DROP TABLE LDMes
go
 
 CREATE TABLE LDMes (
        Mes                  varchar(20) NOT NULL,
        PRIMARY KEY (Mes)
 )
go
 
 
 DROP TABLE lmonoassunto
go
 
 CREATE TABLE lmonoassunto (
        Tipo                 varchar(21) NOT NULL,
        Idmono               int NOT NULL,
        Idassto              int NOT NULL,
        Principal            Status
                                    CHECK ((Principal in (0,1))),
        PRIMARY KEY (Tipo, Idmono, Idassto), 
        FOREIGN KEY (Idassto)
                              REFERENCES lassunto, 
        FOREIGN KEY (Idmono, Tipo)
                              REFERENCES lmono
 )
go
 
 DROP INDEX lmonoassunto.PKlmonoassunto
go
 
 DROP INDEX lmonoassunto.FKlmonoassunto_monografia
go
 
 DROP INDEX lmonoassunto.FKlmonoassunto_assunto
go
 
 
 DROP TABLE lassuntoperi
go
 
 CREATE TABLE lassuntoperi (
        Tipo                 varchar(21) NOT NULL,
        Idassto              int NOT NULL,
        Idobra               int NOT NULL,
        Principal            Status
                                    CHECK ((Principal in (0,1))),
        PRIMARY KEY (Tipo, Idassto, Idobra), 
        FOREIGN KEY (Idobra, Tipo)
                              REFERENCES lperiodico, 
        FOREIGN KEY (Idassto)
                              REFERENCES lassunto
 )
go
 
 DROP INDEX lassuntoperi.PKlassuntoperi
go
 
 DROP INDEX lassuntoperi.FKlassuntoperi_assunto
go
 
 DROP INDEX lassuntoperi.FKlassuntoperi_obra
go
 
 
 DROP TABLE LDIdioma
go
 
 CREATE TABLE LDIdioma (
        Idioma               varchar(100) NOT NULL,
        PRIMARY KEY (Idioma)
 )
go
 
 
 DROP TABLE LDPeriodicidade
go
 
 CREATE TABLE LDPeriodicidade (
        Periodo              varchar(100) NOT NULL,
        PRIMARY KEY (Periodo)
 )
go
 
 
 DROP TABLE LDPais
go
 
 CREATE TABLE LDPais (
        Pais                 varchar(100) NOT NULL,
        PRIMARY KEY (Pais)
 )
go
 
 
 DROP TABLE lctrlemp
go
 
 CREATE TABLE lctrlemp (
        suporte              varchar(100) NOT NULL,
        tipo                 varchar(21) NOT NULL,
        Idgrupo              int NOT NULL,
        Flag_emp             Status
                                    CHECK ((Flag_emp in (0,1))),
        N_emp                int NULL,
        N_dias               int NULL,
        RecMulta             Status
                                    CHECK ((RecMulta in (0,1))),
        Multa                Monetario,
        Bloqueio             Status
                                    CHECK ((Bloqueio in (0,1))),
        Suspende             Status
                                    CHECK ((Suspende in (0,1))),
        SuspFixo             int NULL,
        Spen                 Status
                                    CHECK ((Spen in (0,1))),
        PRIMARY KEY (suporte, tipo, Idgrupo), 
        FOREIGN KEY (Idgrupo)
                              REFERENCES lgrupo, 
        FOREIGN KEY (tipo, suporte)
                              REFERENCES lsuporte
 )
go
 
 DROP INDEX lctrlemp.PKlctrlemp
go
 
 DROP INDEX lctrlemp.FKlctrlemp_suporte
go
 
 DROP INDEX lctrlemp.FKlctrlemp_grupo
go
 
 
 DROP TABLE lctrlcons
go
 
 CREATE TABLE lctrlcons (
        suporte              varchar(100) NOT NULL,
        tipo                 varchar(21) NOT NULL,
        Idgrupo              int NOT NULL,
        Recmulta             Status
                                    CHECK ((Recmulta in (0,1))),
        multa                Monetario,
        Bloqueio             Status
                                    CHECK ((Bloqueio in (0,1))),
        suspende             Status
                                    CHECK ((suspende in (0,1))),
        SuspFixo             int NULL,
        Spen                 Status
                                    CHECK ((Spen in (0,1))),
        PRIMARY KEY (suporte, tipo, Idgrupo), 
        FOREIGN KEY (Idgrupo)
                              REFERENCES lgrupo, 
        FOREIGN KEY (tipo, suporte)
                              REFERENCES lsuporte
 )
go
 
 DROP INDEX lctrlcons.PKlctrlcons
go
 
 DROP INDEX lctrlcons.FKlctrlcons_suporte
go
 
 DROP INDEX lctrlcons.FKlctrlcons_grupo
go
 
 
 DROP TABLE LDSerie
go
 
 CREATE TABLE LDSerie (
        serie                varchar(100) NOT NULL,
        PRIMARY KEY (serie)
 )
go
 
 DROP INDEX LDSerie.PKLDSerie
go
 
 
 DROP TABLE LDResponsabilidade
go
 
 CREATE TABLE LDResponsabilidade (
        responsabilidade     varchar(50) NOT NULL,
        PRIMARY KEY (responsabilidade)
 )
go
 
 DROP INDEX LDResponsabilidade.PKLDResponsabilidade
go
 
 DROP VIEW vvisitante
go
 
 CREATE VIEW vvisitante AS
        SELECT L.Idleitor, L.Nome, L.Ender, L.Bairro, L.Cidade, L.Federa, L.Pais, L.CEP, L.E_mail, L.Web, L.comercial, L.residencial, L.Celular, L.Obs, L.Dtnascimento
        FROM lleitor L, lparametro P
        WHERE  P.idgrupovis= L.Idgrupo
        WITH CHECK OPTION
go
 
 DROP VIEW vbibliotecario
go
 
 CREATE VIEW vbibliotecario AS
        SELECT 
        FROM 
        WHERE  P.idgrupo= L.Idgrupo
        WITH CHECK OPTION
go
 
 DROP VIEW vdepenciaemp
go
 
 CREATE VIEW vdepenciaemp AS
        SELECT lempdev.Idleitor
        FROM lempdev, lcompoemp
        WHERE (lcompoemp.datadevprev<getdate()) and
(lcompoemp.datadevolvida is null)
        WITH CHECK OPTION
go
 
 DROP VIEW vmulta_consulta
go
 
 CREATE VIEW vmulta_consulta (datamulta, Diasatraso, Valor, idexemplar, Idcons, Idleitor)  AS
        SELECT lcompocons.datadevolvida, lcompocons.datadevolvida-lconsulta.dataconsulta, (lctrlemp.multa*diasatraso), lcompocons.idexemplar, lconsulta.Idcons, lconsulta.Idleitor
        FROM lconsulta, lcompocons, lmono, lobramon, lleitor, lctrlcons
go
 
 DROP VIEW vmulta_emprestimo
go
 
 CREATE VIEW vmulta_emprestimo (datamulta, Diasatraso, Valor, idexemplar, Idemprestimo, Idleitor)  AS
        SELECT lcompoemp.datadevolvida, datadevolvida-datadevprev, (lctrlemp.multa*diasatraso), lcompoemp.idexemplar, lcompoemp.Idemprestimo, lempdev.Idleitor
        FROM lempdev, lcompoemp, lmono, lobramon, lleitor, lctrlemp
        WITH CHECK OPTION
go
 
 DROP VIEW vbibliotecario
go
 
 CREATE VIEW vbibliotecario AS
        SELECT L.Idleitor, L.Nome, L.Ender, L.Bairro, L.Cidade, L.Federa, L.Pais, L.CEP, L.E_mail, L.Web, L.comercial, L.residencial, L.Celular, L.Obs, L.Dtnascimento
        FROM lleitor L, lparametro P
        WHERE  P.idgrupo= L.Idgrupo
        WITH CHECK OPTION
go
 
 DROP VIEW vfornecedor
go
 
 CREATE VIEW vfornecedor (Tipo, Ativo, IDED, Codedit, Editora, RazaoSocial, CGC, Ender, Bairro, Cidade, Federa, Pais, CEP, E_mail, Web, Obs, DDI_1, DDI_2, DDI_3, DDD_1, DDD_2, DDD_3, Fone_1, Fone_2, Fone_3, Ramal_1, Ramal_2, Ramal_3, ClassTel_1, ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2, ObsTel_3)  AS
        SELECT leditora.TEdForn, leditora.Ativo, leditora.IDED, leditora.Codedit, leditora.Editora, leditora.RazaoSocial, leditora.CGC, leditora.Ender, leditora.Bairro, leditora.Cidade, leditora.Federa, leditora.Pais, leditora.CEP, leditora.E_mail, leditora.Web, leditora.Obs, leditora.DDI_1, leditora.DDI_2, leditora.DDI_3, leditora.DDD_1, leditora.DDD_2, leditora.DDD_3, leditora.Fone_1, leditora.Fone_2, leditora.Fone_3, leditora.Ramal_1, leditora.Ramal_2, leditora.Ramal_3, leditora.ClassTel_1, leditora.ClassTel_2, leditora.ClassTel_3, leditora.ObsTel_1, leditora.ObsTel_2, leditora.ObsTel_3
        FROM leditora
        WHERE Tipo<>'EDITORA'
        WITH CHECK OPTION
go
 
 DROP VIEW veditora
go
 
 CREATE VIEW veditora (Tipo, Ativo, IDED, Codedit, Editora, RazaoSocial, CGC, Ender, Bairro, Cidade, Federa, Pais, CEP, E_mail, Web, Obs, DDI_1, DDI_2, DDI_3, DDD_1, DDD_2, DDD_3, Fone_1, Fone_2, Fone_3, Ramal_1, Ramal_2, Ramal_3, ClassTel_1, ClassTel_2, ClassTel_3, ObsTel_1, ObsTel_2, ObsTel_3)  AS
        SELECT leditora.TEdForn, leditora.Ativo, leditora.IDED, leditora.Codedit, leditora.Editora, leditora.RazaoSocial, leditora.CGC, leditora.Ender, leditora.Bairro, leditora.Cidade, leditora.Federa, leditora.Pais, leditora.CEP, leditora.E_mail, leditora.Web, leditora.Obs, leditora.DDI_1, leditora.DDI_2, leditora.DDI_3, leditora.DDD_1, leditora.DDD_2, leditora.DDD_3, leditora.Fone_1, leditora.Fone_2, leditora.Fone_3, leditora.Ramal_1, leditora.Ramal_2, leditora.Ramal_3, leditora.ClassTel_1, leditora.ClassTel_2, leditora.ClassTel_3, leditora.ObsTel_1, leditora.ObsTel_2, leditora.ObsTel_3
        FROM leditora
        WHERE Tipo<>'FORNECEDOR'
        WITH CHECK OPTION
go
 
 DROP VIEW vregiao
go
 
 CREATE VIEW vregiao AS
        SELECT LDEstado.Estado, LDEstado.Pais
        FROM LDEstado, LDPais
        WHERE LDEstado.Pais=LDPais.Pais
        WITH CHECK OPTION
go
 
 DROP VIEW vreservas
go
 
 CREATE VIEW vreservas AS
        SELECT lreservas.idreserva, lreservas.idobra, lreservas.Idleitor, lreservas.datareserva, lreservas.volume, lreservas.dataconcessao, lreservas.idbiblio
        FROM lreservas
        WHERE cancelado=0
        WITH CHECK OPTION
go
 
 DROP VIEW vmulta
go
 
 CREATE VIEW vmulta AS
        SELECT lmulta.idmulta, lmulta.Diasatraso, lmulta.Valor, lmulta.idleitor
        FROM lmulta
        WHERE lmulta.situacao=0
        WITH CHECK OPTION
go
 
 DROP VIEW vcompoemp
go
 
 CREATE VIEW vcompoemp (Idleitor, suporte, Tipo, Nemprestimo)  AS
        SELECT lempdev.Idleitor, lobramon.suporte, lobramon.Tipo, Count(*)
        FROM lempdev, lcompoemp, lmono, lobramon
        WHERE lcompoemp.datadevolvida is null
        GROUP BY lempdev.Idleitor, lobramon.suporte, lobramon.tipo
        WITH CHECK OPTION
go
 
 DROP VIEW vcompocons
go
 
 CREATE VIEW vcompocons (Idleitor, suporte, Tipo, Nconsultas)  AS
        SELECT lconsulta.Idleitor, lobramon.suporte, lobramon.Tipo, Count(*)
        FROM lcompocons, lconsulta, lmono, lobramon
        WHERE lcompocons.datadevolvida is not null
        WITH CHECK OPTION
go
 
 DROP VIEW vmono_servicos
go
 
 CREATE VIEW vmono_servicos AS
        SELECT lmono.Idmono, lmono.Volume, lmono.Tomo, lmono.Idobra
        FROM lmono
        WHERE (lmono.Perda is null) and  (lmono.Flag_emp=0)
        WITH CHECK OPTION
go
 
 DROP VIEW vbloqueio
go
 
 CREATE VIEW vbloqueio AS
        SELECT lbloqueio.Idleitor, lbloqueio.cancelado, lbloqueio.dataliberacao
        FROM lbloqueio
        WHERE lbloqueio.cancelado=0
go
 
 
 
 
 create trigger tgrupo on lgrupo
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
/* DELETE,INSERT,UPDATE trigger on lgrupo */
/* default body for tgrupo */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdgrupo int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Grupo de leitores R/71 E/43 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lctrlcons
                where  lctrlcons.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Grupo de leitores porque existe E/43 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lgrupo R/71 lctrlcons ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idgrupo)
  begin
    if exists (
      select * from deleted,lctrlcons
      where
        /*  %JoinFKPK(lctrlcons,deleted," = "," and") */
        lctrlcons.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lgrupo because lctrlcons exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Grupo de leitores R/68 E/42 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lctrlemp
                where  lctrlemp.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Grupo de leitores porque existe E/42 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lgrupo R/68 lctrlemp ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idgrupo)
  begin
    if exists (
      select * from deleted,lctrlemp
      where
        /*  %JoinFKPK(lctrlemp,deleted," = "," and") */
        lctrlemp.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lgrupo because lctrlemp exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Grupo de leitores Pertence Leitores ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lleitor
                where  lleitor.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Grupo de leitores porque existe Leitores .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lgrupo Pertence lleitor ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idgrupo)
  begin
    if exists (
      select * from deleted,lleitor
      where
        /*  %JoinFKPK(lleitor,deleted," = "," and") */
        lleitor.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lgrupo because lleitor exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tleitor on lleitor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
/* DELETE,INSERT,UPDATE trigger on lleitor */
/* default body for tleitor */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdleitor int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lgrupo Pertence lleitor ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* %JoinFKPK(inserted,lgrupo) */
          inserted.Idgrupo = lgrupo.Idgrupo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lleitor because lgrupo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lgrupo Pertence lleitor ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* %JoinFKPK(inserted,lgrupo) */
          inserted.Idgrupo = lgrupo.Idgrupo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lleitor because lgrupo does not exist.'
      goto error
    end
  end


/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor registra bloqueio lbloqueio ON PARENT DELETE SET NULL */
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_bloqueio = NULL
      from lbloqueio,deleted
      where
        /* %JoinFKPK(lbloqueio,deleted," = "," and") */
        lbloqueio.idbiblio_bloqueio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor registra bloqueio lbloqueio ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_bloqueio = NULL
      from lbloqueio,deleted
      where
        /* %JoinFKPK(lbloqueio,deleted," = "," and") */
        lbloqueio.idbiblio_bloqueio = deleted.Idleitor
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor registra liberação lbloqueio ON PARENT DELETE SET NULL */
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_libera = NULL
      from lbloqueio,deleted
      where
        /* %JoinFKPK(lbloqueio,deleted," = "," and") */
        lbloqueio.idbiblio_libera = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor registra liberação lbloqueio ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_libera = NULL
      from lbloqueio,deleted
      where
        /* %JoinFKPK(lbloqueio,deleted," = "," and") */
        lbloqueio.idbiblio_libera = deleted.Idleitor
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Leitores Bloquear Bloqueio ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lbloqueio
                where  lbloqueio.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Leitores porque existe Bloqueio .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Bloquear lbloqueio ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lbloqueio
      where
        /*  %JoinFKPK(lbloqueio,deleted," = "," and") */
        lbloqueio.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lbloqueio exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor Registra multa lmulta ON PARENT DELETE SET NULL */
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.idbiblio = NULL
      from lmulta,deleted
      where
        /* %JoinFKPK(lmulta,deleted," = "," and") */
        lmulta.idbiblio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Registra multa lmulta ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.idbiblio = NULL
      from lmulta,deleted
      where
        /* %JoinFKPK(lmulta,deleted," = "," and") */
        lmulta.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor Registra a devolução da consulta lcompocons ON PARENT DELETE SET NULL */
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idbiblio = NULL
      from lcompocons,deleted
      where
        /* %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.idbiblio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Registra a devolução da consulta lcompocons ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idbiblio = NULL
      from lcompocons,deleted
      where
        /* %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor Registra a reserva lreservas ON PARENT DELETE SET NULL */
    update lreservas
      set
        /* %SetFK(lreservas,NULL) */
        lreservas.idbiblio = NULL
      from lreservas,deleted
      where
        /* %JoinFKPK(lreservas,deleted," = "," and") */
        lreservas.idbiblio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Registra a reserva lreservas ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lreservas
      set
        /* %SetFK(lreservas,NULL) */
        lreservas.idbiblio = NULL
      from lreservas,deleted
      where
        /* %JoinFKPK(lreservas,deleted," = "," and") */
        lreservas.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor Registra devolução lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.Idbiblio = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.Idbiblio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Registra devolução lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.Idbiblio = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.Idbiblio = deleted.Idleitor
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Leitores Requisita Consulta ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lconsulta
                where  lconsulta.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Leitores porque existe Consulta .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Requisita lconsulta ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lconsulta
      where
        /*  %JoinFKPK(lconsulta,deleted," = "," and") */
        lconsulta.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lconsulta exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Leitores compõe Reserva ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lreservas
                where  lreservas.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Leitores porque existe Reserva .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor compõe lreservas ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lreservas
      where
        /*  %JoinFKPK(lreservas,deleted," = "," and") */
        lreservas.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lreservas exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor Registra consulta lconsulta ON PARENT DELETE SET NULL */
    update lconsulta
      set
        /* %SetFK(lconsulta,NULL) */
        lconsulta.idbiblio = NULL
      from lconsulta,deleted
      where
        /* %JoinFKPK(lconsulta,deleted," = "," and") */
        lconsulta.idbiblio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Registra consulta lconsulta ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lconsulta
      set
        /* %SetFK(lconsulta,NULL) */
        lconsulta.idbiblio = NULL
      from lconsulta,deleted
      where
        /* %JoinFKPK(lconsulta,deleted," = "," and") */
        lconsulta.idbiblio = deleted.Idleitor
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:53 2001 */
    /* Leitores Requisita Empréstimo e Devolução ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lempdev
                where  lempdev.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Leitores porque existe Empréstimo e Devolução .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Requisita lempdev ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lempdev
      where
        /*  %JoinFKPK(lempdev,deleted," = "," and") */
        lempdev.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lempdev exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
    /* lleitor Registra empréstimo lempdev ON PARENT DELETE SET NULL */
    update lempdev
      set
        /* %SetFK(lempdev,NULL) */
        lempdev.idbiblio = NULL
      from lempdev,deleted
      where
        /* %JoinFKPK(lempdev,deleted," = "," and") */
        lempdev.idbiblio = deleted.Idleitor
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Registra empréstimo lempdev ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idleitor)
  begin
    update lempdev
      set
        /* %SetFK(lempdev,NULL) */
        lempdev.idbiblio = NULL
      from lempdev,deleted
      where
        /* %JoinFKPK(lempdev,deleted," = "," and") */
        lempdev.idbiblio = deleted.Idleitor
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tI_lbloqueio on lbloqueio for INSERT as
/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
/* INSERT trigger on lbloqueio */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor registra bloqueio lbloqueio ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio_bloqueio)
  begin
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_bloqueio = NULL
      from lbloqueio,inserted
      where
        /* %JoinPKPK(lbloqueio,inserted," = "," and") */
        lbloqueio.idbloqueio = inserted.idbloqueio and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio_bloqueio = lleitor.Idleitor
        )
  end

  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor registra liberação lbloqueio ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio_libera)
  begin
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_libera = NULL
      from lbloqueio,inserted
      where
        /* %JoinPKPK(lbloqueio,inserted," = "," and") */
        lbloqueio.idbloqueio = inserted.idbloqueio and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio_libera = lleitor.Idleitor
        )
  end

  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Bloquear lbloqueio ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lbloqueio because lleitor does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go

create trigger tU_lbloqueio on lbloqueio for UPDATE as
/* ERwin Builtin Mon Oct 08 09:14:53 2001 */
/* UPDATE trigger on lbloqueio */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insidbloqueio int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor registra bloqueio lbloqueio ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio_bloqueio)
  begin
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_bloqueio = NULL
      from lbloqueio,inserted
      where
        /* %JoinPKPK(lbloqueio,inserted," = "," and") */
        lbloqueio.idbloqueio = inserted.idbloqueio and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio_bloqueio = lleitor.Idleitor
        )
  end

  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor registra liberação lbloqueio ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio_libera)
  begin
    update lbloqueio
      set
        /* %SetFK(lbloqueio,NULL) */
        lbloqueio.idbiblio_libera = NULL
      from lbloqueio,inserted
      where
        /* %JoinPKPK(lbloqueio,inserted," = "," and") */
        lbloqueio.idbloqueio = inserted.idbloqueio and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio_libera = lleitor.Idleitor
        )
  end

  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  /* lleitor Bloquear lbloqueio ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lbloqueio because lleitor does not exist.'
      goto error
    end
  end


  /* ERwin Builtin Mon Oct 08 09:14:53 2001 */
  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go

create trigger teditora on leditora
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* leditora Fornece lassinatura ON PARENT DELETE SET NULL */
    update lassinatura
      set
        /* %SetFK(lassinatura,NULL) */
        lassinatura.IdForn = NULL
      from lassinatura,deleted
      where
        /* %JoinFKPK(lassinatura,deleted," = "," and") */
        lassinatura.IdForn = deleted.IDED
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lassinatura ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(IDED)
  begin
    update lassinatura
      set
        /* %SetFK(lassinatura,NULL) */
        lassinatura.IdForn = NULL
      from lassinatura,deleted
      where
        /* %JoinFKPK(lassinatura,deleted," = "," and") */
        lassinatura.IdForn = deleted.IDED
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* leditora Fornece lfasciculo ON PARENT DELETE SET NULL */
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idforn = NULL
      from lfasciculo,deleted
      where
        /* %JoinFKPK(lfasciculo,deleted," = "," and") */
        lfasciculo.Idforn = deleted.IDED
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lfasciculo ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(IDED)
  begin
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idforn = NULL
      from lfasciculo,deleted
      where
        /* %JoinFKPK(lfasciculo,deleted," = "," and") */
        lfasciculo.Idforn = deleted.IDED
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Editora Publica Obra ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lobramon
                where  lobramon.IDED = deleted.IDED
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Editora porque existe Obra .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Publica lobramon ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(IDED)
  begin
    if exists (
      select * from deleted,lobramon
      where
        /*  %JoinFKPK(lobramon,deleted," = "," and") */
        lobramon.IDED = deleted.IDED
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE leditora because lobramon exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Editora Publica Periódico ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lperiodico
                where  lperiodico.IDED = deleted.IDED
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Editora porque existe Periódico .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Publica lperiodico ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(IDED)
  begin
    if exists (
      select * from deleted,lperiodico
      where
        /*  %JoinFKPK(lperiodico,deleted," = "," and") */
        lperiodico.IDED = deleted.IDED
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE leditora because lperiodico exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* leditora Fornece lmono ON PARENT DELETE SET NULL */
    update lmono
      set
        /* %SetFK(lmono,NULL) */
        lmono.Idforn = NULL
      from lmono,deleted
      where
        /* %JoinFKPK(lmono,deleted," = "," and") */
        lmono.Idforn = deleted.IDED
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lmono ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(IDED)
  begin
    update lmono
      set
        /* %SetFK(lmono,NULL) */
        lmono.Idforn = NULL
      from lmono,deleted
      where
        /* %JoinFKPK(lmono,deleted," = "," and") */
        lmono.Idforn = deleted.IDED
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lassinatura ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(IdForn)
  begin
    update lassinatura
      set
        /* %SetFK(lassinatura,NULL) */
        lassinatura.IdForn = NULL
      from lassinatura,inserted
      where
        /* %JoinPKPK(lassinatura,inserted," = "," and") */
        lassinatura.Idassina = inserted.Idassina and
        not exists (
          select * from leditora
          where
            /* %JoinFKPK(inserted,leditora," = "," and") */
            inserted.IdForn = leditora.IDED
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lassinatura ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(IdForn)
  begin
    update lassinatura
      set
        /* %SetFK(lassinatura,NULL) */
        lassinatura.IdForn = NULL
      from lassinatura,inserted
      where
        /* %JoinPKPK(lassinatura,inserted," = "," and") */
        lassinatura.Idassina = inserted.Idassina and 
        not exists (
          select * from leditora
          where
            /* %JoinFKPK(inserted,leditora," = "," and") */
            inserted.IdForn = leditora.IDED
        )
  end


/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lassinatura Assina lfasciculo ON PARENT DELETE SET NULL */
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idassina = NULL
      from lfasciculo,deleted
      where
        /* %JoinFKPK(lfasciculo,deleted," = "," and") */
        lfasciculo.Idassina = deleted.Idassina
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassinatura Assina lfasciculo ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idassina)
  begin
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idassina = NULL
      from lfasciculo,deleted
      where
        /* %JoinFKPK(lfasciculo,deleted," = "," and") */
        lfasciculo.Idassina = deleted.Idassina
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on llocal */
/* default body for tlocal */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insidlocal int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Local Deposita Fascículo ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lfasciculo
                where  lfasciculo.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Local porque existe Fascículo .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* llocal Deposita lfasciculo ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(idlocal)
  begin
    if exists (
      select * from deleted,lfasciculo
      where
        /*  %JoinFKPK(lfasciculo,deleted," = "," and") */
        lfasciculo.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE llocal because lfasciculo exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Local Deposita Monografia ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lmono
                where  lmono.idlocal = deleted.idlocal
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Local porque existe Monografia .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* llocal Deposita lmono ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(idlocal)
  begin
    if exists (
      select * from deleted,lmono
      where
        /*  %JoinFKPK(lmono,deleted," = "," and") */
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


create trigger tsuporte on lsuporte
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Suporte mídia do acervo Periódico ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lperiodico
                where  lperiodico.Tipo = deleted.tipo e
                       lperiodico.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Suporte porque existe Periódico .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte mídia do acervo lperiodico ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lperiodico
      where
        /*  %JoinFKPK(lperiodico,deleted," = "," and") */
        lperiodico.Tipo = deleted.tipo and
        lperiodico.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lperiodico exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Suporte mídia do acervo Obra ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lobramon
                where  lobramon.Tipo = deleted.tipo e
                       lobramon.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Suporte porque existe Obra .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte mídia do acervo lobramon ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lobramon
      where
        /*  %JoinFKPK(lobramon,deleted," = "," and") */
        lobramon.Tipo = deleted.tipo and
        lobramon.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lobramon exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Suporte R/70 E/43 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lctrlcons
                where  lctrlcons.tipo = deleted.tipo e
                       lctrlcons.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Suporte porque existe E/43 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte R/70 lctrlcons ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lctrlcons
      where
        /*  %JoinFKPK(lctrlcons,deleted," = "," and") */
        lctrlcons.tipo = deleted.tipo and
        lctrlcons.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lctrlcons exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lsuporte Controle de empréstimo lgrupo ON PARENT DELETE SET NULL */
    update lgrupo
      set
        /* %SetFK(lgrupo,NULL) */
        
      from lgrupo,deleted
      where
        /* %JoinFKPK(lgrupo,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte Controle de empréstimo lgrupo ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    update lgrupo
      set
        /* %SetFK(lgrupo,NULL) */
        
      from lgrupo,deleted
      where
        /* %JoinFKPK(lgrupo,deleted," = "," and") */
        
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Suporte R/67 E/42 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lctrlemp
                where  lctrlemp.tipo = deleted.tipo e
                       lctrlemp.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Suporte porque existe E/42 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte R/67 lctrlemp ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    if exists (
      select * from deleted,lctrlemp
      where
        /*  %JoinFKPK(lctrlemp,deleted," = "," and") */
        lctrlemp.tipo = deleted.tipo and
        lctrlemp.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lctrlemp exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lsuporte Controle de consulta lgrupo ON PARENT DELETE SET NULL */
    update lgrupo
      set
        /* %SetFK(lgrupo,NULL) */
        
      from lgrupo,deleted
      where
        /* %JoinFKPK(lgrupo,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte Controle de consulta lgrupo ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    update lgrupo
      set
        /* %SetFK(lgrupo,NULL) */
        
      from lgrupo,deleted
      where
        /* %JoinFKPK(lgrupo,deleted," = "," and") */
        
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lperiodico */
/* default body for tperiodico */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdobra int, 
           @insTipo varchar(21),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte mídia do acervo lperiodico ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.Tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lperiodico because lsuporte does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte mídia do acervo lperiodico ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.Tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lperiodico because lsuporte does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Publica lperiodico ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(IDED)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,leditora
        where
          /* %JoinFKPK(inserted,leditora) */
          inserted.IDED = leditora.IDED
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lperiodico because leditora does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Publica lperiodico ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(IDED)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,leditora
        where
          /* %JoinFKPK(inserted,leditora) */
          inserted.IDED = leditora.IDED
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lperiodico because leditora does not exist.'
      goto error
    end
  end


/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Periódico compõe Reserva ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lreservas
                where  lreservas.idobra = deleted.Idobra e
                       lreservas.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Periódico porque existe Reserva .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico compõe lreservas ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lreservas
      where
        /*  %JoinFKPK(lreservas,deleted," = "," and") */
        lreservas.idobra = deleted.Idobra and
        lreservas.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lperiodico because lreservas exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Periódico Compõe Fascículo ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lfasciculo
                where  lfasciculo.Idobra = deleted.Idobra e
                       lfasciculo.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Periódico porque existe Fascículo .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico Compõe lfasciculo ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lfasciculo
      where
        /*  %JoinFKPK(lfasciculo,deleted," = "," and") */
        lfasciculo.Idobra = deleted.Idobra and
        lfasciculo.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lperiodico because lfasciculo exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Periódico R/45 E/28 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lassuntoperi
                where  lassuntoperi.Idobra = deleted.Idobra e
                       lassuntoperi.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Periódico porque existe E/28 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico R/45 lassuntoperi ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lassuntoperi
      where
        /*  %JoinFKPK(lassuntoperi,deleted," = "," and") */
        lassuntoperi.Idobra = deleted.Idobra and
        lassuntoperi.Tipo = deleted.Tipo
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






create trigger tfasciculo on lfasciculo
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lfasciculo */
/* default body for tfasciculo */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdfasc int, 
           @insTipo varchar(21),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lfasciculo ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idforn)
  begin
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idforn = NULL
      from lfasciculo,inserted
      where
        /* %JoinPKPK(lfasciculo,inserted," = "," and") */
        lfasciculo.Idfasc = inserted.Idfasc and
        lfasciculo.Tipo = inserted.Tipo and
        not exists (
          select * from leditora
          where
            /* %JoinFKPK(inserted,leditora," = "," and") */
            inserted.Idforn = leditora.IDED
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lfasciculo ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idforn)
  begin
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idforn = NULL
      from lfasciculo,inserted
      where
        /* %JoinPKPK(lfasciculo,inserted," = "," and") */
        lfasciculo.Idfasc = inserted.Idfasc and
        lfasciculo.Tipo = inserted.Tipo and 
        not exists (
          select * from leditora
          where
            /* %JoinFKPK(inserted,leditora," = "," and") */
            inserted.Idforn = leditora.IDED
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassinatura Assina lfasciculo ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idassina)
  begin
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idassina = NULL
      from lfasciculo,inserted
      where
        /* %JoinPKPK(lfasciculo,inserted," = "," and") */
        lfasciculo.Idfasc = inserted.Idfasc and
        lfasciculo.Tipo = inserted.Tipo and
        not exists (
          select * from lassinatura
          where
            /* %JoinFKPK(inserted,lassinatura," = "," and") */
            inserted.Idassina = lassinatura.Idassina
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassinatura Assina lfasciculo ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idassina)
  begin
    update lfasciculo
      set
        /* %SetFK(lfasciculo,NULL) */
        lfasciculo.Idassina = NULL
      from lfasciculo,inserted
      where
        /* %JoinPKPK(lfasciculo,inserted," = "," and") */
        lfasciculo.Idfasc = inserted.Idfasc and
        lfasciculo.Tipo = inserted.Tipo and 
        not exists (
          select * from lassinatura
          where
            /* %JoinFKPK(inserted,lassinatura," = "," and") */
            inserted.Idassina = lassinatura.Idassina
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* llocal Deposita lfasciculo ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idlocal)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,llocal
        where
          /* %JoinFKPK(inserted,llocal) */
          inserted.idlocal = llocal.idlocal
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lfasciculo because llocal does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* llocal Deposita lfasciculo ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idlocal)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,llocal
        where
          /* %JoinFKPK(inserted,llocal) */
          inserted.idlocal = llocal.idlocal
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lfasciculo because llocal does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico Compõe lfasciculo ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* %JoinFKPK(inserted,lperiodico) */
          inserted.Idobra = lperiodico.Idobra and
          inserted.Tipo = lperiodico.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lfasciculo because lperiodico does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico Compõe lfasciculo ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* %JoinFKPK(inserted,lperiodico) */
          inserted.Idobra = lperiodico.Idobra and
          inserted.Tipo = lperiodico.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lfasciculo because lperiodico does not exist.'
      goto error
    end
  end


/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lfasciculo Compõe lcompocons ON PARENT DELETE SET NULL */
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,deleted
      where
        /* %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.idexemplar = deleted.Idfasc and
        lcompocons.Tipo = deleted.Tipo
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo Compõe lcompocons ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idfasc) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,deleted
      where
        /* %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.idexemplar = deleted.Idfasc and
        lcompocons.Tipo = deleted.Tipo
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lfasciculo Compõe lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.idexemplar = deleted.Idfasc and
        lcompoemp.Tipo = deleted.Tipo
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo Compõe lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idfasc) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.idexemplar = deleted.Idfasc and
        lcompoemp.Tipo = deleted.Tipo
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Fascículo analítico Analítica de periódico ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lanaperi
                where  lanaperi.Idfasc = deleted.Idfasc e
                       lanaperi.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Fascículo porque existe Analítica de periódico .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo analítico lanaperi ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idfasc) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lanaperi
      where
        /*  %JoinFKPK(lanaperi,deleted," = "," and") */
        lanaperi.Idfasc = deleted.Idfasc and
        lanaperi.Tipo = deleted.Tipo
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


create trigger tempdev on lempdev
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lempdev */
/* default body for tempdev */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdemprestimo int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Requisita lempdev ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lempdev because lleitor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Requisita lempdev ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lempdev because lleitor does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra empréstimo lempdev ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lempdev
      set
        /* %SetFK(lempdev,NULL) */
        lempdev.idbiblio = NULL
      from lempdev,inserted
      where
        /* %JoinPKPK(lempdev,inserted," = "," and") */
        lempdev.Idemprestimo = inserted.Idemprestimo and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra empréstimo lempdev ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lempdev
      set
        /* %SetFK(lempdev,NULL) */
        lempdev.idbiblio = NULL
      from lempdev,inserted
      where
        /* %JoinPKPK(lempdev,inserted," = "," and") */
        lempdev.Idemprestimo = inserted.Idemprestimo and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end


/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Empréstimo e Devolução compoe Compõe empréstimo ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lcompoemp
                where  lcompoemp.Idemprestimo = deleted.Idemprestimo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Empréstimo e Devolução porque existe Compõe empréstimo .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lempdev compoe lcompoemp ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idemprestimo)
  begin
    if exists (
      select * from deleted,lcompoemp
      where
        /*  %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.Idemprestimo = deleted.Idemprestimo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lempdev because lcompoemp exists.'
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte mídia do acervo lobramon ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.Tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lobramon because lsuporte does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte mídia do acervo lobramon ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.Tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lobramon because lsuporte does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Publica lobramon ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(IDED)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,leditora
        where
          /* %JoinFKPK(inserted,leditora) */
          inserted.IDED = leditora.IDED
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lobramon because leditora does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Publica lobramon ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(IDED)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,leditora
        where
          /* %JoinFKPK(inserted,leditora) */
          inserted.IDED = leditora.IDED
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lobramon because leditora does not exist.'
      goto error
    end
  end


/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Obra compõe Reserva ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lreservas
                where  lreservas.idobra = deleted.Idobra e
                       lreservas.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Obra porque existe Reserva .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lobramon compõe lreservas ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lreservas
      where
        /*  %JoinFKPK(lreservas,deleted," = "," and") */
        lreservas.idobra = deleted.Idobra and
        lreservas.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lobramon because lreservas exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Obra Compõe Monografia ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lmono
                where  lmono.Idobra = deleted.Idobra e
                       lmono.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Obra porque existe Monografia .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lobramon Compõe lmono ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lmono
      where
        /*  %JoinFKPK(lmono,deleted," = "," and") */
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


create trigger treservas on lreservas
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lreservas */
/* default body for treservas */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insidreserva int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico compõe lreservas ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* %JoinFKPK(inserted,lperiodico) */
          inserted.idobra = lperiodico.Idobra and
          inserted.Tipo = lperiodico.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lreservas because lperiodico does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico compõe lreservas ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* %JoinFKPK(inserted,lperiodico) */
          inserted.idobra = lperiodico.Idobra and
          inserted.Tipo = lperiodico.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lreservas because lperiodico does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra a reserva lreservas ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lreservas
      set
        /* %SetFK(lreservas,NULL) */
        lreservas.idbiblio = NULL
      from lreservas,inserted
      where
        /* %JoinPKPK(lreservas,inserted," = "," and") */
        lreservas.idreserva = inserted.idreserva and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra a reserva lreservas ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lreservas
      set
        /* %SetFK(lreservas,NULL) */
        lreservas.idbiblio = NULL
      from lreservas,inserted
      where
        /* %JoinPKPK(lreservas,inserted," = "," and") */
        lreservas.idreserva = inserted.idreserva and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lobramon compõe lreservas ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lobramon
        where
          /* %JoinFKPK(inserted,lobramon) */
          inserted.idobra = lobramon.Idobra and
          inserted.Tipo = lobramon.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lreservas because lobramon does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lobramon compõe lreservas ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lobramon
        where
          /* %JoinFKPK(inserted,lobramon) */
          inserted.idobra = lobramon.Idobra and
          inserted.Tipo = lobramon.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lreservas because lobramon does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor compõe lreservas ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lreservas because lleitor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor compõe lreservas ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lreservas because lleitor does not exist.'
      goto error
    end
  end


/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lreservas Reserva lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idreserva = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.idreserva = deleted.idreserva
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lreservas Reserva lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(idreserva)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idreserva = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.idreserva = deleted.idreserva
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lobramon Compõe lmono ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lobramon
        where
          /* %JoinFKPK(inserted,lobramon) */
          inserted.Idobra = lobramon.Idobra and
          inserted.Tipo = lobramon.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmono because lobramon does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lobramon Compõe lmono ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lobramon
        where
          /* %JoinFKPK(inserted,lobramon) */
          inserted.Idobra = lobramon.Idobra and
          inserted.Tipo = lobramon.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmono because lobramon does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lmono ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idforn)
  begin
    update lmono
      set
        /* %SetFK(lmono,NULL) */
        lmono.Idforn = NULL
      from lmono,inserted
      where
        /* %JoinPKPK(lmono,inserted," = "," and") */
        lmono.Idmono = inserted.Idmono and
        lmono.Tipo = inserted.Tipo and
        not exists (
          select * from leditora
          where
            /* %JoinFKPK(inserted,leditora," = "," and") */
            inserted.Idforn = leditora.IDED
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* leditora Fornece lmono ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idforn)
  begin
    update lmono
      set
        /* %SetFK(lmono,NULL) */
        lmono.Idforn = NULL
      from lmono,inserted
      where
        /* %JoinPKPK(lmono,inserted," = "," and") */
        lmono.Idmono = inserted.Idmono and
        lmono.Tipo = inserted.Tipo and 
        not exists (
          select * from leditora
          where
            /* %JoinFKPK(inserted,leditora," = "," and") */
            inserted.Idforn = leditora.IDED
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* llocal Deposita lmono ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idlocal)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,llocal
        where
          /* %JoinFKPK(inserted,llocal) */
          inserted.idlocal = llocal.idlocal
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmono because llocal does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* llocal Deposita lmono ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(idlocal)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,llocal
        where
          /* %JoinFKPK(inserted,llocal) */
          inserted.idlocal = llocal.idlocal
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmono because llocal does not exist.'
      goto error
    end
  end


/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lmono Compõe lcompocons ON PARENT DELETE SET NULL */
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,deleted
      where
        /* %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.idexemplar = deleted.Idmono and
        lcompocons.Tipo = deleted.Tipo
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono Compõe lcompocons ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,deleted
      where
        /* %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.idexemplar = deleted.Idmono and
        lcompocons.Tipo = deleted.Tipo
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lmono compõe lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.idexemplar = deleted.Idmono and
        lcompoemp.Tipo = deleted.Tipo
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono compõe lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,deleted
      where
        /* %JoinFKPK(lcompoemp,deleted," = "," and") */
        lcompoemp.idexemplar = deleted.Idmono and
        lcompoemp.Tipo = deleted.Tipo
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Monografia R/34 E/25 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lmonoassunto
                where  lmonoassunto.Idmono = deleted.Idmono e
                       lmonoassunto.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Monografia porque existe E/25 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono R/34 lmonoassunto ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lmonoassunto
      where
        /*  %JoinFKPK(lmonoassunto,deleted," = "," and") */
        lmonoassunto.Idmono = deleted.Idmono and
        lmonoassunto.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lmono because lmonoassunto exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lmono Assuntos da monografia lassunto ON PARENT DELETE SET NULL */
    update lassunto
      set
        /* %SetFK(lassunto,NULL) */
        
      from lassunto,deleted
      where
        /* %JoinFKPK(lassunto,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono Assuntos da monografia lassunto ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    update lassunto
      set
        /* %SetFK(lassunto,NULL) */
        
      from lassunto,deleted
      where
        /* %JoinFKPK(lassunto,deleted," = "," and") */
        
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Monografia R/28 E/23 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lmonoautor
                where  lmonoautor.Idmono = deleted.Idmono e
                       lmonoautor.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Monografia porque existe E/23 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono R/28 lmonoautor ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    if exists (
      select * from deleted,lmonoautor
      where
        /*  %JoinFKPK(lmonoautor,deleted," = "," and") */
        lmonoautor.Idmono = deleted.Idmono and
        lmonoautor.Tipo = deleted.Tipo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lmono because lmonoautor exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lmono Autores da monografia lautor ON PARENT DELETE SET NULL */
    update lautor
      set
        /* %SetFK(lautor,NULL) */
        
      from lautor,deleted
      where
        /* %JoinFKPK(lautor,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono Autores da monografia lautor ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    update lautor
      set
        /* %SetFK(lautor,NULL) */
        
      from lautor,deleted
      where
        /* %JoinFKPK(lautor,deleted," = "," and") */
        
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tcompoemp on lcompoemp
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lcompoemp */
/* default body for tcompoemp */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdemprestimo int, 
           @insidexemplar int, 
           @insTipo varchar(21),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo Compõe lcompoemp ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and
        not exists (
          select * from lfasciculo
          where
            /* %JoinFKPK(inserted,lfasciculo," = "," and") */
            inserted.idexemplar = lfasciculo.Idfasc and
            inserted.Tipo = lfasciculo.Tipo
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo Compõe lcompoemp ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and 
        not exists (
          select * from lfasciculo
          where
            /* %JoinFKPK(inserted,lfasciculo," = "," and") */
            inserted.idexemplar = lfasciculo.Idfasc and
            inserted.Tipo = lfasciculo.Tipo
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra devolução lcompoemp ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idbiblio)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.Idbiblio = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.Idbiblio = lleitor.Idleitor
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra devolução lcompoemp ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idbiblio)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.Idbiblio = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.Idbiblio = lleitor.Idleitor
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lempdev compoe lcompoemp ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idemprestimo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lempdev
        where
          /* %JoinFKPK(inserted,lempdev) */
          inserted.Idemprestimo = lempdev.Idemprestimo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lcompoemp because lempdev does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lempdev compoe lcompoemp ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idemprestimo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lempdev
        where
          /* %JoinFKPK(inserted,lempdev) */
          inserted.Idemprestimo = lempdev.Idemprestimo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lcompoemp because lempdev does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lreservas Reserva lcompoemp ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idreserva)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idreserva = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and
        not exists (
          select * from lreservas
          where
            /* %JoinFKPK(inserted,lreservas," = "," and") */
            inserted.idreserva = lreservas.idreserva
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lreservas Reserva lcompoemp ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idreserva)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idreserva = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and 
        not exists (
          select * from lreservas
          where
            /* %JoinFKPK(inserted,lreservas," = "," and") */
            inserted.idreserva = lreservas.idreserva
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono compõe lcompoemp ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and
        not exists (
          select * from lmono
          where
            /* %JoinFKPK(inserted,lmono," = "," and") */
            inserted.idexemplar = lmono.Idmono and
            inserted.Tipo = lmono.Tipo
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono compõe lcompoemp ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompoemp
      set
        /* %SetFK(lcompoemp,NULL) */
        lcompoemp.idexemplar = NULL,
        lcompoemp.Tipo = NULL
      from lcompoemp,inserted
      where
        /* %JoinPKPK(lcompoemp,inserted," = "," and") */
        lcompoemp.Idemprestimo = inserted.Idemprestimo and
        lcompoemp.idexemplar = inserted.idexemplar and
        lcompoemp.Tipo = inserted.Tipo and 
        not exists (
          select * from lmono
          where
            /* %JoinFKPK(inserted,lmono," = "," and") */
            inserted.idexemplar = lmono.Idmono and
            inserted.Tipo = lmono.Tipo
        )
  end


/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lcompoemp Multa lmulta ON PARENT DELETE SET NULL */
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idemprestimo = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,deleted
      where
        /* %JoinFKPK(lmulta,deleted," = "," and") */
        lmulta.Idemprestimo = deleted.Idemprestimo and
        lmulta.idexemplar = deleted.idexemplar and
        lmulta.Tipo = deleted.Tipo
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lcompoemp Multa lmulta ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idemprestimo) or
    update(idexemplar) or
    update(Tipo)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idemprestimo = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,deleted
      where
        /* %JoinFKPK(lmulta,deleted," = "," and") */
        lmulta.Idemprestimo = deleted.Idemprestimo and
        lmulta.idexemplar = deleted.idexemplar and
        lmulta.Tipo = deleted.Tipo
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tconsulta on lconsulta
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lconsulta */
/* default body for tconsulta */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdcons int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Requisita lconsulta ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lconsulta because lleitor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Requisita lconsulta ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idleitor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lleitor
        where
          /* %JoinFKPK(inserted,lleitor) */
          inserted.Idleitor = lleitor.Idleitor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lconsulta because lleitor does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra consulta lconsulta ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lconsulta
      set
        /* %SetFK(lconsulta,NULL) */
        lconsulta.idbiblio = NULL
      from lconsulta,inserted
      where
        /* %JoinPKPK(lconsulta,inserted," = "," and") */
        lconsulta.Idcons = inserted.Idcons and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra consulta lconsulta ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lconsulta
      set
        /* %SetFK(lconsulta,NULL) */
        lconsulta.idbiblio = NULL
      from lconsulta,inserted
      where
        /* %JoinPKPK(lconsulta,inserted," = "," and") */
        lconsulta.Idcons = inserted.Idcons and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end


/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Consulta Compõe Compõe consulta ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lcompocons
                where  lcompocons.Idcons = deleted.Idcons
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Consulta porque existe Compõe consulta .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lconsulta Compõe lcompocons ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idcons)
  begin
    if exists (
      select * from deleted,lcompocons
      where
        /*  %JoinFKPK(lcompocons,deleted," = "," and") */
        lcompocons.Idcons = deleted.Idcons
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lconsulta because lcompocons exists.'
      goto error
    end
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tcompocons on lcompocons
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lcompocons */
/* default body for tcompocons */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdcons int, 
           @insidexemplar int, 
           @insTipo varchar(21),
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo Compõe lcompocons ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,inserted
      where
        /* %JoinPKPK(lcompocons,inserted," = "," and") */
        lcompocons.Idcons = inserted.Idcons and
        lcompocons.idexemplar = inserted.idexemplar and
        lcompocons.Tipo = inserted.Tipo and
        not exists (
          select * from lfasciculo
          where
            /* %JoinFKPK(inserted,lfasciculo," = "," and") */
            inserted.idexemplar = lfasciculo.Idfasc and
            inserted.Tipo = lfasciculo.Tipo
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo Compõe lcompocons ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,inserted
      where
        /* %JoinPKPK(lcompocons,inserted," = "," and") */
        lcompocons.Idcons = inserted.Idcons and
        lcompocons.idexemplar = inserted.idexemplar and
        lcompocons.Tipo = inserted.Tipo and 
        not exists (
          select * from lfasciculo
          where
            /* %JoinFKPK(inserted,lfasciculo," = "," and") */
            inserted.idexemplar = lfasciculo.Idfasc and
            inserted.Tipo = lfasciculo.Tipo
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra a devolução da consulta lcompocons ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idbiblio = NULL
      from lcompocons,inserted
      where
        /* %JoinPKPK(lcompocons,inserted," = "," and") */
        lcompocons.Idcons = inserted.Idcons and
        lcompocons.idexemplar = inserted.idexemplar and
        lcompocons.Tipo = inserted.Tipo and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra a devolução da consulta lcompocons ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idbiblio = NULL
      from lcompocons,inserted
      where
        /* %JoinPKPK(lcompocons,inserted," = "," and") */
        lcompocons.Idcons = inserted.Idcons and
        lcompocons.idexemplar = inserted.idexemplar and
        lcompocons.Tipo = inserted.Tipo and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lconsulta Compõe lcompocons ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idcons)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lconsulta
        where
          /* %JoinFKPK(inserted,lconsulta) */
          inserted.Idcons = lconsulta.Idcons
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lcompocons because lconsulta does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lconsulta Compõe lcompocons ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idcons)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lconsulta
        where
          /* %JoinFKPK(inserted,lconsulta) */
          inserted.Idcons = lconsulta.Idcons
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lcompocons because lconsulta does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono Compõe lcompocons ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,inserted
      where
        /* %JoinPKPK(lcompocons,inserted," = "," and") */
        lcompocons.Idcons = inserted.Idcons and
        lcompocons.idexemplar = inserted.idexemplar and
        lcompocons.Tipo = inserted.Tipo and
        not exists (
          select * from lmono
          where
            /* %JoinFKPK(inserted,lmono," = "," and") */
            inserted.idexemplar = lmono.Idmono and
            inserted.Tipo = lmono.Tipo
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono Compõe lcompocons ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idexemplar) or
    update(Tipo)
  begin
    update lcompocons
      set
        /* %SetFK(lcompocons,NULL) */
        lcompocons.idexemplar = NULL,
        lcompocons.Tipo = NULL
      from lcompocons,inserted
      where
        /* %JoinPKPK(lcompocons,inserted," = "," and") */
        lcompocons.Idcons = inserted.Idcons and
        lcompocons.idexemplar = inserted.idexemplar and
        lcompocons.Tipo = inserted.Tipo and 
        not exists (
          select * from lmono
          where
            /* %JoinFKPK(inserted,lmono," = "," and") */
            inserted.idexemplar = lmono.Idmono and
            inserted.Tipo = lmono.Tipo
        )
  end


/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lcompocons multa lmulta ON PARENT DELETE SET NULL */
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idcons = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,deleted
      where
        /* %JoinFKPK(lmulta,deleted," = "," and") */
        lmulta.Idcons = deleted.Idcons and
        lmulta.idexemplar = deleted.idexemplar and
        lmulta.Tipo = deleted.Tipo
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lcompocons multa lmulta ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idcons) or
    update(idexemplar) or
    update(Tipo)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idcons = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,deleted
      where
        /* %JoinFKPK(lmulta,deleted," = "," and") */
        lmulta.Idcons = deleted.Idcons and
        lmulta.idexemplar = deleted.idexemplar and
        lmulta.Tipo = deleted.Tipo
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tmulta on lmulta
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lmulta */
/* default body for tmulta */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insidmulta int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lcompoemp Multa lmulta ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idemprestimo) or
    update(idexemplar) or
    update(Tipo)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idemprestimo = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,inserted
      where
        /* %JoinPKPK(lmulta,inserted," = "," and") */
        lmulta.idmulta = inserted.idmulta and
        not exists (
          select * from lcompoemp
          where
            /* %JoinFKPK(inserted,lcompoemp," = "," and") */
            inserted.Idemprestimo = lcompoemp.Idemprestimo and
            inserted.idexemplar = lcompoemp.idexemplar and
            inserted.Tipo = lcompoemp.Tipo
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lcompoemp Multa lmulta ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idemprestimo) or
    update(idexemplar) or
    update(Tipo)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idemprestimo = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,inserted
      where
        /* %JoinPKPK(lmulta,inserted," = "," and") */
        lmulta.idmulta = inserted.idmulta and 
        not exists (
          select * from lcompoemp
          where
            /* %JoinFKPK(inserted,lcompoemp," = "," and") */
            inserted.Idemprestimo = lcompoemp.Idemprestimo and
            inserted.idexemplar = lcompoemp.idexemplar and
            inserted.Tipo = lcompoemp.Tipo
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra multa lmulta ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.idbiblio = NULL
      from lmulta,inserted
      where
        /* %JoinPKPK(lmulta,inserted," = "," and") */
        lmulta.idmulta = inserted.idmulta and
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lleitor Registra multa lmulta ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(idbiblio)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.idbiblio = NULL
      from lmulta,inserted
      where
        /* %JoinPKPK(lmulta,inserted," = "," and") */
        lmulta.idmulta = inserted.idmulta and 
        not exists (
          select * from lleitor
          where
            /* %JoinFKPK(inserted,lleitor," = "," and") */
            inserted.idbiblio = lleitor.Idleitor
        )
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lcompocons multa lmulta ON CHILD INSERT SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idcons) or
    update(idexemplar) or
    update(Tipo)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idcons = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,inserted
      where
        /* %JoinPKPK(lmulta,inserted," = "," and") */
        lmulta.idmulta = inserted.idmulta and
        not exists (
          select * from lcompocons
          where
            /* %JoinFKPK(inserted,lcompocons," = "," and") */
            inserted.Idcons = lcompocons.Idcons and
            inserted.idexemplar = lcompocons.idexemplar and
            inserted.Tipo = lcompocons.Tipo
        )
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lcompocons multa lmulta ON CHILD UPDATE SET NULL */
  if
    /* %ChildFK(" or",update) */
    update(Idcons) or
    update(idexemplar) or
    update(Tipo)
  begin
    update lmulta
      set
        /* %SetFK(lmulta,NULL) */
        lmulta.Idcons = NULL,
        lmulta.idexemplar = NULL,
        lmulta.Tipo = NULL
      from lmulta,inserted
      where
        /* %JoinPKPK(lmulta,inserted," = "," and") */
        lmulta.idmulta = inserted.idmulta and 
        not exists (
          select * from lcompocons
          where
            /* %JoinFKPK(inserted,lcompocons," = "," and") */
            inserted.Idcons = lcompocons.Idcons and
            inserted.idexemplar = lcompocons.idexemplar and
            inserted.Tipo = lcompocons.Tipo
        )
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Assunto R/44 E/28 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lassuntoperi
                where  lassuntoperi.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Assunto porque existe E/28 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/44 lassuntoperi ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idassto)
  begin
    if exists (
      select * from deleted,lassuntoperi
      where
        /*  %JoinFKPK(lassuntoperi,deleted," = "," and") */
        lassuntoperi.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lassunto because lassuntoperi exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lassunto Assuntos do periódico lperiodico ON PARENT DELETE SET NULL */
    update lperiodico
      set
        /* %SetFK(lperiodico,NULL) */
        
      from lperiodico,deleted
      where
        /* %JoinFKPK(lperiodico,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto Assuntos do periódico lperiodico ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idassto)
  begin
    update lperiodico
      set
        /* %SetFK(lperiodico,NULL) */
        
      from lperiodico,deleted
      where
        /* %JoinFKPK(lperiodico,deleted," = "," and") */
        
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Assunto R/38 E/26 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lanaperiassunto
                where  lanaperiassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Assunto porque existe E/26 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/38 lanaperiassunto ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idassto)
  begin
    if exists (
      select * from deleted,lanaperiassunto
      where
        /*  %JoinFKPK(lanaperiassunto,deleted," = "," and") */
        lanaperiassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lassunto because lanaperiassunto exists.'
      goto error
    end
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Assunto R/35 E/25 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lmonoassunto
                where  lmonoassunto.Idassto = deleted.Idassto
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Assunto porque existe E/25 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/35 lmonoassunto ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idassto)
  begin
    if exists (
      select * from deleted,lmonoassunto
      where
        /*  %JoinFKPK(lmonoassunto,deleted," = "," and") */
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


create trigger tanaperi on lanaperi
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo analítico lanaperi ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idfasc) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lfasciculo
        where
          /* %JoinFKPK(inserted,lfasciculo) */
          inserted.Idfasc = lfasciculo.Idfasc and
          inserted.Tipo = lfasciculo.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperi because lfasciculo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lfasciculo analítico lanaperi ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idfasc) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lfasciculo
        where
          /* %JoinFKPK(inserted,lfasciculo) */
          inserted.Idfasc = lfasciculo.Idfasc and
          inserted.Tipo = lfasciculo.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperi because lfasciculo does not exist.'
      goto error
    end
  end


/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Analítica de periódico R/37 E/26 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lanaperiassunto
                where  lanaperiassunto.Idana = deleted.Idana
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Analítica de periódico porque existe E/26 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi R/37 lanaperiassunto ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idana)
  begin
    if exists (
      select * from deleted,lanaperiassunto
      where
        /*  %JoinFKPK(lanaperiassunto,deleted," = "," and") */
        lanaperiassunto.Idana = deleted.Idana
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lanaperi because lanaperiassunto exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lanaperi Assuntos do analítica lassunto ON PARENT DELETE SET NULL */
    update lassunto
      set
        /* %SetFK(lassunto,NULL) */
        
      from lassunto,deleted
      where
        /* %JoinFKPK(lassunto,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi Assuntos do analítica lassunto ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idana)
  begin
    update lassunto
      set
        /* %SetFK(lassunto,NULL) */
        
      from lassunto,deleted
      where
        /* %JoinFKPK(lassunto,deleted," = "," and") */
        
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Analítica de periódico R/32 lperiautorana ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lanaperiautor
                where  lanaperiautor.Idana = deleted.Idana
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Analítica de periódico porque existe lperiautorana .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi R/32 lanaperiautor ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idana)
  begin
    if exists (
      select * from deleted,lanaperiautor
      where
        /*  %JoinFKPK(lanaperiautor,deleted," = "," and") */
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lanaperiassunto */
/* default body for tanaperiassunto */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdana int, 
           @insIdassto int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/38 lanaperiassunto ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* %JoinFKPK(inserted,lassunto) */
          inserted.Idassto = lassunto.Idassto
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiassunto because lassunto does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/38 lanaperiassunto ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* %JoinFKPK(inserted,lassunto) */
          inserted.Idassto = lassunto.Idassto
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperiassunto because lassunto does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi R/37 lanaperiassunto ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* %JoinFKPK(inserted,lanaperi) */
          inserted.Idana = lanaperi.Idana
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiassunto because lanaperi does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi R/37 lanaperiassunto ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* %JoinFKPK(inserted,lanaperi) */
          inserted.Idana = lanaperi.Idana
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
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


create trigger tautor on lautor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
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

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Autor R/31 lperiautorana ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lanaperiautor
                where  lanaperiautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Autor porque existe lperiautorana .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor R/31 lanaperiautor ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idautor)
  begin
    if exists (
      select * from deleted,lanaperiautor
      where
        /*  %JoinFKPK(lanaperiautor,deleted," = "," and") */
        lanaperiautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lautor because lanaperiautor exists.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
    /* lautor Autores da analítica lanaperi ON PARENT DELETE SET NULL */
    update lanaperi
      set
        /* %SetFK(lanaperi,NULL) */
        
      from lanaperi,deleted
      where
        /* %JoinFKPK(lanaperi,deleted," = "," and") */
        
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor Autores da analítica lanaperi ON PARENT UPDATE SET NULL */
  if
    /* %ParentPK(" or",update) */
    update(Idautor)
  begin
    update lanaperi
      set
        /* %SetFK(lanaperi,NULL) */
        
      from lanaperi,deleted
      where
        /* %JoinFKPK(lanaperi,deleted," = "," and") */
        
  end

/* Reconstruido por Jairo Neder Mon Oct 08 09:14:54 2001 */
    /* Autor R/29 E/23 ON PARENT DELETE RESTRICT */
    if exists ( select * from deleted,lmonoautor
                where  lmonoautor.Idautor = deleted.Idautor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Não podes apagar Autor porque existe E/23 .'
      goto error
    end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor R/29 lmonoautor ON PARENT UPDATE RESTRICT */
  if
    /* %ParentPK(" or",update) */
    update(Idautor)
  begin
    if exists (
      select * from deleted,lmonoautor
      where
        /*  %JoinFKPK(lmonoautor,deleted," = "," and") */
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


create trigger tanaperiautor on lanaperiautor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lanaperiautor */
/* default body for tanaperiautor */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insIdautor int, 
           @insIdana int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi R/32 lanaperiautor ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* %JoinFKPK(inserted,lanaperi) */
          inserted.Idana = lanaperi.Idana
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiautor because lanaperi does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lanaperi R/32 lanaperiautor ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idana)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lanaperi
        where
          /* %JoinFKPK(inserted,lanaperi) */
          inserted.Idana = lanaperi.Idana
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lanaperiautor because lanaperi does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor R/31 lanaperiautor ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* %JoinFKPK(inserted,lautor) */
          inserted.Idautor = lautor.Idautor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lanaperiautor because lautor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor R/31 lanaperiautor ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* %JoinFKPK(inserted,lautor) */
          inserted.Idautor = lautor.Idautor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
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


create trigger tmonoautor on lmonoautor
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lmonoautor */
/* default body for tmonoautor */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTipo varchar(21), 
           @insIdmono int, 
           @insIdautor int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor R/29 lmonoautor ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* %JoinFKPK(inserted,lautor) */
          inserted.Idautor = lautor.Idautor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmonoautor because lautor does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lautor R/29 lmonoautor ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idautor)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lautor
        where
          /* %JoinFKPK(inserted,lautor) */
          inserted.Idautor = lautor.Idautor
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmonoautor because lautor does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono R/28 lmonoautor ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lmono
        where
          /* %JoinFKPK(inserted,lmono) */
          inserted.Idmono = lmono.Idmono and
          inserted.Tipo = lmono.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmonoautor because lmono does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono R/28 lmonoautor ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lmono
        where
          /* %JoinFKPK(inserted,lmono) */
          inserted.Idmono = lmono.Idmono and
          inserted.Tipo = lmono.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmonoautor because lmono does not exist.'
      goto error
    end
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lmonoassunto */
/* default body for tmonoassuto */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTipo varchar(21), 
           @insIdmono int, 
           @insIdassto int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/35 lmonoassunto ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* %JoinFKPK(inserted,lassunto) */
          inserted.Idassto = lassunto.Idassto
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmonoassunto because lassunto does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/35 lmonoassunto ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* %JoinFKPK(inserted,lassunto) */
          inserted.Idassto = lassunto.Idassto
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmonoassunto because lassunto does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono R/34 lmonoassunto ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lmono
        where
          /* %JoinFKPK(inserted,lmono) */
          inserted.Idmono = lmono.Idmono and
          inserted.Tipo = lmono.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lmonoassunto because lmono does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lmono R/34 lmonoassunto ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idmono) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lmono
        where
          /* %JoinFKPK(inserted,lmono) */
          inserted.Idmono = lmono.Idmono and
          inserted.Tipo = lmono.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lmonoassunto because lmono does not exist.'
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
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lassuntoperi */
/* default body for tassuntoperi */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTipo varchar(21), 
           @insIdassto int, 
           @insIdobra int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico R/45 lassuntoperi ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* %JoinFKPK(inserted,lperiodico) */
          inserted.Idobra = lperiodico.Idobra and
          inserted.Tipo = lperiodico.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lassuntoperi because lperiodico does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lperiodico R/45 lassuntoperi ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idobra) or
    update(Tipo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lperiodico
        where
          /* %JoinFKPK(inserted,lperiodico) */
          inserted.Idobra = lperiodico.Idobra and
          inserted.Tipo = lperiodico.Tipo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lassuntoperi because lperiodico does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/44 lassuntoperi ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* %JoinFKPK(inserted,lassunto) */
          inserted.Idassto = lassunto.Idassto
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lassuntoperi because lassunto does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lassunto R/44 lassuntoperi ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idassto)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lassunto
        where
          /* %JoinFKPK(inserted,lassunto) */
          inserted.Idassto = lassunto.Idassto
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
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


create trigger tctrlemp on lctrlemp
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lctrlemp */
/* default body for tctrlemp */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @inssuporte varchar(100), 
           @instipo varchar(21), 
           @insIdgrupo int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lgrupo R/68 lctrlemp ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* %JoinFKPK(inserted,lgrupo) */
          inserted.Idgrupo = lgrupo.Idgrupo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lctrlemp because lgrupo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lgrupo R/68 lctrlemp ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* %JoinFKPK(inserted,lgrupo) */
          inserted.Idgrupo = lgrupo.Idgrupo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lctrlemp because lgrupo does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte R/67 lctrlemp ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lctrlemp because lsuporte does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte R/67 lctrlemp ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lctrlemp because lsuporte does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


create trigger tctrlcons on lctrlcons
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
/* DELETE,INSERT,UPDATE trigger on lctrlcons */
/* default body for tctrlcons */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @inssuporte varchar(100), 
           @instipo varchar(21), 
           @insIdgrupo int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lgrupo R/71 lctrlcons ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* %JoinFKPK(inserted,lgrupo) */
          inserted.Idgrupo = lgrupo.Idgrupo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lctrlcons because lgrupo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lgrupo R/71 lctrlcons ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* %JoinFKPK(inserted,lgrupo) */
          inserted.Idgrupo = lgrupo.Idgrupo
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lctrlcons because lgrupo does not exist.'
      goto error
    end
  end

/* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte R/70 lctrlcons ON CHILD INSERT RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lctrlcons because lsuporte does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Mon Oct 08 09:14:54 2001 */
  /* lsuporte R/70 lctrlcons ON CHILD UPDATE RESTRICT */
  if
    /* %ChildFK(" or",update) */
    update(tipo) or
    update(suporte)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lsuporte
        where
          /* %JoinFKPK(inserted,lsuporte) */
          inserted.tipo = lsuporte.tipo and
          inserted.suporte = lsuporte.suporte
    /* %NotnullFK(inserted," is null","select @nullcnt = count(*) from inserted where"," and") */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lctrlcons because lsuporte does not exist.'
      goto error
    end
  end



  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


