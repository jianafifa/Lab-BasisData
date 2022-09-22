-- CREATE DATABASE perpus

-- USE perpus

-- CREATE TABLE buku(
-- id_buku INT AUTO_INCREMENT PRIMARY KEY ,
-- judul VARCHAR (225),
-- `tahun terbit` INT,
-- pengarang VARCHAR (225)
-- )

-- DESCRIBE buku 

-- CREATE TABLE mahasiswa(
-- id_mahasiswa BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
-- nim VARCHAR (10) UNIQUE NOT NULL,
-- jk CHAR (1)
-- )

-- DESC mahasiswa

-- CREATE TABLE pinjam(
-- id_pinjam INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
-- tgl_pinjam DATETIME,
-- status_pengembalian TINYINT (1),
-- id_buku INT,
-- id_mahasiswa BIGINT UNSIGNED,
-- FOREIGN KEY (id_buku) REFERENCES buku (id_buku),
-- FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa (id_mahasiswa)
-- )
DESC PINJAM