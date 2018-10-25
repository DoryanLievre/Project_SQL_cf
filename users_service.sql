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

SELECT U.nickname as Suggest_user, U2.nickname as subscribe_user, S.name_service, S.postal_address_service, S.postal_code_service, S.city_service, S.time_service, S.complementary_info,
(SELECT COUNT(id_service) FROM users_service WHERE id_users = 27) as TOTAL,
FROM service AS S 
INNER JOIN users as U ON U.id = S.id_users
LEFT JOIN users_service as SU ON SU.id_service = S.id 
LEFT JOIN users as U2 ON U2.id = SU.id_users 
WHERE SU.id_users = 27 
ORDER BY S.time_service, S.city_service DESC,S.name_service ASC







