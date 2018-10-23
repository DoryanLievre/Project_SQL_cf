-- Inscription ( users ) -- 

INSERT INTO users (mail, pass, nickname, date_inscription)  -- PERMET D AJOUTER UNE LIGNE 
	VALUES ("Philippe@coding.fr", "Pass", "Phillou", "2018-09-23 12:00:00");

-- Connexion ( users )

SELECT * FROM users WHERE mail = "Philippe@coding.fr" AND pass = "pass"; -- REQUETE :cherche dans la table users dans la colonne "mail" et "pass"
																		-- si la condition est respecté cela entraine une connexion  
