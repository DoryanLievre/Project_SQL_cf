-- ALL STORIES -- 

# STORY 1


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
	id_users int(10) UNSIGNED NULL DEFAULT NULL,
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
	date_and_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
)
ENGINE=INNODB DEFAULT CHARSET= 'utf8';



-- message -- # STORY 2 

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
	   
	    -- FOREIGN KEY For message -- 
	   
	    ALTER TABLE message
	 	ADD FOREIGN KEY(id_expeditor) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE ;
	 	ALTER TABLE message
	 	ADD FOREIGN KEY(id_receiver) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE ;



-- Inscription ( users ) -- # STORY 3 

INSERT INTO users (mail, pass, nickname, date_inscription)  -- PERMET D AJOUTER UNE LIGNE 
	VALUES ("Philippe@coding.fr", "Pass", "Phillou", "2018-09-23 12:00:00");

-- Connexion ( users )

SELECT * FROM users WHERE mail = "Philippe@coding.fr" AND pass = "pass"; -- REQUETE :cherche dans la table users dans la colonne "mail" et "pass"
																		-- si la condition est respecté cela entraine une connexion  
-- update in users -- # STORY 4

 UPDATE users
 
 SET postal_address = "55 rue de la carrotte", 
 	 postal_code = "75080",
 	 city = "Paris",
 	 state = "France",
 	 phone_number = "0698764532",
 	 fixe_number = "0187677569"
 WHERE id = 27

 ---------------------------------------------------------------------------------------------------------------------------------

 -- inscription phillipe au KRAV MAGA -- # STORY 5 


INSERT INTO users_service(id_service, id_users, date_time)

VALUES

	(10, 27, "2018-10-26 12:00:00");



-- PHILLIP Make's a new sport -- # STORY 6 

INSERT INTO service (id_users, name_service, postal_address_service, postal_code_service, city_service, time_service, complementary_info)
	VALUES 
			(27,'BADMINTON','3 rue Mangroove','75000','Paris','2018-10-25 12:00:00', "Nouveau prof, nouveau sprot, nouvel vie: tout est neuf!");


-- Message de Phillou -- # STORY 7 

INSERT INTO message (id_expeditor, id_receiver, message_content, date_and_time)
VALUES 
	 
		(18,27,	"Mdrrrrrr le badminchiotte c dla 2mer wlh, morray c pr les zoulettes! Archems","2018-10-25 12:00:00"),

		(27,18,	"Viens au parking, comme ça le badminton c'est pour les zoulettes?","2018-10-25 12:00:00");




-- affichage des diff mess reçu par un users -- # STORY 8 


SELECT * FROM message

	WHERE (id_receiver = 12) OR (id_expeditor = 12)

	ORDER BY date_and_time ASC;




-- AFFICHAGE D'UNE conversation -- # STORY 9

	SELECT * FROM message. 

	WHERE (id_expeditor = 18 AND id_receiver = 27) OR (id_expeditor = 27 AND id_receiver = 18)

	ORDER BY date_and_time ASC;


-- Search service in list -- # STORY 10 

SELECT S.id_users, S.name_service, S.postal_address_service, S.postal_code_service, S.city_service, S.time_service, S.complementary_info
FROM service as S
WHERE S.id NOT IN (SELECT id_service FROM users_service)
AND S.time_service > NOW();


-- Print service info -- # STORY 11 

SELECT S.*, U.nickname as Creators, U2.nickname as Subscribers
 -- S.* = all service tab, U.nickname =  nickname in users tab, U2.nickname = nickname in another new users tab --
FROM service as S
-- A partir de la tab le service -- 
INNER JOIN users as U ON U.id = S.id_users
-- 1 jointure ( interne ) entre  U.id & S.id_users --
LEFT JOIN users_service as SU ON SU.id_service = S.id 
-- 2 jointure ( externe ) entre SU.id_service & S.id --
LEFT JOIN users as U2 ON U2.id = SU.id_users 
-- 3 jointure ( externe ) entre U2.id & SU.id_users --


-- Supprime un service -- # STORY 12 


DELETE FROM service 
WHERE id =15  



-- Supprime un users inscrit à un service -- # STORY 13

DELETE FROM users_service
WHERE id_users = 1 



-- Supprime un profil -- # STORY 14

DELETE FROM users
WHERE id = 15;



-- Supprime un message -- # STORY 15 

DELETE FROM message
WHERE id = 6;


-- Récupération d'historique -- # STORY 16

SELECT U.nickname as Suggest_user, U2.nickname as subscribe_user, S.name_service, S.postal_address_service, S.postal_code_service, S.city_service, S.time_service, S.complementary_info,
(SELECT COUNT(id_service) FROM users_service WHERE id_users = 27) as TOTAL
FROM service AS S 
INNER JOIN users as U ON U.id = S.id_users
LEFT JOIN users_service as SU ON SU.id_service = S.id 
LEFT JOIN users as U2 ON U2.id = SU.id_users 
WHERE SU.id_users = 27 
ORDER BY S.time_service, S.city_service DESC,S.name_service ASC


-- Récupération des info du premier service auquel un user aura participé --  # STORY 17 

SELECT U.nickname as Suggest_user, U2.nickname as subscribe_user, S.name_service, S.postal_address_service, S.postal_code_service, S.city_service, S.time_service, S.complementary_info
FROM service AS S 
INNER JOIN users as U ON U.id = S.id_users
LEFT JOIN users_service as SU ON SU.id_service = S.id 
LEFT JOIN users as U2 ON U2.id = SU.id_users 
WHERE SU.id_users = 27
ORDER BY S.time_service, S.city_service DESC,S.name_service ASC 
LIMIT 1 


# STORY 18 

-- Subject no found error 404 .... --














