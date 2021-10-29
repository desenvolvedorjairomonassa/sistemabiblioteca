
 
 CREATE TABLE lgrupo (
        Codigo               varchar(20),
        Idgrupo              int IDENTITY(1,1),
        Descrição            varchar(100) NOT NULL
 )
go
 
 CREATE UNIQUE INDEX PKlgrupo ON lgrupo
 (
        Idgrupo
 )
go
 
 
 CREATE TABLE lsuporte (
        tipo                 varchar(21) NOT NULL,
        suporte              varchar(100) NOT NULL,
        Codigo               varchar(20) NOT NULL,
        idempresa            int NOT NULL, 
        FOREIGN KEY (idempresa)
                              REFERENCES lempresa
 )
go
 
 CREATE INDEX XIF96lsuporte ON lsuporte
 (
        idempresa
 )
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
                                    CHECK ((Spen in (0,1))), 
        FOREIGN KEY (idempresa)
                              REFERENCES lempresa, 
        FOREIGN KEY (Idgrupo)
                              REFERENCES lgrupo
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlctrlcons ON lctrlcons
 (
        suporte,
        tipo,
        Idgrupo,
        idempresa
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
                                    CHECK ((Spen in (0,1))), 
        FOREIGN KEY (idempresa)
                              REFERENCES lempresa, 
        FOREIGN KEY (Idgrupo)
                              REFERENCES lgrupo
 )
