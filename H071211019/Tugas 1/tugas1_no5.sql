-- CREATE DATABASE db_praktikum;
-- USE db_praktikum;

-- CREATE TABLE buku (
-- 	id_buku INT AUTO_INCREMENT,
-- 	judul VARCHAR(225),
-- 	`tahun terbit` INT,
-- 	pengarang VARCHAR(225),
-- 	PRIMARY KEY(id_buku)
-- );
-- 
-- CREATE TABLE mahasiswa (
-- 	id_mahasiswa BIGINT UNSIGNED AUTO_INCREMENT,
-- 	nama VARCHAR(225),
-- 	nim VARCHAR(10) UNIQUE NOT NULL,
-- 	jk CHAR(1),
-- 	PRIMARY KEY(id_mahasiswa)
-- 	
-- );

-- CREATE TABLE pinjam (
-- 	id_pinjam INT UNSIGNED AUTO_INCREMENT,
-- 	id_buku INT,
-- 	id_mahasiswa BIGINT UNSIGNED,
-- 	tgl_pinjam DATE,
-- 	status_pengembalian TINYINT(1) DEFAULT 0,
-- 	PRIMARY KEY(id_pinjam),
-- 	FOREIGN KEY (id_buku) REFERENCES buku(id_buku),
-- 	FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa)
-- );
-- 
-- DROP DATABASE db_praktikum;

	