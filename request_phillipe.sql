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