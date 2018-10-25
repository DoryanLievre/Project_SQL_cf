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

 
-- Supprime un profil -- #Story 14

DELETE FROM users
WHERE id = 15;