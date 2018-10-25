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
 INSERT INTO service (name_service, postal_address_service, postal_code_service, city_service, time_service, complementary_info)

   VALUES -- CREATION DES SERVICE
  					('Judo','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Kayak','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Ji-jutsu','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Pancrate','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Base-ball','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Cricket','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Natation','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Athletisme','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Cyclisme','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Fitness','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL),
  					('Water-Polo','3 rue arbre','75000','Paris','2018-10-25 12:00:00', NULL);


 

-- FOREIGN KEY FOR SERVICE -- 

ALTER TABLE service
	 ADD FOREIGN KEY(id_users) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE ;

-- PHILLIP Make's a new sport -- # STORY 6 

INSERT INTO service (id_users, name_service, postal_address_service, postal_code_service, city_service, time_service, complementary_info)
	VALUES 
			(27,'BADMINTON','3 rue Mangroove','75000','Paris','2018-10-25 12:00:00', "Nouveau prof, nouveau sprot, nouvel vie: tout est neuf!");

	
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


-- Récupération des info du premier service auquel un user aura participé --  # STORY 17 

SELECT U.nickname as Suggest_user, U2.nickname as subscribe_user, S.name_service, S.postal_address_service, S.postal_code_service, S.city_service, S.time_service, S.complementary_info,
FROM service AS S 
INNER JOIN users as U ON U.id = S.id_users
LEFT JOIN users_service as SU ON SU.id_service = S.id 
LEFT JOIN users as U2 ON U2.id = SU.id_users 
WHERE SU.id_users = 27 
LIMIT 1 



 













