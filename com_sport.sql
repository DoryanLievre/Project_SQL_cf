-- SERVICE --


-- CREATE DATABASE com_sport CHARACTER SET 'utf8';

USE com_sport; 
--TABLE DE UTILISATEUR 
CREATE TABLE users ( 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- NOT NULL NOUS OBLIGE DE SPECIFIER LA VALEUR DE CETTE DONNEE
    mail VARCHAR (30) NOT NULL UNIQUE, -- UNIQUE REND UNE VARIABLE COMME LE PSEUDO UNIQUE : IL NE PEUT PAS Y AVOIR DEUX ENTREE IDENTIQUE	
    pass VARCHAR (30) NOT NULL,
    nickname VARCHAR (20) NOT NULL UNIQUE,
    postal_address VARCHAR (40) NULL DEFAULT NULL, -- NULL DEFAULT NULL PERMET DE NE PAS SPECIFIER LA VALEUR DE CETTE DONNEE (voir ligne 175)
    postal_code INT NULL DEFAULT NULL,
    city VARCHAR (40) NULL DEFAULT NULL,
    state VARCHAR (30) NULL DEFAULT NULL,
    phone_number VARCHAR (15)  NULL DEFAULT NULL,
    fixe_number VARCHAR (15) NULL DEFAULT NULL, 
    date_inscription date NOT NULL, 
    PRIMARY KEY (id) -- INDIQUE QUE LA CLE PRIMAIRE EST ID
    )
 ENGINE=INNODB DEFAULT CHARSET= 'utf8'; -- Type d'encodage pour les caractère

CREATE TABLE service ( -- TABLE DES SERVICE
	id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	id_users int(10) UNSIGNED NOT NULL,
	name_service varchar(45) NOT NULL,
	postal_address_service varchar(100) NOT NULL,
	postal_code_service varchar(10) NOT NULL,
	city_service varchar(28) NOT NULL,
	time_service date NOT NULL,
	complementary_info text NULL,
	PRIMARY KEY (id)
  )  
ENGINE=INNODB DEFAULT CHARSET= 'utf8'; 

CREATE TABLE users_service( -- TABLE UTILISATEUR + SERVICE 
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_service INT UNSIGNED NOT NULL,
	id_users INT UNSIGNED NOT NULL,
	date_time DATETIME NOT NUll,
	PRIMARY KEY (id)
)
ENGINE=INNODB DEFAULT CHARSET= 'utf8';

CREATE TABLE message( -- TABLE DES MESSAGES
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_expeditor INT UNSIGNED NOT NULL,
	id_receiver INT UNSIGNED NOT NULL,
	message_content TEXT,
	date_and_time DATE NOT NULL,
	PRIMARY KEY (id)
)
ENGINE=INNODB DEFAULT CHARSET= 'utf8';

-------------------------------------------------------------------------------------------------------------------------------------------

-- Users Request's   --