go
 
 CREATE UNIQUE CLUSTERED INDEX PKlctrlemp ON lctrlemp
 (
        suporte,
        tipo,
        Idgrupo,
        idempresa
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
        idempresa            int NOT NULL, 
        FOREIGN KEY (idempresa)
                              REFERENCES lempresa, 
        FOREIGN KEY (Idgrupo)
                              REFERENCES lgrupo
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
 
 
 
 
 create trigger tgrupo on lgrupo
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lgrupo R/71 lctrlcons ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lctrlcons
      where
        /*  lctrlcons.Idgrupo = deleted.Idgrupo */
        lctrlcons.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lgrupo because lctrlcons exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo R/71 lctrlcons ON PARENT UPDATE RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    if exists (
      select * from deleted,lctrlcons
      where
        /*  lctrlcons.Idgrupo = deleted.Idgrupo */
        lctrlcons.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lgrupo because lctrlcons exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lgrupo R/68 lctrlemp ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lctrlemp
      where
        /*  lctrlemp.Idgrupo = deleted.Idgrupo */
        lctrlemp.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lgrupo because lctrlemp exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo R/68 lctrlemp ON PARENT UPDATE RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    if exists (
      select * from deleted,lctrlemp
      where
        /*  lctrlemp.Idgrupo = deleted.Idgrupo */
        lctrlemp.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lgrupo because lctrlemp exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lgrupo Pertence lleitor ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lleitor
      where
        /*  lleitor.Idgrupo = deleted.Idgrupo */
        lleitor.Idgrupo = deleted.Idgrupo
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lgrupo because lleitor exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo Pertence lleitor ON PARENT UPDATE RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    if exists (
      select * from deleted,lleitor
      where
        /*  lleitor.Idgrupo = deleted.Idgrupo */
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


create trigger tsuporte on lsuporte
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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


/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lsuporte mídia do acervo lobramon ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lobramon
      where
        /*  lobramon.suporte = deleted.tipo and
            lobramon.Tipo = deleted.tipo and
            lobramon.suporte = deleted.suporte */
        lobramon.suporte = deleted.tipo and
        lobramon.Tipo = deleted.tipo and
        lobramon.suporte = deleted.suporte
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lsuporte because lobramon exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
        /*  lobramon.suporte = deleted.tipo and
            lobramon.Tipo = deleted.tipo and
            lobramon.suporte = deleted.suporte */
        lobramon.suporte = deleted.tipo and
        lobramon.Tipo = deleted.tipo and
        lobramon.suporte = deleted.suporte
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lsuporte because lobramon exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lsuporte Controle de empréstimo lgrupo ON PARENT DELETE SET NULL */
    update lgrupo
      set
        /*  */
        
      from lgrupo,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lsuporte Controle de consulta lgrupo ON PARENT DELETE SET NULL */
    update lgrupo
      set
        /*  */
        
      from lgrupo,deleted
      where
        /*  */
        
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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


create trigger tctrlcons on lctrlcons
  for DELETE,INSERT,UPDATE
  as
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
/* DELETE,INSERT,UPDATE trigger on lctrlcons */
/* default body for tctrlcons */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @inssuporte varchar(100), 
           @instipo varchar(21), 
           @insIdgrupo int, 
           @insidempresa int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lempresa R/6 lctrlcons ON CHILD INSERT RESTRICT */
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
             @errmsg = 'Cannot INSERT lctrlcons because lempresa does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lempresa R/6 lctrlcons ON CHILD UPDATE RESTRICT */
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
             @errmsg = 'Cannot UPDATE lctrlcons because lempresa does not exist.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo R/71 lctrlcons ON CHILD INSERT RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* inserted.Idgrupo = lgrupo.Idgrupo */
          inserted.Idgrupo = lgrupo.Idgrupo
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lctrlcons because lgrupo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo R/71 lctrlcons ON CHILD UPDATE RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* inserted.Idgrupo = lgrupo.Idgrupo */
          inserted.Idgrupo = lgrupo.Idgrupo
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lctrlcons because lgrupo does not exist.'
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
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
/* DELETE,INSERT,UPDATE trigger on lctrlemp */
/* default body for tctrlemp */
begin
  declare  @numrows int,
           @nullcnt int,
           @validcnt int,
           @inssuporte varchar(100), 
           @instipo varchar(21), 
           @insIdgrupo int, 
           @insidempresa int,
           @errno   int,
           @errmsg  varchar(255)

  select @numrows = @@rowcount
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lempresa R/5 lctrlemp ON CHILD INSERT RESTRICT */
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
             @errmsg = 'Cannot INSERT lctrlemp because lempresa does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lempresa R/5 lctrlemp ON CHILD UPDATE RESTRICT */
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
             @errmsg = 'Cannot UPDATE lctrlemp because lempresa does not exist.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo R/68 lctrlemp ON CHILD INSERT RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* inserted.Idgrupo = lgrupo.Idgrupo */
          inserted.Idgrupo = lgrupo.Idgrupo
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lctrlemp because lgrupo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo R/68 lctrlemp ON CHILD UPDATE RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* inserted.Idgrupo = lgrupo.Idgrupo */
          inserted.Idgrupo = lgrupo.Idgrupo
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lctrlemp because lgrupo does not exist.'
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
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
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
/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lempresa possui lleitor ON CHILD INSERT RESTRICT */
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
             @errmsg = 'Cannot INSERT lleitor because lempresa does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lempresa possui lleitor ON CHILD UPDATE RESTRICT */
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
             @errmsg = 'Cannot UPDATE lleitor because lempresa does not exist.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo Pertence lleitor ON CHILD INSERT RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* inserted.Idgrupo = lgrupo.Idgrupo */
          inserted.Idgrupo = lgrupo.Idgrupo
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30002,
             @errmsg = 'Cannot INSERT lleitor because lgrupo does not exist.'
      goto error
    end
  end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lgrupo Pertence lleitor ON CHILD UPDATE RESTRICT */
  if
    /* update(Idgrupo) */
    update(Idgrupo)
  begin
    select @nullcnt = 0
    select @validcnt = count(*)
      from inserted,lgrupo
        where
          /* inserted.Idgrupo = lgrupo.Idgrupo */
          inserted.Idgrupo = lgrupo.Idgrupo
    /*  */
    
    if @validcnt + @nullcnt != @numrows
    begin
      select @errno  = 30007,
             @errmsg = 'Cannot UPDATE lleitor because lgrupo does not exist.'
      goto error
    end
  end


/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor registra bloqueio lbloqueio ON PARENT DELETE SET NULL */
    update lbloqueio
      set
        /* lbloqueio.idbiblio_bloqueio = NULL */
        lbloqueio.idbiblio_bloqueio = NULL
      from lbloqueio,deleted
      where
        /* lbloqueio.idbiblio_bloqueio = deleted.Idleitor */
        lbloqueio.idbiblio_bloqueio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor registra bloqueio lbloqueio ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lbloqueio
      set
        /* lbloqueio.idbiblio_bloqueio = NULL */
        lbloqueio.idbiblio_bloqueio = NULL
      from lbloqueio,deleted
      where
        /* lbloqueio.idbiblio_bloqueio = deleted.Idleitor */
        lbloqueio.idbiblio_bloqueio = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor registra liberação lbloqueio ON PARENT DELETE SET NULL */
    update lbloqueio
      set
        /* lbloqueio.idbiblio_libera = NULL */
        lbloqueio.idbiblio_libera = NULL
      from lbloqueio,deleted
      where
        /* lbloqueio.idbiblio_libera = deleted.Idleitor */
        lbloqueio.idbiblio_libera = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor registra liberação lbloqueio ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lbloqueio
      set
        /* lbloqueio.idbiblio_libera = NULL */
        lbloqueio.idbiblio_libera = NULL
      from lbloqueio,deleted
      where
        /* lbloqueio.idbiblio_libera = deleted.Idleitor */
        lbloqueio.idbiblio_libera = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor Bloquear lbloqueio ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lbloqueio
      where
        /*  lbloqueio.Idleitor = deleted.Idleitor */
        lbloqueio.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lleitor because lbloqueio exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor Bloquear lbloqueio ON PARENT UPDATE RESTRICT */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lbloqueio
      where
        /*  lbloqueio.Idleitor = deleted.Idleitor */
        lbloqueio.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lbloqueio exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor Registra multa lmulta ON PARENT DELETE SET NULL */
    update lmulta
      set
        /* lmulta.idbiblio = NULL */
        lmulta.idbiblio = NULL
      from lmulta,deleted
      where
        /* lmulta.idbiblio = deleted.Idleitor */
        lmulta.idbiblio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor Registra multa lmulta ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lmulta
      set
        /* lmulta.idbiblio = NULL */
        lmulta.idbiblio = NULL
      from lmulta,deleted
      where
        /* lmulta.idbiblio = deleted.Idleitor */
        lmulta.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor Registra a devolução da consulta lcompocons ON PARENT DELETE SET NULL */
    update lcompocons
      set
        /* lcompocons.idbiblio = NULL */
        lcompocons.idbiblio = NULL
      from lcompocons,deleted
      where
        /* lcompocons.idbiblio = deleted.Idleitor */
        lcompocons.idbiblio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor Registra a devolução da consulta lcompocons ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lcompocons
      set
        /* lcompocons.idbiblio = NULL */
        lcompocons.idbiblio = NULL
      from lcompocons,deleted
      where
        /* lcompocons.idbiblio = deleted.Idleitor */
        lcompocons.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor Registra a reserva lreservas ON PARENT DELETE SET NULL */
    update lreservas
      set
        /* lreservas.idbiblio = NULL */
        lreservas.idbiblio = NULL
      from lreservas,deleted
      where
        /* lreservas.idbiblio = deleted.Idleitor */
        lreservas.idbiblio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor Registra a reserva lreservas ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lreservas
      set
        /* lreservas.idbiblio = NULL */
        lreservas.idbiblio = NULL
      from lreservas,deleted
      where
        /* lreservas.idbiblio = deleted.Idleitor */
        lreservas.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor Registra devolução lcompoemp ON PARENT DELETE SET NULL */
    update lcompoemp
      set
        /* lcompoemp.Idbiblio = NULL */
        lcompoemp.Idbiblio = NULL
      from lcompoemp,deleted
      where
        /* lcompoemp.Idbiblio = deleted.Idleitor */
        lcompoemp.Idbiblio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor Registra devolução lcompoemp ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lcompoemp
      set
        /* lcompoemp.Idbiblio = NULL */
        lcompoemp.Idbiblio = NULL
      from lcompoemp,deleted
      where
        /* lcompoemp.Idbiblio = deleted.Idleitor */
        lcompoemp.Idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor Requisita lconsulta ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lconsulta
      where
        /*  lconsulta.Idleitor = deleted.Idleitor */
        lconsulta.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lleitor because lconsulta exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:01 2001 */
  /* lleitor Requisita lconsulta ON PARENT UPDATE RESTRICT */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lconsulta
      where
        /*  lconsulta.Idleitor = deleted.Idleitor */
        lconsulta.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lconsulta exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:01 2001 */
    /* lleitor compõe lreservas ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lreservas
      where
        /*  lreservas.Idleitor = deleted.Idleitor */
        lreservas.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lleitor because lreservas exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:02 2001 */
  /* lleitor compõe lreservas ON PARENT UPDATE RESTRICT */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lreservas
      where
        /*  lreservas.Idleitor = deleted.Idleitor */
        lreservas.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lreservas exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:02 2001 */
    /* lleitor Registra consulta lconsulta ON PARENT DELETE SET NULL */
    update lconsulta
      set
        /* lconsulta.idbiblio = NULL */
        lconsulta.idbiblio = NULL
      from lconsulta,deleted
      where
        /* lconsulta.idbiblio = deleted.Idleitor */
        lconsulta.idbiblio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:02 2001 */
  /* lleitor Registra consulta lconsulta ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lconsulta
      set
        /* lconsulta.idbiblio = NULL */
        lconsulta.idbiblio = NULL
      from lconsulta,deleted
      where
        /* lconsulta.idbiblio = deleted.Idleitor */
        lconsulta.idbiblio = deleted.Idleitor
  end

/* ERwin Builtin Thu Nov 29 12:53:02 2001 */
    /* lleitor Requisita lempdev ON PARENT DELETE RESTRICT */
    if exists (
      select * from deleted,lempdev
      where
        /*  lempdev.Idleitor = deleted.Idleitor */
        lempdev.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30001,
             @errmsg = 'Cannot DELETE lleitor because lempdev exists.'
      goto error
    end
  /* ERwin Builtin Thu Nov 29 12:53:02 2001 */
  /* lleitor Requisita lempdev ON PARENT UPDATE RESTRICT */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    if exists (
      select * from deleted,lempdev
      where
        /*  lempdev.Idleitor = deleted.Idleitor */
        lempdev.Idleitor = deleted.Idleitor
    )
    begin
      select @errno  = 30005,
             @errmsg = 'Cannot UPDATE lleitor because lempdev exists.'
      goto error
    end
  end

/* ERwin Builtin Thu Nov 29 12:53:02 2001 */
    /* lleitor Registra empréstimo lempdev ON PARENT DELETE SET NULL */
    update lempdev
      set
        /* lempdev.idbiblio = NULL */
        lempdev.idbiblio = NULL
      from lempdev,deleted
      where
        /* lempdev.idbiblio = deleted.Idleitor */
        lempdev.idbiblio = deleted.Idleitor
  /* ERwin Builtin Thu Nov 29 12:53:02 2001 */
  /* lleitor Registra empréstimo lempdev ON PARENT UPDATE SET NULL */
  if
    /* update(Idleitor) */
    update(Idleitor)
  begin
    update lempdev
      set
        /* lempdev.idbiblio = NULL */
        lempdev.idbiblio = NULL
      from lempdev,deleted
      where
        /* lempdev.idbiblio = deleted.Idleitor */
        lempdev.idbiblio = deleted.Idleitor
  end


  return
error:
    raiserror @errno @errmsg
    rollback transaction
end
go


