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
	 	--
	 	ALTER TABLE users_service
	 	ADD FOREIGN KEY(users_service) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE ;
	 	ALTER TABLE users_service
	 	ADD FOREIGN KEY(users_service) REFERENCES service(id) ON DELETE CASCADE ON UPDATE CASCADE ;

-- Supprime un users inscrit à un service -- # STORY 13

DELETE FROM users_service
WHERE id_users = 1 

-- Récupération d'historique -- # STORY 16

SELECT US.*, users.nickname, S.name_service, S.postal_address_service, S.postal_code_service, S.city_service, S.time_service, S.complementary_info,
(SELECT COUNT(US.id)
FROM users_service AS US 
INNER JOIN users 
ON US.id_users = users.id WHERE users.id = 27)
AS TOTAL 
FROM users_service AS US
INNER JOIN users 
ON users.id = US.id_users
LEFT JOIN service AS S
ON US.id_service = S.id 
WHERE US.id_users = 27 
ORDER BY S.time_service, S.city_service DESC,S.name_service ASC







