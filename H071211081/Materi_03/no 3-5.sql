
-- NO.3
USE db_Praktikum;
INSERT INTO mahasiswa (nama, nim, jk, no_telp, email, alamat, keterangan)
VALUE 
	('Moh Muslih sahmat', 'H071211081', 'L', '082189172277', 'muslihsahmat@gmail.com', 'Tamalanrea,Damai ', 'Semester 3'),
	('Putri Aulia Nur Salsabila', 'H071211046', 'P', '082190632664', 'putrisalsabila@gmail.com', 'UNHAS', 'Semester 3'),
	('Febi Fiantika', 'H071211051', 'P', '0887435587359', 'febyfia@gmail.com', 'Makassar', 'Semester 3'),
	('Abd Rafiq Anwar', 'H071211023', 'L', '082196173315', 'abdulrafiq@gmail.com', 'Sudiang', 'Semester 3'),
	('Jihan Afifah Mirzani`', 'H071211047', 'P', '085280870129', 'jihan@gmail.com', 'Makassar', 'Semester 3'),
	('Stefany Frans Sarira', 'H071211049', 'P', '081242703204', 'stefany@gmail.com', 'Makassar', 'Semester 3'),
	('Martahan Mikhael Butar Butar', 'H071211007', 'L', '082190209684', 'martahan@gmail.com', 'Makassar', 'Semester 3'),
	('Moh salim maulana', 'H071211389', 'L', '081254498373', 'muhsalim@gmail.com', 'UNHAS', 'Semester 3'),
	('Andi Magfirah Inzani', 'H071211005', 'P', '081244279516', 'magfirah@gmail.com', 'Makassar', 'Semester 3'),
	('Michael Gabriel', 'H071211068', 'L', '081230004236', 'michael@gmail.com', 'Makassar', 'Semester 3'),
	('Andi Muhammad Iqbal', 'H071211032', 'L', '082290507134', 'iqbal@gmail.com', 'Makassar', 'Semester 5'),
	('Muhammad Nuril Muqit', 'H071211034', 'L', '082278297575', 'nurilmuqit@gmail.com', 'Hertasning', 'Semester 3');





--  No. 4
-- INSERT ke tabel buku
INSERT INTO buku 
VALUE
	 (1,'Sejarah golkar ', 1993, 'Megawati')
    (2, 'Banteng dalam Karung', 1937, 'Salim maulana'),
    (3, 'Samsudin SUPERMAN', 1991, 'Aqid bin khahlil'),
    (4, 'Surya dan Ilahi', 1951, 'Muh aqid suryana '),
    (5, 'Filosofi Badai Kebenaran', 2018, 'Hery Nuril');

-- INSERT ke tabel pinjam
INSERT INTO pinjam
VALUE
	(1, 2764, 1, '2022-10-10 08:31:00', 1),
   (2, 2765, 2, '2022-10-11 11:25:32', 0),
   (3, 2766, 3, '2022-10-13 09:32:19', 0),
   (4, 2767, 4, '2022-11-12 08:11:20', 1),
   (5, 2768, 5, '2022-11-27 10:19:15', 1);

--  No. 5
INSERT INTO mahasiswa (nama, nim, jk, no_telp, email, alamat, keterangan)
VALUE 
	('Azis Sofyan','','L',null, 'Aziszlh@gmail.com', 'Jl. Ahmad Yani No.54B', 'Semester 7'),
	('Royan Malik', null, 'L', '08922390109', 'Malik@gmail.com', 'Jl. Jeruk Bali No.8B', NULL);


