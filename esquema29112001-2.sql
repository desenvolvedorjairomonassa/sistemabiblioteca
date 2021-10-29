
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

CREATE TABLE lctrlcons (
       suporte              varchar(100) NOT NULL,
       tipo                 varchar(21) NOT NULL,
       Idgrupo              int NOT NULL,
       idempresa            int NOT NULL,
       Recmulta             int
                                   CHECK ((Recmulta in (0,1))),
       multa                money,
       Bloqueio             int
                                   CHECK ((Bloqueio in (0,1))),
       suspende             int
                                   CHECK ((suspende in (0,1))),
       SuspFixo             int NULL,
       Spen                 int
                                   CHECK ((Spen in (0,1)))
)
go

CREATE INDEX XIF33lctrlcons ON lctrlcons
(
       suporte,
       tipo
)
go

CREATE INDEX XIF34lctrlcons ON lctrlcons
(
       Idgrupo
)
go

CREATE INDEX XIF98lctrlcons ON lctrlcons
(
       idempresa
)
go


CREATE TABLE lctrlemp (
       suporte              varchar(100) NOT NULL,
       tipo                 varchar(21) NOT NULL,
       Idgrupo              int NOT NULL,
       idempresa            int NOT NULL,
       Flag_emp             int
                                   CHECK ((Flag_emp in (0,1))),
       N_emp                int NULL,
       N_dias               int NULL,
       RecMulta             int
                                   CHECK ((RecMulta in (0,1))),
       Multa                money,
       Bloqueio             int
                                   CHECK ((Bloqueio in (0,1))),
       Suspende             int
                                   CHECK ((Suspende in (0,1))),
       SuspFixo             int NULL,
       Spen                 int
                                   CHECK ((Spen in (0,1)))
)
go

CREATE INDEX XIF30lctrlemp ON lctrlemp
(
       suporte,
       tipo
)
go

CREATE INDEX XIF31lctrlemp ON lctrlemp
(
       Idgrupo
)
go

CREATE INDEX XIF97lctrlemp ON lctrlemp
(
       idempresa
)
go


CREATE TABLE lempresa (
       Nome                 varchar(100) NOT NULL,
       idempresa            int IDENTITY(1,1),
       Razaosocial          varchar(20) NULL,
       Ender                varchar(100) NULL,
       Bairro               varchar(50) NULL,
       Cidade               varchar(100) NULL,
       Federa               varchar(20) NULL,
       Pais                 varchar(20) NULL,
       CEP                  varchar(20) NULL,
       E_mail               varchar(100) NULL,
       Web                  varchar(100) NULL,
       Foto                 image NULL,
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
       ObsTel_3             text
)
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
       Obs                  text,
       comercial            varchar(20) NULL,
       residencial          varchar(20) NULL,
       Celular              varchar(20) NULL,
       Dtnascimento         datetime NULL,
       idempresa            int NOT NULL
)
go

CREATE INDEX XIF27lleitor ON lleitor
(
       Idgrupo
)
go

CREATE INDEX XIF95lleitor ON lleitor
(
       idempresa
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
       obs                  text NULL
)
go

CREATE INDEX XIF93llocal ON llocal
(
       idempresa
)
go


CREATE TABLE lparametro (
       idempresa            int NOT NULL,
       mtombo               varchar(20) NULL,
       idgrupo              int NULL,
       idgrupovis           int NULL,
       mcodedit             varchar(20) NULL,
       mcodlocal            varchar(20) NULL,
       mcodgrupo            varchar(20) NULL,
       mcodsuporte          varchar(20) NULL,
       bloqueio             int NULL
                                   CHECK ((bloqueio in (0,1))),
       regmultabibi         int NULL
                                   CHECK ((regmultabibi in (0,1))),
       regdevbibi           int NULL
                                   CHECK ((regdevbibi in (0,1))),
       regempbibi           int NULL
                                   CHECK ((regempbibi in (0,1))),
       regreservabibi       int NULL
                                   CHECK ((regreservabibi in (0,1))),
       regbloqueio          int NULL
                                   CHECK ((regbloqueio in (0,1))),
       regliberabibli       int NULL
                                   CHECK ((regliberabibli in (0,1))),
       regconsultabibi      int NULL
                                   CHECK ((regconsultabibi in (0,1))),
       regdevconsbibi       int NULL
                                   CHECK ((regdevconsbibi in (0,1)))
)
go


CREATE TABLE lsuporte (
       tipo                 varchar(21) NOT NULL,
       suporte              varchar(100) NOT NULL,
       Codigo               varchar(20) NOT NULL,
       idempresa            int NOT NULL
)
go

CREATE INDEX XIF96lsuporte ON lsuporte
(
       idempresa
)
go



