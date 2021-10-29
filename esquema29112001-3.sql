
 
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
INSERT INTO LDEstado (Estado,Pais) VALUES ('Calif�rnia','Estados Unidos') 
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
INSERT INTO LDEstado (Estado,Pais) VALUES ('Distrito de Col�mbia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Fl�rida','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Ge�rgia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Hava�','Estados Unidos') 
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
INSERT INTO LDEstado (Estado,Pais) VALUES ('Novo M�xico','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Ohio','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oklahoma','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oregon','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Pensilv�nia','Estados Unidos') 
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
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virg�nia','Estados Unidos') 
GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virg�nia Ocidental','Estados Unidos') 
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
INSERT INTO LDEstado (Estado,Pais) VALUES ('Calif�rnia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Carolina do Norte','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Carolina do Sul','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Colorado','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Connecticut','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Dakota do Norte','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Dakota do Sul','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Delaware','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Distrito de Col�mbia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Fl�rida','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Ge�rgia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Hava�','Estados Unidos') GO
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
INSERT INTO LDEstado (Estado,Pais) VALUES ('Novo M�xico','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Ohio','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oklahoma','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Oregon','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Pensilv�nia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Rhode Island','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Tennessee','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Texas','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Utah','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Vermont','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virg�nia','Estados Unidos') GO
INSERT INTO LDEstado (Estado,Pais) VALUES ('Virg�nia Ocidental','Estados Unidos') GO
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
 
 INSERT INTO LDIdioma VALUES('Alem�o') 
GO
INSERT INTO LDIdioma VALUES('Chin�s') 
GO
INSERT INTO LDIdioma VALUES('Coreano') 
GO
INSERT INTO LDIdioma VALUES('Dinamarqu�s') 
GO
INSERT INTO LDIdioma VALUES('Espanhol') 
GO
INSERT INTO LDIdioma VALUES('Estoniano') 
GO
INSERT INTO LDIdioma VALUES('Finland�s') 
GO
INSERT INTO LDIdioma VALUES('Franc�s') 
GO
INSERT INTO LDIdioma VALUES('Grego') 
GO
INSERT INTO LDIdioma VALUES('Hebreu') 
GO
INSERT INTO LDIdioma VALUES('Holand�s') 
GO
INSERT INTO LDIdioma VALUES('H�ngaro') 
GO
INSERT INTO LDIdioma VALUES('Ingl�s') 
GO
INSERT INTO LDIdioma VALUES('Island�s') 
GO
INSERT INTO LDIdioma VALUES('Italiano') 
GO
INSERT INTO LDIdioma VALUES('Japon�s') 
GO
INSERT INTO LDIdioma VALUES('Let�o') 
GO
INSERT INTO LDIdioma VALUES('Lituano') 
GO
INSERT INTO LDIdioma VALUES('Noruegu�s') 
GO
INSERT INTO LDIdioma VALUES('Polon�s') 
GO
INSERT INTO LDIdioma VALUES('Portugu�s') 
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
 
 INSERT INTO LDPais VALUES ('Afeganist�o') 
