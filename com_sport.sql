-- SERVICE --


-- CREATE DATABASE com_sport CHARACTER SET 'utf8';

USE com_sport; 
--TABLE DE UTILISATEUR 
CREATE TABLE users ( 
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, --NOT NULL NOUS OBLIGE DE SPECIFIER LA VALEUR DE CETTE DONNEE
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
    PRIMARY KEY (id) --INDIQUE QUE LA CLE PRIMAIRE EST ID
    )
 ENGINE=INNODB DEFAULT CHARSET= 'utf8'; -- Type d'encodage pour les caractère

CREATE TABLE service ( --TABLE DES SERVICE
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

CREATE TABLE users_service( --TABLE UTILISATEUR + SERVICE 
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_service INT UNSIGNED NOT NULL,
	id_users INT UNSIGNED NOT NULL,
	date_time DATETIME NOT NUll,
	PRIMARY KEY (id)
)
ENGINE=INNODB DEFAULT CHARSET= 'utf8';

CREATE TABLE message( --TABLE DES MESSAGES
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

INSERT INTO users(mail, pass, nickname, postal_address, postal_code, city, state, phone_number, fixe_number, date_inscription) --CREATION DES USERS
  
  VALUES
	    ('mica@coding.fr','pass','mica','22 rue des choux','75000','paris','France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('paul@coding.fr','pass','paul','22 rue des choux','75000','paris','France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('mamad@coding.fr','pass','mamad','22 rue des choux','75000','paris','France',  '0678980310', '0123985674', ' 2018-10-25' ),
	  	('dodo@coding.fr','pass','dodo','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('hydri@coding.fr','pass','hydri','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('synax@coding.fr','pass','synax','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('esart@coding.fr','pass','easart','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('eashin@coding.fr','pass','eashin','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('hysdriss@coding.fr','pass','hysdriss','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('adronz@coding.fr','pass','adronz','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('shimya@coding.fr','pass','shimya','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('shirrey@coding.fr','pass','shirrey','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('mark@coding.fr','pass','mark','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('john@coding.fr','pass','john','22 rue des choux','75000','paris', 'France','0678980310', '0123985674', ' 2018-10-25' ),
	  	('steve@coding.fr','pass','steve','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('jacki@coding.fr','pass','jacki','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('roh2f@coding.fr','pass','roh2f','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('booba@coding.fr','pass','booba','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('fanette@coding.fr','pass','fanette','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('vanessa@coding.fr','pass','vanessa','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('clara@coding.fr','pass','clara','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('juliette@coding.fr','pass','juliette','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('dora@coding.fr','pass','dora','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('bruno@coding.fr','pass','bruno','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('shun-lee@coding.fr','pass','shun-lee','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' ),
	  	('takeda@coding.fr','pass','takeda','22 rue des choux','75000','paris', 'France', '0678980310', '0123985674', ' 2018-10-25' );


--  Service request's --

INSERT INTO service (id_users, name_service, postal_address_service, postal_code_service, city_service, time_service, complementary_info)

   VALUES --CREATION DES SERVICE

		(1,'judo','3 rue arbre','75000','paris','2018-10-25 12:00:00', NULL),
		(2,'wing chung','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(3,'kyo ku shin kai','3 rue feuilles','75000','paris','2018-10-25 12:20:00', NULL),
		(4,'muay thai','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(5,'sambo','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(6,'vietvodao','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(7,'qi kang','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(8,'cqc','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(9,'senda','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(10,'kravmaga','3 rue branche','75000','paris','2018-10-25 12:10:00', NULL),
		(11, 'Tennis de table', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	   	(12, 'Basketball', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (13, 'Airsoft', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (14, 'Tir Sportif', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (15, 'Zumba', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (16, 'Aquabiking', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (17, 'Escalade', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (18, 'Patinage Artistique', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (19, 'Pétanque', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd'),
	    (20, 'Jet Kundo', '10 rue albert', '75000', 'Paris', '2018-10-25 12:00:00', 'abcd');

 -- Users service Request's -- 

 INSERT INTO users_service (id_service, id_users, date_time) --ASSOCIATIONS DES TABLES USER ET SERVICE
 	
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
INSERT INTO message (id_expeditor, id_receiver, message_content, date_and_time) --MESSAGE ENVOYE ENTRE UTILISATEUR
																				
	VALUES 
		(1,25,	"vien coding","2018-10-25 12:00:00"),
		(2,24,	"cc","2018-10-25 12:00:00"),
		(3,23,	"cc","2018-10-25 12:00:00"),
		(4,22,	"yop","2018-10-25 12:00:00"),
		(5,21,	"raton","2018-10-25 12:00:00"),
		(6,20,	"bruh","2018-10-25 12:00:00"),
		(7,19,	"pizza","2018-10-25 12:00:00"),
		(8,18,	"tarte","2018-10-25 12:00:00"),
		(9,17,	"patate","2018-10-25 12:00:00"),
		(10,16,	"ouep","2018-10-25 12:00:00"),
		(11,15,	"macbook","2018-10-25 12:00:00"),
		(12,14,	"samsung","2018-10-25 12:00:00"),
		(13,13,	"xiomi","2018-10-25 12:00:00"),
		(14,12,	"steak frite","2018-10-25 12:00:00"),
		(15,11,	"porte","2018-10-25 12:00:00"),
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

INSERT INTO users (mail, pass, nickname, date_inscription)  --PERMET D AJOUTER UNE LIGNE 
	VALUES ("Philippe@coding.fr", "pass", "Phillou", "2018-09-23 12:00:00");

-- Connexion ( users )

SELECT * FROM users WHERE mail = "Philippe@coding.fr" AND pass = "pass"; --REQUETE :cherche dans la table users dans la colonne "mail" et "pass"
																		--si la condition est respecté cela entraine une connexion  




































 
    
    