INSERT INTO users(mail, pass, nickname, postal_address, postal_code, city, state, phone_number, fixe_number, date_inscription) -- CREATION DES USERS
  
  VALUES
	    ('mica@coding.fr','Pass','Mica','22 rue des choux','75000','Paris','France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('paul@coding.fr','Pass','Paul','22 rue des choux','75000','Paris','France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('mamad@coding.fr','Pass','Mamad','22 rue des choux','75000','Paris','France',  '0678980310', '0123985674', ' 2018-10-25' ),
	  	('dodo@coding.fr','Pass','Dodo','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('hydri@coding.fr','Pass','Hydri','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('synax@coding.fr','Pass','Synax','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('esart@coding.fr','Pass','Easart','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('eashin@coding.fr','Pass','Eashin','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('hysdriss@coding.fr','Pass','Hysdriss','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('adronz@coding.fr','Pass','Adronz','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('shimya@coding.fr','Pass','Shimya','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('shirrey@coding.fr','Pass','Shirrey','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('mark@coding.fr','Pass','Mark','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('john@coding.fr','Pass','John','22 rue des choux','75000','Paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('steve@coding.fr','Pass','Steve','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('jacki@coding.fr','Pass','Jacki','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('roh2f@coding.fr','Pass','Roh2f','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('booba@coding.fr','Pass','Booba','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('fanette@coding.fr','Pass','Fanette','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('vanessa@coding.fr','Pass','Vanessa','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('clara@coding.fr','Pass','Clara','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('juliette@coding.fr','Pass','Juliette','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('dora@coding.fr','Pass','Dora','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('bruno@coding.fr','Pass','Bruno','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('shun-lee@coding.fr','Pass','Shun-Lee','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('takeda@coding.fr','Pass','Takeda','22 rue des choux','75000','Paris', 'France', '0678980310', '0123985674', ' 2018-10-25' );


--  Service request's --

INSERT INTO service (id_users, name_service, postal_address_service, postal_code_service, city_service, time_service, complementary_info)

   VALUES -- CREATION DES SERVICE

		(1,'Judo','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
		(2,'Wing Chung','3 rue branche','75000','Paris','2018-10-25 12:10:00', NULL),
		(3,'Kyo Ku Shin Kai','3 rue feuilles','75000','Paris','2018-10-25 12:20:00', NULL),
		(4,'Muay Thai','3 rue branche','75000','Paris','2018-10-25 12:10:00', NULL),
		(5,'Sambo','3 rue branche','75000','Paris','2018-10-25 12:10:00', NULL),
		(6,'Vietvodao','3 rue branche','75000','Paris','2018-10-25 12:10:00', NULL),
		(7,'Qi Kang','3 rue branche','75000','Paris','2018-10-25 12:10:00', NULL),
		(8,'CQC','3 rue branche','75000','Paris','2018-10-25 12:10:00', NULL),
		(9,'Senda','3 rue branche','75000','Paris','2018-10-25 12:10:00', 'Pas de jambes'),
		(10,'Kravmaga','3 rue branche','75000','Paris','2018-10-25 12:10:00', 'Pas de jambes'),
		(11, 'Tennis de table', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	   	(12, 'Basketball', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (13, 'Airsoft', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (14, 'Tir Sportif', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (15, 'Zumba', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (16, 'Aquabiking', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (17, 'Escalade', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (18, 'Patinage Artistique', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (19, 'Pétanque', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes'),
	    (20, 'Jet Kundo', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'Pas de jambes');

 -- Users service Request's -- 

 INSERT INTO users_service (id_service, id_users, date_time) -- ASSOCIATIONS DES TABLES USER ET SERVICE
 	
 	VALUES

	 	(17, 1, ' 2018-10-25 12:00:00'),
	 	(4, 2, ' 2018-10-25 12:00:00'),
	 	(16,3 , ' 2018-10-25 12:00:00'),
	 	(2,5 , ' 2018-10-25 12:00:00'),
	 	(3,23 , ' 2018-10-25 12:00:00'),
	 	(13,17, ' 2018-10-25 12:00:00'),
	 	(15,18 , ' 2018-10-25 12:00:00'),
	 	(19,11 , ' 2018-10-25 12:00:00'),
	 	(7,25 , ' 2018-10-25 12:00:00'),
	 	(20,24 , ' 2018-10-25 12:00:00');
 	

-- message -- 
INSERT INTO message (id_expeditor, id_receiver, message_content, date_and_time) -- MESSAGE ENVOYE ENTRE UTILISATEUR
																				
	VALUES 
		(1,25,	"Viens coding","2018-10-25 12:00:00"),
		(2,24,	"CC","2018-10-25 12:00:00"),
		(3,23,	"CC","2018-10-25 12:00:00"),
		(4,22,	"Yop","2018-10-25 12:00:00"),
		(5,21,	"Raton","2018-10-25 12:00:00"),
		(6,20,	"Bruh","2018-10-25 12:00:00"),
		(7,19,	"Pizza","2018-10-25 12:00:00"),
		(8,18,	"Tarte","2018-10-25 12:00:00"),
		(9,17,	"Patate","2018-10-25 12:00:00"),
		(10,16,	"Ouep","2018-10-25 12:00:00"),
		(11,15,	"Macbook","2018-10-25 12:00:00"),
		(12,14,	"Samsung","2018-10-25 12:00:00"),
		(13,13,	"Xiomi","2018-10-25 12:00:00"),
		(14,12,	"Steak frite","2018-10-25 12:00:00"),
		(15,11,	"Porte","2018-10-25 12:00:00"),
		(1,2, 'Heeeeey','2010-08-24 12:00:00'),
	    (12,23, 'Mange des groseille','2010-08-24 12:00:00'),
	    (14,21, 'Paye ton grec bg','2010-08-24 12:00:00'),
	    (13,25, 'Belle espadrille','2010-08-24 12:00:00'),
	    (17,5, 'Ya pas roller?','2010-08-24 12:00:00'),
	    (19,23, 'Un pigeon viens de me déféquer dessus','2010-08-24 12:00:00'),
	    (12,9, 'Je pourrais pas venir ce soir','2010-08-24 12:00:00'),
	    (10,16, 'BANZAAAAAAI','2010-08-24 12:00:00'),
	    (24,23, 'Tu crois que je peux rencontrer Vanessa','2010-08-24 12:00:00'),
	    (17,18, 'Mange pas indien kho, ca fais peter les plombage morray','2010-08-24 12:00:00'),
	    (17,3, 'Ramenez la bourse à la maison, allez le crous allez','2010-08-24 12:00:00'),
	    (1,20, 'BANZAAAAAAI','2010-08-24 12:00:00'),
	    (19,21, 'Le machou pichou cest chou ','2010-08-24 12:00:00'),
	    (19,24, 'Apres une seance je sens la alkamomie','2010-08-24 12:00:00'),
	    (8,11, 'Rugis Morty','2010-08-24 12:00:00'),
	    (6,7, 'Oui, oui je connais cette théorie','2010-08-24 12:00:00');

-- Inscription ( users ) -- 

INSERT INTO users (mail, pass, nickname, date_inscription)  -- PERMET D AJOUTER UNE LIGNE 
	VALUES ("Philippe@coding.fr", "Pass", "Phillou", "2018-09-23 12:00:00");

-- Connexion ( users )

SELECT * FROM users WHERE mail = "Philippe@coding.fr" AND pass = "pass"; -- REQUETE :cherche dans la table users dans la colonne "mail" et "pass"
																		-- si la condition est respecté cela entraine une connexion  




































 
    
    