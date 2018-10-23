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


-- PHILLIP Make's a new sport -- # STORY 6 
INSERT INTO service (id_users, name_service, postal_address_service, postal_code_service, city_service, time_service, complementary_info)
	VALUES 
			(27,'BADMINTON','3 rue Mangroove','75000','Paris','2018-10-25 12:00:00', "Nouveau prof, nouveau sprot, nouvel vie: tout est neuf!");

	
-- FOREIGN KEY FOR SERVICE --
	ALTER TABLE service
	 	ADD FOREIGN KEY(id_users) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE ;