USE unhas;
-- nomor 1
CREATE TABLE offices(
	officeCode VARCHAR (10) NOT NULL,
	city VARCHAR (50) NOT NULL,
	phone VARCHAR (50) NOT NULL,
	addresline1 VARCHAR (50) NOT NULL,
	addresline2 VARCHAR (50),
	state VARCHAR (50),
	counrty VARCHAR (50) NOT NULL,
	PRIMARY KEY (officeCODE)
	);
-- nmor 2
DESC offices;
-- nmor 3
ALTER TABLE offices
MODIFY column phone INT (20);

DESC offices;
-- nomor 5
ALTER TABLE offices
DROP COLUMN addresline2;