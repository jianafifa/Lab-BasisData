-- No 3
USE db_praktikum;
ALTER TABLE mahasiswa
ADD email VARCHAR (50) NOT NULL,
ADD keterangan VARCHAR (20);
DESC mahasiswa;

DELETE FROM mahasiswa
INSERT INTO mahasiswa (nama, nim, jk, id_mahasiswa, no_telp, alamat, email, keterangan)
VALUES ('Febi Fiantika', 'H071211051', 'P', 1, '0887435587359', 'Makassar', 'febyyy@gmail.com', 'Semester 3'),
		('Putri Aulia Nur Salsabila', 'H071211046', 'P', 2, '082190632664', 'Unhas', 'ptrslsbl1215@gmail.com', 'Semester 3'),
		('Abd Rafiq Anwar', 'H071211019', 'L', 3, '082196173315', 'Daya', 'abdul@gmail.com', 'Semester 3'),
		('Jihan Afifah Mirzani`', 'H071211047', 'P', 4, '085280870129', 'Makassar', 'jihan@gmail.com', 'Semester 3'),
		('Stefany Frans Sarira', 'H071211049', 'P', 5, '081242703204', 'Makassar', 'stefanyy@gmail.com', 'Semester 3'),
		('Martahan Mikhael', 'H071211007', 'L', 6, '082190209684', 'Makassar', 'martahanbutar@gmail.com', 'Semester 3'),
		('Moh Muslih Sahmat', 'H071211081', 'L', 7, '081254498373', 'Makassar', 'muslihsah@gmail.com', 'Semester 3'),
		('Andi Magfirah Inzani', 'H071211005', 'P', 8, '081244279516', 'BTP', 'magfirahinza@gmail.com', 'Semester 3'),
		('Muh Salim Maulana', 'H0712119', 'L', 9, '082189172246', 'Makassar', 'salimaulana@gmail.com', 'Semester 3'),
		('Michael Gabriel', 'H071211068', 'L', 10, '081230004236', 'Makassar', 'michael@gmail.com', 'Semester 3'),
		('Andi Muhammad Iqbal', 'H071211032', 'L', 11, '082290507134', 'Makassar', 'iqbal@gmail.com', 'Semester 3'),
		('Muhammad Nuril', 'H071211034', 'L', 12, '082278297575', 'Makassar', 'nurilmuh@gmail.com', 'Semester 3');

-- No 4
INSERT INTO buku
VALUE ('Bumi', 2014, 'Tere Liye', 1),
		('Bulan', 2015, 'Tere Liye', 2),
		('Matahari', 2016, 'Tere Liye', 3),
		('Bintang', 2017, 'Tere Liye', 4),
		('Ceros dan Batozar', 2018, 'Tere Liye', 5); 
SELECT * FROM buku;

-- No 5
SELECT * FROM mahasiswa
INSERT INTO mahasiswa(nama, nim, jk, id_mahasiswa, no_telp, alamat, email, keterangan)
VALUE ('Indah Kurnia Ilahi', 'H071211001', 'P', 13, '', 'Jl. Sahabat', 'indah@gmail.com', 'Semester 3'),
		('Wd Ananda Lesmono', 'H071211074', 'P', 14, '081236748765',NULL, 'nandaa@gmail.com', 'Semester 3');
		

