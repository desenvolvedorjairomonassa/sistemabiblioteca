
 
 CREATE TABLE LDdono (
        Dono                 varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDdono
        ADD CONSTRAINT PKLDdono PRIMARY KEY (Dono)
go
 
 
 CREATE TABLE LDEstado (
        Pais                 varchar(100) NULL,
        Estado               varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDEstado
        ADD CONSTRAINT PKLDEstado PRIMARY KEY (Estado)
go
 
 INSERT INTO LDEstado (Estado,Pais) VALUES ('Alabama','Estados Unidos') 
GO  
INSERT INTO LDEstado (Estado,Pais) VALUES ('Alasca','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Arizona','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Arkansas','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Califórnia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Carolina do Norte','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Carolina do Sul','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Colorado','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Connecticut','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Dakota do Norte','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Dakota do Sul','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Delaware','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Distrito de Colúmbia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Flórida','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Geórgia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Havaí','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Idaho','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Illinois','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Indiana','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Iowa','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Kansas','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Kentucky','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Louisiana','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Maine','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Maryland','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Massachusetts','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Michigan','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Minnesota','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Mississippi','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Missouri','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Montana','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nebraska','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nevada','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('New Hampshire','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nova Jersey','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nova York','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Novo México','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Ohio','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oklahoma','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oregon','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Pensilvânia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Rhode Island','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Tennessee','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Texas','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Utah','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Vermont','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virgínia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virgínia Ocidental','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Washington','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Wisconsin','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Wyoming','Estados Unidos') 
GO
 
 INSERT INTO LDEstado (Estado,Pais) VALUES ('Alabama','Estados Unidos') GO  
INSERT INTO LDEstado (Estado,Pais) VALUES ('Alasca','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Arizona','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Arkansas','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Califórnia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Carolina do Norte','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Carolina do Sul','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Colorado','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Connecticut','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Dakota do Norte','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Dakota do Sul','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Delaware','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Distrito de Colúmbia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Flórida','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Geórgia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Havaí','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Idaho','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Illinois','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Indiana','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Iowa','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Kansas','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Kentucky','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Louisiana','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Maine','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Maryland','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Massachusetts','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Michigan','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Minnesota','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Mississippi','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Missouri','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Montana','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nebraska','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nevada','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('New Hampshire','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nova Jersey','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Nova York','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Novo México','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Ohio','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oklahoma','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oregon','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Pensilvânia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Rhode Island','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Tennessee','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Texas','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Utah','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Vermont','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virgínia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virgínia Ocidental','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Washington','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Wisconsin','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Wyoming','Estados Unidos') GO
 
 
 CREATE TABLE LDIdioma (
        Idioma               varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDIdioma
        ADD CONSTRAINT PKLDIdioma PRIMARY KEY (Idioma)
go
 
 INSERT INTO LDIdioma VALUES('Alemão') 
GO
INSERT INTO LDIdioma VALUES('Chinês') 
GO
INSERT INTO LDIdioma VALUES('Coreano') 
GO
INSERT INTO LDIdioma VALUES('Dinamarquês') 
GO
INSERT INTO LDIdioma VALUES('Espanhol') 
GO
INSERT INTO LDIdioma VALUES('Estoniano') 
GO
INSERT INTO LDIdioma VALUES('Finlandês') 
GO
INSERT INTO LDIdioma VALUES('Francês') 
GO
INSERT INTO LDIdioma VALUES('Grego') 
GO
INSERT INTO LDIdioma VALUES('Hebreu') 
GO
INSERT INTO LDIdioma VALUES('Holandês') 
GO
INSERT INTO LDIdioma VALUES('Húngaro') 
GO
INSERT INTO LDIdioma VALUES('Inglês') 
GO
INSERT INTO LDIdioma VALUES('Islandês') 
GO
INSERT INTO LDIdioma VALUES('Italiano') 
GO
INSERT INTO LDIdioma VALUES('Japonês') 
GO
INSERT INTO LDIdioma VALUES('Letão') 
GO
INSERT INTO LDIdioma VALUES('Lituano') 
GO
INSERT INTO LDIdioma VALUES('Norueguês') 
GO
INSERT INTO LDIdioma VALUES('Polonês') 
GO
INSERT INTO LDIdioma VALUES('Português') 
GO
INSERT INTO LDIdioma VALUES('Romano') 
GO
INSERT INTO LDIdioma VALUES('Russo') 
GO
INSERT INTO LDIdioma VALUES('Sueco') 
GO
INSERT INTO LDIdioma VALUES('Tcheco') 
GO
 
 
 CREATE TABLE LDPais (
        Pais                 varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDPais
        ADD CONSTRAINT PKLDPais PRIMARY KEY (Pais)
go
 
 INSERT INTO LDPais VALUES ('Afeganistão') 
GO
INSERT INTO LDPais VALUES ('Albânia') 
GO
INSERT INTO LDPais VALUES ('Afeganistão') 
GO
INSERT INTO LDPais VALUES ('Albânia') 
GO
INSERT INTO LDPais VALUES ('Alemanha') 
GO
INSERT INTO LDPais VALUES ('Andorra') 
GO
INSERT INTO LDPais VALUES ('Angola') 
GO
INSERT INTO LDPais VALUES ('Anguilla') 
GO
INSERT INTO LDPais VALUES ('Antilhas Holandesas') 
GO
INSERT INTO LDPais VALUES ('Antártida') 
GO
INSERT INTO LDPais VALUES ('Antígua e Barbuda') 
GO
INSERT INTO LDPais VALUES ('Argentina') 
GO
INSERT INTO LDPais VALUES ('Argélia') 
GO
INSERT INTO LDPais VALUES ('Armênia') 
GO
INSERT INTO LDPais VALUES ('Aruba') 
GO
INSERT INTO LDPais VALUES ('Arábia Saudita') 
GO
INSERT INTO LDPais VALUES ('Austrália') 
GO
INSERT INTO LDPais VALUES ('Azerbaijão') 
GO
INSERT INTO LDPais VALUES ('Bahamas') 
GO
INSERT INTO LDPais VALUES ('Bahrein') 
GO
INSERT INTO LDPais VALUES ('Bangladesh') 
GO
INSERT INTO LDPais VALUES ('Barbados') 
GO
INSERT INTO LDPais VALUES ('Belarus') 
GO
INSERT INTO LDPais VALUES ('Belize') 
GO
INSERT INTO LDPais VALUES ('Benin') 
GO
INSERT INTO LDPais VALUES ('Bermuda') 
GO
INSERT INTO LDPais VALUES ('Bolívia') 
GO
INSERT INTO LDPais VALUES ('Botsuana') 
GO
INSERT INTO LDPais VALUES ('Brasil') 
GO
INSERT INTO LDPais VALUES ('Brunei') 
GO
INSERT INTO LDPais VALUES ('Bulgária') 
GO
INSERT INTO LDPais VALUES ('Burkina Faso') 
GO
INSERT INTO LDPais VALUES ('Burundi') 
GO
INSERT INTO LDPais VALUES ('Butão') 
GO
INSERT INTO LDPais VALUES ('Bélgica') 
GO
INSERT INTO LDPais VALUES ('Bósnia e Herzegovina') 
GO
INSERT INTO LDPais VALUES ('Cabo Verde') 
GO
INSERT INTO LDPais VALUES ('Camarões') 
GO
INSERT INTO LDPais VALUES ('Camboja') 
GO
INSERT INTO LDPais VALUES ('Canadá') 
GO
INSERT INTO LDPais VALUES ('Catar') 
GO
INSERT INTO LDPais VALUES ('Cazaquistão') 
GO
INSERT INTO LDPais VALUES ('Chade') 
GO
INSERT INTO LDPais VALUES ('Chile') 
GO
INSERT INTO LDPais VALUES ('China') 
GO
INSERT INTO LDPais VALUES ('Chipre') 
GO
INSERT INTO LDPais VALUES ('Cidade do Vaticano (Santa Sé)') 
GO
INSERT INTO LDPais VALUES ('Cingapura') 
GO
INSERT INTO LDPais VALUES ('Colômbia') 
GO
INSERT INTO LDPais VALUES ('Comores') 
GO
INSERT INTO LDPais VALUES ('Congo') 
GO
INSERT INTO LDPais VALUES ('Congo, República Popular do') 
GO
INSERT INTO LDPais VALUES ('Coréia') 
GO
INSERT INTO LDPais VALUES ('Coréia do Norte') 
GO
INSERT INTO LDPais VALUES ('Costa Rica') 
GO
INSERT INTO LDPais VALUES ('Costa do Marfim') 
GO
INSERT INTO LDPais VALUES ('Croácia (Hrvatska)') 
GO
INSERT INTO LDPais VALUES ('Cuba') 
GO
INSERT INTO LDPais VALUES ('Dinamarca') 
GO
INSERT INTO LDPais VALUES ('Djibuti') 
GO
INSERT INTO LDPais VALUES ('Dominica') 
GO
INSERT INTO LDPais VALUES ('Egito') 
GO
INSERT INTO LDPais VALUES ('El Salvador') 
GO
INSERT INTO LDPais VALUES ('Emirados Árabes Unidos') 
GO
INSERT INTO LDPais VALUES ('Equador') 
GO
INSERT INTO LDPais VALUES ('Eritréia') 
GO
INSERT INTO LDPais VALUES ('Eslováquia') 
GO
INSERT INTO LDPais VALUES ('Eslovênia') 
GO
INSERT INTO LDPais VALUES ('Espanha') 
GO
INSERT INTO LDPais VALUES ('Estados Unidos') 
GO
INSERT INTO LDPais VALUES ('Estônia') 
GO
INSERT INTO LDPais VALUES ('Etiópia') 
GO
INSERT INTO LDPais VALUES ('Fiji') 
GO
INSERT INTO LDPais VALUES ('Filipinas') 
GO
INSERT INTO LDPais VALUES ('Finlândia') 
GO
INSERT INTO LDPais VALUES ('França') 
GO
INSERT INTO LDPais VALUES ('Gabão') 
GO
INSERT INTO LDPais VALUES ('Gana') 
GO
INSERT INTO LDPais VALUES ('Geórgia') 
GO
INSERT INTO LDPais VALUES ('Gibraltar') 
GO
INSERT INTO LDPais VALUES ('Grenada') 
GO
INSERT INTO LDPais VALUES ('Groenlândia') 
GO
INSERT INTO LDPais VALUES ('Grécia') 
GO
INSERT INTO LDPais VALUES ('Guadalupe') 
GO
INSERT INTO LDPais VALUES ('Guam') 
GO
INSERT INTO LDPais VALUES ('Guatemala') 
GO
INSERT INTO LDPais VALUES ('Guiana') 
GO
INSERT INTO LDPais VALUES ('Guiana Francesa') 
GO
INSERT INTO LDPais VALUES ('Guiné') 
GO
INSERT INTO LDPais VALUES ('Guiné Equatorial') 
GO
INSERT INTO LDPais VALUES ('Guiné-Bissau') 
GO
INSERT INTO LDPais VALUES ('Gâmbia') 
GO
INSERT INTO LDPais VALUES ('Haiti') 
GO
INSERT INTO LDPais VALUES ('Holanda') 
GO
INSERT INTO LDPais VALUES ('Honduras') 
GO
INSERT INTO LDPais VALUES ('Hong Kong RAE, República Popular da China') 
GO
INSERT INTO LDPais VALUES ('Hungria') 
GO
INSERT INTO LDPais VALUES ('Ilha Bouvet') 
GO
INSERT INTO LDPais VALUES ('Ilha Norfolk') 
GO
INSERT INTO LDPais VALUES ('Ilhas Cayman') 
GO
INSERT INTO LDPais VALUES ('Ilhas Christmas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Cocos (Keeling)') 
GO
INSERT INTO LDPais VALUES ('Ilhas Cook') 
GO
INSERT INTO LDPais VALUES ('Ilhas Faroés') 
GO
INSERT INTO LDPais VALUES ('Ilhas Geórgia do Sul e Sandwich do Sul') 
GO
INSERT INTO LDPais VALUES ('Ilhas Heard e McDonald') 
GO
INSERT INTO LDPais VALUES ('Ilhas Malvinas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Marianas do Norte') 
GO
INSERT INTO LDPais VALUES ('Ilhas Marshall') 
GO
INSERT INTO LDPais VALUES ('Ilhas Salomão') 
GO
INSERT INTO LDPais VALUES ('Ilhas Svalbard e Jan Mayen') 
GO
INSERT INTO LDPais VALUES ('Ilhas Turks e Caicos') 
GO
INSERT INTO LDPais VALUES ('Ilhas Virgens Americanas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Virgens Britânicas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Wallis e Futuna') 
GO
INSERT INTO LDPais VALUES ('Indonésia') 
GO
INSERT INTO LDPais VALUES ('Iraque') 
GO
INSERT INTO LDPais VALUES ('Irlanda') 
GO
INSERT INTO LDPais VALUES ('Irã') 
GO
INSERT INTO LDPais VALUES ('Islândia') 
GO
INSERT INTO LDPais VALUES ('Israel') 
GO
INSERT INTO LDPais VALUES ('Itália') 
GO
INSERT INTO LDPais VALUES ('Iugoslávia') 
GO
INSERT INTO LDPais VALUES ('Iêmen') 
GO
INSERT INTO LDPais VALUES ('Jamaica') 
GO
INSERT INTO LDPais VALUES ('Japão') 
GO
INSERT INTO LDPais VALUES ('Jordânia') 
GO
INSERT INTO LDPais VALUES ('Kiribati') 
GO
INSERT INTO LDPais VALUES ('Kuwait') 
GO
INSERT INTO LDPais VALUES ('Laos') 
GO
INSERT INTO LDPais VALUES ('Lesoto') 
GO
INSERT INTO LDPais VALUES ('Letônia') 
GO
INSERT INTO LDPais VALUES ('Libéria') 
GO
INSERT INTO LDPais VALUES ('Liechtenstein') 
GO
INSERT INTO LDPais VALUES ('Lituânia') 
GO
INSERT INTO LDPais VALUES ('Luxemburgo') 
GO
INSERT INTO LDPais VALUES ('Líbano') 
GO
INSERT INTO LDPais VALUES ('Líbia') 
GO
INSERT INTO LDPais VALUES ('Macau') 
GO
INSERT INTO LDPais VALUES ('Macedônia') 
GO
INSERT INTO LDPais VALUES ('Madagascar') 
GO
INSERT INTO LDPais VALUES ('Malaui') 
GO
INSERT INTO LDPais VALUES ('Maldivas') 
GO
INSERT INTO LDPais VALUES ('Mali') 
GO
INSERT INTO LDPais VALUES ('Malta') 
GO
INSERT INTO LDPais VALUES ('Malásia') 
GO
INSERT INTO LDPais VALUES ('Marrocos') 
GO
INSERT INTO LDPais VALUES ('Martinica') 
GO
INSERT INTO LDPais VALUES ('Mauritânia') 
GO
INSERT INTO LDPais VALUES ('Maurício') 
GO
INSERT INTO LDPais VALUES ('Mayotte') 
GO
INSERT INTO LDPais VALUES ('Micronésia') 
GO
INSERT INTO LDPais VALUES ('Moldávia') 
GO
INSERT INTO LDPais VALUES ('Mongólia') 
GO
INSERT INTO LDPais VALUES ('Montserrat') 
GO
INSERT INTO LDPais VALUES ('Moçambique') 
GO
INSERT INTO LDPais VALUES ('Myanma') 
GO
INSERT INTO LDPais VALUES ('México') 
GO
INSERT INTO LDPais VALUES ('Mônaco') 
GO
INSERT INTO LDPais VALUES ('Namíbia') 
GO
INSERT INTO LDPais VALUES ('Nauru') 
GO
INSERT INTO LDPais VALUES ('Nepal') 
GO
INSERT INTO LDPais VALUES ('Nicarágua') 
GO
INSERT INTO LDPais VALUES ('Nigéria') 
GO
INSERT INTO LDPais VALUES ('Niue') 
GO
INSERT INTO LDPais VALUES ('Noruega') 
GO
INSERT INTO LDPais VALUES ('Nova Caledônia') 
GO
INSERT INTO LDPais VALUES ('Nova Zelândia') 
GO
INSERT INTO LDPais VALUES ('Níger') 
GO
INSERT INTO LDPais VALUES ('Omã') 
GO
INSERT INTO LDPais VALUES ('Palau') 
GO
INSERT INTO LDPais VALUES ('Panamá') 
GO
INSERT INTO LDPais VALUES ('Papua-Nova Guiné') 
GO
INSERT INTO LDPais VALUES ('Paquistão') 
GO
INSERT INTO LDPais VALUES ('Paraguai') 
GO
INSERT INTO LDPais VALUES ('Peru') 
GO
INSERT INTO LDPais VALUES ('Pitcairn') 
GO
INSERT INTO LDPais VALUES ('Polinésia Francesa') 
GO
INSERT INTO LDPais VALUES ('Polônia') 
GO
INSERT INTO LDPais VALUES ('Porto Rico') 
GO
INSERT INTO LDPais VALUES ('Portugal') 
GO
INSERT INTO LDPais VALUES ('Quirguistão') 
GO
INSERT INTO LDPais VALUES ('Quênia') 
GO
INSERT INTO LDPais VALUES ('Reino Unido') 
GO
INSERT INTO LDPais VALUES ('República Centro-Africana') 
GO
INSERT INTO LDPais VALUES ('República Dominicana') 
GO
INSERT INTO LDPais VALUES ('República Tcheca') 
GO
INSERT INTO LDPais VALUES ('Reunião') 
GO
INSERT INTO LDPais VALUES ('Romênia') 
GO
INSERT INTO LDPais VALUES ('Ruanda') 
GO
INSERT INTO LDPais VALUES ('Rússia') 
GO
INSERT INTO LDPais VALUES ('Saint Kitts e Névis') 
GO
INSERT INTO LDPais VALUES ('Samoa') 
GO
INSERT INTO LDPais VALUES ('Samoa Americana') 
GO
INSERT INTO LDPais VALUES ('San Marino') 
GO
INSERT INTO LDPais VALUES ('Santa Helena') 
GO
INSERT INTO LDPais VALUES ('Santa Lúcia') 
GO
INSERT INTO LDPais VALUES ('Senegal') 
GO
INSERT INTO LDPais VALUES ('Serra Leoa') 
GO
INSERT INTO LDPais VALUES ('Seychelles') 
GO
INSERT INTO LDPais VALUES ('Somália') 
GO
INSERT INTO LDPais VALUES ('Sri Lanka') 
GO
INSERT INTO LDPais VALUES ('St. Pierre e Miquelon') 
GO
INSERT INTO LDPais VALUES ('Suazilândia') 
GO
INSERT INTO LDPais VALUES ('Sudão') 
GO
INSERT INTO LDPais VALUES ('Suriname') 
GO
INSERT INTO LDPais VALUES ('Suécia') 
GO
INSERT INTO LDPais VALUES ('Suíça') 
GO
INSERT INTO LDPais VALUES ('São Tomé e Príncipe') 
GO
INSERT INTO LDPais VALUES ('São Vicente e Granadinas') 
GO
INSERT INTO LDPais VALUES ('Síria') 
GO
INSERT INTO LDPais VALUES ('Tadjiquistão') 
GO
INSERT INTO LDPais VALUES ('Tailândia') 
GO
INSERT INTO LDPais VALUES ('Taiwan') 
GO
INSERT INTO LDPais VALUES ('Tanzânia') 
GO
INSERT INTO LDPais VALUES ('Território Britânico do Oceano Índico') 
GO
INSERT INTO LDPais VALUES ('Territórios Franceses do Sul') 
GO
INSERT INTO LDPais VALUES ('Territórios Insulares dos EUA') 
GO
INSERT INTO LDPais VALUES ('Timor Oriental') 
GO
INSERT INTO LDPais VALUES ('Togo') 
GO
INSERT INTO LDPais VALUES ('Tokelau') 
GO
INSERT INTO LDPais VALUES ('Tonga') 
GO
INSERT INTO LDPais VALUES ('Trinidad e Tobago') 
GO
INSERT INTO LDPais VALUES ('Tunísia') 
GO
INSERT INTO LDPais VALUES ('Turcomenistão') 
GO
INSERT INTO LDPais VALUES ('Turquia') 
GO
INSERT INTO LDPais VALUES ('Tuvalu') 
GO
INSERT INTO LDPais VALUES ('Ucrânia') 
GO
INSERT INTO LDPais VALUES ('Uganda') 
GO
INSERT INTO LDPais VALUES ('Uruguai') 
GO
INSERT INTO LDPais VALUES ('Uzbequistão') 
GO
INSERT INTO LDPais VALUES ('Vanuatu') 
GO
INSERT INTO LDPais VALUES ('Venezuela') 
GO
INSERT INTO LDPais VALUES ('Vietnã') 
GO
INSERT INTO LDPais VALUES ('Zimbábue') 
GO
INSERT INTO LDPais VALUES ('Zâmbia') 
GO
INSERT INTO LDPais VALUES ('África do Sul') 
GO
INSERT INTO LDPais VALUES ('Áustria') 
GO
INSERT INTO LDPais VALUES ('Índia') 
GO
 
 
 CREATE TABLE LDPeriodicidade (
        Periodo              varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDPeriodicidade
        ADD CONSTRAINT PKLDPeriodicidade PRIMARY KEY (Periodo)
go
 
 INSERT INTO LDPeriodicidade VALUES ('Diário') 
GO
INSERT INTO LDPeriodicidade VALUES ('Semanal') 
GO
INSERT INTO LDPeriodicidade VALUES ('Quinzenal') 
GO
INSERT INTO LDPeriodicidade VALUES ('Bimensal') 
GO
INSERT INTO LDPeriodicidade VALUES ('Mensal') 
GO
INSERT INTO LDPeriodicidade VALUES ('Bimestral') 
GO
INSERT INTO LDPeriodicidade VALUES ('Trimestral') 
GO
INSERT INTO LDPeriodicidade VALUES ('Quadrimestral') 
GO
INSERT INTO LDPeriodicidade VALUES ('Semestral') 
GO
INSERT INTO LDPeriodicidade VALUES ('Anual') 
GO
INSERT INTO LDPeriodicidade VALUES ('Irregular') 
GO
 
 
 CREATE TABLE LDResponsabilidade (
        responsabilidade     varchar(50) NOT NULL
 )
go
 
 
 ALTER TABLE LDResponsabilidade
        ADD CONSTRAINT PKLDResponsabilidade PRIMARY KEY (
               responsabilidade)
go
 
 INSERT INTO LDResponsabilidade VALUES ('Autor principal') 
Go 
INSERT INTO LDResponsabilidade VALUES ('Cartógrafo') 
Go
INSERT INTO LDResponsabilidade VALUES ('Co-orientador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Colaborador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Compilador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Coordenador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Diretor') 
Go
INSERT INTO LDResponsabilidade VALUES ('Elenco') 
Go
INSERT INTO LDResponsabilidade VALUES ('Entidade') 
Go
INSERT INTO LDResponsabilidade VALUES ('Evento') 
Go
INSERT INTO LDResponsabilidade VALUES ('Fotográfo') 
Go
INSERT INTO LDResponsabilidade VALUES ('Ilustrador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Interprete') 
Go
INSERT INTO LDResponsabilidade VALUES ('Montagem') 
Go
INSERT INTO LDResponsabilidade VALUES ('Música') 
Go
INSERT INTO LDResponsabilidade VALUES ('Organizador ') 
Go
INSERT INTO LDResponsabilidade VALUES ('Orientador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Outros secundários') 
Go
INSERT INTO LDResponsabilidade VALUES ('Revisor ') 
Go
INSERT INTO LDResponsabilidade VALUES ('Roteirista') 
Go
INSERT INTO LDResponsabilidade VALUES ('Tradutor') 
Go
 
 
 CREATE TABLE LDSerie (
        serie                varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDSerie
        ADD CONSTRAINT PKLDSerie PRIMARY KEY (serie)
go
 
 
 
 
 CREATE TABLE Periodo (
        meses                char(50) NOT NULL
 )
go
 
 
 ALTER TABLE Periodo
        ADD CONSTRAINT XPKPeriodo PRIMARY KEY NONCLUSTERED (meses)
go
 
 CREATE VIEW vregiao AS
        SELECT LDEstado.Estado, LDEstado.Pais
        FROM LDEstado, LDPais
        WHERE LDEstado.Pais=LDPais.Pais
        WITH CHECK OPTION
go
 
 
 
