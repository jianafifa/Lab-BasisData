#CREATE DATABASE TUGAS5;
#USE TUGAS5;
-- CREATE TABLE buku (
-- judul VARCHAR (255) , 
-- `tahun terbit` INT ,
-- pengarang VARCHAR (255) ,
-- id_buku INT PRIMARY KEY AUTO_INCREMENT
-- );
-- DESCRIBE buku;
-- CREATE TABLE mahasiswa (
-- nama VARCHAR (255) ,
-- nim VARCHAR (10) ,
-- jk CHAR (1) ,
-- id_mahasiswa BIGINT UNSIGNED PRIMARY KEY auto_increment ,
-- unique (nim)
-- );
-- ALTER TABLE mahasiswa modify nim VARCHAR (10) NOT NULL unique;
-- DESCRIBE mahasiswa;
CREATE TABLE pinjam (
tgl_pinjam datetime ,
id_mahasiswa BIGINT UNSIGNED ,
id_buku INT ,
status_pengembalian tinyint (1) default 0 ,
id_pinjam INT unsigned PRIMARY KEY auto_increment ,
foreign key (id_mahasiswa) references mahasiswa (id_mahasiswa),
foreign key (id_buku) references buku (id_buku)
);

