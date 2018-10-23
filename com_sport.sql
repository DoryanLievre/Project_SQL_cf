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




 
 	







































 
    
    