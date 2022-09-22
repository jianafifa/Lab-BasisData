-- create database db_praktikum

-- use db_praktikum

-- create table buku(
-- id_buku int auto_increment, 
-- judul varchar(255),
-- `tahun terbit` int,
-- pengarang varchar(255),
-- primary key(id_buku));

-- create table mahasiswa(
-- id_mahasiswa bigint unsigned auto_increment,
-- nama varchar(255),
-- nim varchar(10) not null,
-- unique(nim),
-- jk char(1),
-- primary key(id_mahasiswa));

-- create table pinjam(
-- id_pinjam int unsigned auto_increment,
-- tgl_pinjam datetime,
-- id_mahasiswa bigint unsigned,
-- id_book int,
-- status_pengembalian tinyint(1) default 0,
-- primary key(id_pinjam),
-- foreign key(id_book) references buku(id_buku),
-- foreign key(id_mahasiswa) references mahasiswa(id_mahasiswa));

-- desc pinjam