GO
INSERT INTO LDPais VALUES ('Alb�nia') 
GO
INSERT INTO LDPais VALUES ('Afeganist�o') 
GO
INSERT INTO LDPais VALUES ('Alb�nia') 
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
INSERT INTO LDPais VALUES ('Ant�rtida') 
GO
INSERT INTO LDPais VALUES ('Ant�gua e Barbuda') 
GO
INSERT INTO LDPais VALUES ('Argentina') 
GO
INSERT INTO LDPais VALUES ('Arg�lia') 
GO
INSERT INTO LDPais VALUES ('Arm�nia') 
GO
INSERT INTO LDPais VALUES ('Aruba') 
GO
INSERT INTO LDPais VALUES ('Ar�bia Saudita') 
GO
INSERT INTO LDPais VALUES ('Austr�lia') 
GO
INSERT INTO LDPais VALUES ('Azerbaij�o') 
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
INSERT INTO LDPais VALUES ('Bol�via') 
GO
INSERT INTO LDPais VALUES ('Botsuana') 
GO
INSERT INTO LDPais VALUES ('Brasil') 
GO
INSERT INTO LDPais VALUES ('Brunei') 
GO
INSERT INTO LDPais VALUES ('Bulg�ria') 
GO
INSERT INTO LDPais VALUES ('Burkina Faso') 
GO
INSERT INTO LDPais VALUES ('Burundi') 
GO
INSERT INTO LDPais VALUES ('But�o') 
GO
INSERT INTO LDPais VALUES ('B�lgica') 
GO
INSERT INTO LDPais VALUES ('B�snia e Herzegovina') 
GO
INSERT INTO LDPais VALUES ('Cabo Verde') 
GO
INSERT INTO LDPais VALUES ('Camar�es') 
GO
INSERT INTO LDPais VALUES ('Camboja') 
GO
INSERT INTO LDPais VALUES ('Canad�') 
GO
INSERT INTO LDPais VALUES ('Catar') 
GO
INSERT INTO LDPais VALUES ('Cazaquist�o') 
GO
INSERT INTO LDPais VALUES ('Chade') 
GO
INSERT INTO LDPais VALUES ('Chile') 
GO
INSERT INTO LDPais VALUES ('China') 
GO
INSERT INTO LDPais VALUES ('Chipre') 
GO
INSERT INTO LDPais VALUES ('Cidade do Vaticano (Santa S�)') 
GO
INSERT INTO LDPais VALUES ('Cingapura') 
GO
INSERT INTO LDPais VALUES ('Col�mbia') 
GO
INSERT INTO LDPais VALUES ('Comores') 
GO
INSERT INTO LDPais VALUES ('Congo') 
GO
INSERT INTO LDPais VALUES ('Congo, Rep�blica Popular do') 
GO
INSERT INTO LDPais VALUES ('Cor�ia') 
GO
INSERT INTO LDPais VALUES ('Cor�ia do Norte') 
GO
INSERT INTO LDPais VALUES ('Costa Rica') 
GO
INSERT INTO LDPais VALUES ('Costa do Marfim') 
GO
INSERT INTO LDPais VALUES ('Cro�cia (Hrvatska)') 
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
INSERT INTO LDPais VALUES ('Emirados �rabes Unidos') 
GO
INSERT INTO LDPais VALUES ('Equador') 
GO
INSERT INTO LDPais VALUES ('Eritr�ia') 
GO
INSERT INTO LDPais VALUES ('Eslov�quia') 
GO
INSERT INTO LDPais VALUES ('Eslov�nia') 
GO
INSERT INTO LDPais VALUES ('Espanha') 
GO
INSERT INTO LDPais VALUES ('Estados Unidos') 
GO
INSERT INTO LDPais VALUES ('Est�nia') 
GO
INSERT INTO LDPais VALUES ('Eti�pia') 
GO
INSERT INTO LDPais VALUES ('Fiji') 
GO
INSERT INTO LDPais VALUES ('Filipinas') 
GO
INSERT INTO LDPais VALUES ('Finl�ndia') 
GO
INSERT INTO LDPais VALUES ('Fran�a') 
GO
INSERT INTO LDPais VALUES ('Gab�o') 
GO
INSERT INTO LDPais VALUES ('Gana') 
GO
INSERT INTO LDPais VALUES ('Ge�rgia') 
GO
INSERT INTO LDPais VALUES ('Gibraltar') 
GO
INSERT INTO LDPais VALUES ('Grenada') 
GO
INSERT INTO LDPais VALUES ('Groenl�ndia') 
GO
INSERT INTO LDPais VALUES ('Gr�cia') 
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
INSERT INTO LDPais VALUES ('Guin�') 
GO
INSERT INTO LDPais VALUES ('Guin� Equatorial') 
GO
INSERT INTO LDPais VALUES ('Guin�-Bissau') 
GO
INSERT INTO LDPais VALUES ('G�mbia') 
GO
INSERT INTO LDPais VALUES ('Haiti') 
GO
INSERT INTO LDPais VALUES ('Holanda') 
GO
INSERT INTO LDPais VALUES ('Honduras') 
GO
INSERT INTO LDPais VALUES ('Hong Kong RAE, Rep�blica Popular da China') 
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
INSERT INTO LDPais VALUES ('Ilhas Faro�s') 
GO
INSERT INTO LDPais VALUES ('Ilhas Ge�rgia do Sul e Sandwich do Sul') 
GO
INSERT INTO LDPais VALUES ('Ilhas Heard e McDonald') 
GO
INSERT INTO LDPais VALUES ('Ilhas Malvinas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Marianas do Norte') 
GO
INSERT INTO LDPais VALUES ('Ilhas Marshall') 
GO
INSERT INTO LDPais VALUES ('Ilhas Salom�o') 
GO
INSERT INTO LDPais VALUES ('Ilhas Svalbard e Jan Mayen') 
GO
INSERT INTO LDPais VALUES ('Ilhas Turks e Caicos') 
GO
INSERT INTO LDPais VALUES ('Ilhas Virgens Americanas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Virgens Brit�nicas') 
GO
INSERT INTO LDPais VALUES ('Ilhas Wallis e Futuna') 
GO
INSERT INTO LDPais VALUES ('Indon�sia') 
GO
INSERT INTO LDPais VALUES ('Iraque') 
GO
INSERT INTO LDPais VALUES ('Irlanda') 
GO
INSERT INTO LDPais VALUES ('Ir�') 
GO
INSERT INTO LDPais VALUES ('Isl�ndia') 
GO
INSERT INTO LDPais VALUES ('Israel') 
GO
INSERT INTO LDPais VALUES ('It�lia') 
GO
INSERT INTO LDPais VALUES ('Iugosl�via') 
GO
INSERT INTO LDPais VALUES ('I�men') 
GO
INSERT INTO LDPais VALUES ('Jamaica') 
GO
INSERT INTO LDPais VALUES ('Jap�o') 
GO
INSERT INTO LDPais VALUES ('Jord�nia') 
GO
INSERT INTO LDPais VALUES ('Kiribati') 
GO
INSERT INTO LDPais VALUES ('Kuwait') 
GO
INSERT INTO LDPais VALUES ('Laos') 
GO
INSERT INTO LDPais VALUES ('Lesoto') 
GO
INSERT INTO LDPais VALUES ('Let�nia') 
GO
INSERT INTO LDPais VALUES ('Lib�ria') 
GO
INSERT INTO LDPais VALUES ('Liechtenstein') 
GO
INSERT INTO LDPais VALUES ('Litu�nia') 
GO
INSERT INTO LDPais VALUES ('Luxemburgo') 
GO
INSERT INTO LDPais VALUES ('L�bano') 
GO
INSERT INTO LDPais VALUES ('L�bia') 
GO
INSERT INTO LDPais VALUES ('Macau') 
GO
INSERT INTO LDPais VALUES ('Maced�nia') 
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
INSERT INTO LDPais VALUES ('Mal�sia') 
GO
INSERT INTO LDPais VALUES ('Marrocos') 
GO
INSERT INTO LDPais VALUES ('Martinica') 
GO
INSERT INTO LDPais VALUES ('Maurit�nia') 
GO
INSERT INTO LDPais VALUES ('Maur�cio') 
GO
INSERT INTO LDPais VALUES ('Mayotte') 
GO
INSERT INTO LDPais VALUES ('Micron�sia') 
GO
INSERT INTO LDPais VALUES ('Mold�via') 
GO
INSERT INTO LDPais VALUES ('Mong�lia') 
GO
INSERT INTO LDPais VALUES ('Montserrat') 
GO
INSERT INTO LDPais VALUES ('Mo�ambique') 
GO
INSERT INTO LDPais VALUES ('Myanma') 
GO
INSERT INTO LDPais VALUES ('M�xico') 
GO
INSERT INTO LDPais VALUES ('M�naco') 
GO
INSERT INTO LDPais VALUES ('Nam�bia') 
GO
INSERT INTO LDPais VALUES ('Nauru') 
GO
INSERT INTO LDPais VALUES ('Nepal') 
GO
INSERT INTO LDPais VALUES ('Nicar�gua') 
GO
INSERT INTO LDPais VALUES ('Nig�ria') 
GO
INSERT INTO LDPais VALUES ('Niue') 
GO
INSERT INTO LDPais VALUES ('Noruega') 
GO
INSERT INTO LDPais VALUES ('Nova Caled�nia') 
GO
INSERT INTO LDPais VALUES ('Nova Zel�ndia') 
GO
INSERT INTO LDPais VALUES ('N�ger') 
GO
INSERT INTO LDPais VALUES ('Om�') 
GO
INSERT INTO LDPais VALUES ('Palau') 
GO
INSERT INTO LDPais VALUES ('Panam�') 
GO
INSERT INTO LDPais VALUES ('Papua-Nova Guin�') 
GO
INSERT INTO LDPais VALUES ('Paquist�o') 
GO
INSERT INTO LDPais VALUES ('Paraguai') 
GO
INSERT INTO LDPais VALUES ('Peru') 
GO
INSERT INTO LDPais VALUES ('Pitcairn') 
GO
INSERT INTO LDPais VALUES ('Polin�sia Francesa') 
GO
INSERT INTO LDPais VALUES ('Pol�nia') 
GO
INSERT INTO LDPais VALUES ('Porto Rico') 
GO
INSERT INTO LDPais VALUES ('Portugal') 
GO
INSERT INTO LDPais VALUES ('Quirguist�o') 
GO
INSERT INTO LDPais VALUES ('Qu�nia') 
GO
INSERT INTO LDPais VALUES ('Reino Unido') 
GO
INSERT INTO LDPais VALUES ('Rep�blica Centro-Africana') 
GO
INSERT INTO LDPais VALUES ('Rep�blica Dominicana') 
GO
INSERT INTO LDPais VALUES ('Rep�blica Tcheca') 
GO
INSERT INTO LDPais VALUES ('Reuni�o') 
GO
INSERT INTO LDPais VALUES ('Rom�nia') 
GO
INSERT INTO LDPais VALUES ('Ruanda') 
GO
INSERT INTO LDPais VALUES ('R�ssia') 
GO
INSERT INTO LDPais VALUES ('Saint Kitts e N�vis') 
GO
INSERT INTO LDPais VALUES ('Samoa') 
GO
INSERT INTO LDPais VALUES ('Samoa Americana') 
GO
INSERT INTO LDPais VALUES ('San Marino') 
GO
INSERT INTO LDPais VALUES ('Santa Helena') 
GO
INSERT INTO LDPais VALUES ('Santa L�cia') 
GO
INSERT INTO LDPais VALUES ('Senegal') 
GO
INSERT INTO LDPais VALUES ('Serra Leoa') 
GO
INSERT INTO LDPais VALUES ('Seychelles') 
GO
INSERT INTO LDPais VALUES ('Som�lia') 
GO
INSERT INTO LDPais VALUES ('Sri Lanka') 
GO
INSERT INTO LDPais VALUES ('St. Pierre e Miquelon') 
GO
INSERT INTO LDPais VALUES ('Suazil�ndia') 
GO
INSERT INTO LDPais VALUES ('Sud�o') 
GO
INSERT INTO LDPais VALUES ('Suriname') 
GO
INSERT INTO LDPais VALUES ('Su�cia') 
GO
INSERT INTO LDPais VALUES ('Su��a') 
GO
INSERT INTO LDPais VALUES ('S�o Tom� e Pr�ncipe') 
GO
INSERT INTO LDPais VALUES ('S�o Vicente e Granadinas') 
GO
INSERT INTO LDPais VALUES ('S�ria') 
GO
INSERT INTO LDPais VALUES ('Tadjiquist�o') 
GO
INSERT INTO LDPais VALUES ('Tail�ndia') 
GO
INSERT INTO LDPais VALUES ('Taiwan') 
GO
INSERT INTO LDPais VALUES ('Tanz�nia') 
GO
INSERT INTO LDPais VALUES ('Territ�rio Brit�nico do Oceano �ndico') 
GO
INSERT INTO LDPais VALUES ('Territ�rios Franceses do Sul') 
GO
INSERT INTO LDPais VALUES ('Territ�rios Insulares dos EUA') 
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
INSERT INTO LDPais VALUES ('Tun�sia') 
GO
INSERT INTO LDPais VALUES ('Turcomenist�o') 
GO
INSERT INTO LDPais VALUES ('Turquia') 
GO
INSERT INTO LDPais VALUES ('Tuvalu') 
GO
INSERT INTO LDPais VALUES ('Ucr�nia') 
GO
INSERT INTO LDPais VALUES ('Uganda') 
GO
INSERT INTO LDPais VALUES ('Uruguai') 
GO
INSERT INTO LDPais VALUES ('Uzbequist�o') 
GO
INSERT INTO LDPais VALUES ('Vanuatu') 
GO
INSERT INTO LDPais VALUES ('Venezuela') 
GO
INSERT INTO LDPais VALUES ('Vietn�') 
GO
INSERT INTO LDPais VALUES ('Zimb�bue') 
GO
INSERT INTO LDPais VALUES ('Z�mbia') 
GO
INSERT INTO LDPais VALUES ('�frica do Sul') 
GO
INSERT INTO LDPais VALUES ('�ustria') 
GO
INSERT INTO LDPais VALUES ('�ndia') 
GO
 
 
 CREATE TABLE LDPeriodicidade (
        Periodo              varchar(100) NOT NULL
 )
go
 
 
 ALTER TABLE LDPeriodicidade
        ADD CONSTRAINT PKLDPeriodicidade PRIMARY KEY (Periodo)
go
 
 INSERT INTO LDPeriodicidade VALUES ('Di�rio') 
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
INSERT INTO LDResponsabilidade VALUES ('Cart�grafo') 
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
INSERT INTO LDResponsabilidade VALUES ('Fotogr�fo') 
Go
INSERT INTO LDResponsabilidade VALUES ('Ilustrador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Interprete') 
Go
INSERT INTO LDResponsabilidade VALUES ('Montagem') 
Go
INSERT INTO LDResponsabilidade VALUES ('M�sica') 
Go
INSERT INTO LDResponsabilidade VALUES ('Organizador ') 
Go
INSERT INTO LDResponsabilidade VALUES ('Orientador') 
Go
INSERT INTO LDResponsabilidade VALUES ('Outros secund�rios') 
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
 
 
 
