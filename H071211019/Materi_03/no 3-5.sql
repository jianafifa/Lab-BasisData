# No. 3
USE dbPraktikum;
INSERT INTO mahasiswa (nama, nim, jk, no_telp, email, alamat, keterangan)
VALUE 
	('Muh. Salim Maulana', 'H071211019', 'L', '082189172246', 'salim.yaklu@gmail.com', 'Paopao, Gowa', 'Semester 3'),
	('Putri Aulia Nur Salsabila', 'H071211046', 'P', '082190632664', 'putrisalsabila@gmail.com', 'UNHAS', 'Semester 3'),
	('Febi Fiantika', 'H071211051', 'P', '0887435587359', 'febyfia@gmail.com', 'Makassar', 'Semester 3'),
	('Abd Rafiq Anwar', 'H071211023', 'L', '082196173315', 'abdulrafiq@gmail.com', 'Sudiang', 'Semester 3'),
	('Jihan Afifah Mirzani`', 'H071211047', 'P', '085280870129', 'jihan@gmail.com', 'Makassar', 'Semester 3'),
	('Stefany Frans Sarira', 'H071211049', 'P', '081242703204', 'stefany@gmail.com', 'Makassar', 'Semester 3'),
	('Martahan Mikhael Butar Butar', 'H071211007', 'L', '082190209684', 'martahan@gmail.com', 'Makassar', 'Semester 3'),
	('Moh Muslih Sahmat', 'H071211081', 'L', '081254498373', 'muslihsahmat@gmail.com', 'UNHAS', 'Semester 3'),
	('Andi Magfirah Inzani', 'H071211005', 'P', '081244279516', 'magfirah@gmail.com', 'Makassar', 'Semester 3'),
	('Michael Gabriel', 'H071211068', 'L', '081230004236', 'michael@gmail.com', 'Makassar', 'Semester 3'),
	('Andi Muhammad Iqbal', 'H071211032', 'L', '082290507134', 'iqbal@gmail.com', 'Makassar', 'Semester 5'),
	('Muhammad Nuril Muqit', 'H071211034', 'L', '082278297575', 'nurilmuqit@gmail.com', 'Hertasning', 'Semester 3');


# No. 4
INSERT INTO buku
VALUE
	(1, 'Sejarah Tuhan', 1993, 'Karen Amstrong'),
    (2, 'The Hobbit', 1937, 'J.R.R. Tolkien'),
    (3, 'Sophie World', 1991, 'Jostein Gaarder'),
    (4, 'Prince Caspian', 1951, 'C. S. Lewis'),
    (5, 'Filosofi Teras', 2018, 'Henry Manampiring');

INSERT INTO pinjam
VALUE
	(1, 1, 1, '2022-10-10 08:31:00', 1),
   (2, 12, 2, '2022-10-11 11:25:32', 0),
   (3, 7, 3, '2022-10-13 09:32:19', 0),
   (4, 3, 4, '2022-11-12 08:11:20', 1),
   (5, 10, 5, '2022-11-27 10:19:15', 1);

# No. 5
INSERT INTO mahasiswa (nama, nim, jk, no_telp, email, alamat, keterangan)
VALUE 
	('Azis Fikri', 'H071131012', 'L', NULL, 'fikrihzlh@gmail.com', 'Jl. Ahmad Yani No.54B', 'Semester 7'),
	('Abdul Malik', 'H071121014', 'L', '08922390101', 'abdmalik@gmail.com', 'Jl. Jeruk Bali No.8B', NULL);