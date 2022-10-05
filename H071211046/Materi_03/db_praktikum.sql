SELECT * FROM mahasiswa
DESC mahasiswa

ALTER TABLE mahasiswa
MODIFY alamat VARCHAR(100)

ALTER TABLE mahasiswa
MODIFY email VARCHAR(50) NOT NULL

ALTER TABLE mahasiswa
MODIFY keterangan VARCHAR(20)

# Nomor 3.
SELECT * FROM  mahasiswa
INSERT INTO mahasiswa (nama, nim, jk, id_mahasiswa, no_telp, alamat, email, keterangan)
VALUES
	('Putri Aulia Nur Salsabila', 'H071211046', 'P', 1, '082190632664', 'Unhas', 'ptrslsbl1215@gmail.com', 'Semester 3'),
	('Febi Fiantika', 'H071211051', 'P', 2, '0887435587359', 'Makassar', 'febyyy@gmail.com', 'Semester 3'),
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

UPDATE mahasiswa
SET alamat = 'Gowa'
WHERE id_mahasiswa = 2;
UPDATE mahasiswa
SET email = 'abdrafiq19@gmail.com'
WHERE id_mahasiswa = 3;
UPDATE mahasiswa
SET alamat = 'Toraja', email = 'stefanyfrans7@gmail.com'
WHERE id_mahasiswa = 5;

# Nomor 4.
SELECT * FROM buku
INSERT INTO buku
VALUES
	('The Lion, the Witch and the Wardrobe', 1950, 'C.S. Lewis', 1),
    ('The Hobbit', 1937, 'J.R.R. Tolkien', 2),
    ('The Summer I Turned Pretty', 2009, 'Jenny Han', 3),
    ('Prince Caspian', 1951, 'C. S. Lewis', 4),
    ('Harry Potter and the Order of the Phoenix', 2003, 'J. K. Rowling', 5);

SELECT * FROM pinjaman
INSERT INTO pinjaman
VALUES
	('2022-09-24 09:37:00', 1, 1, 1, 1),
    ('2022-09-27 12:49:44', 2, 3, 1, 2),
    ('2022-09-29 14:08:09', 6, 4, 1, 3),
    ('2022-09-30 08:08:30', 3, 5, 1, 4),
    ('2022-10-01 16:09:40', 4, 2, 0, 5);

# Nomor 5.
DESC mahasiswa
SELECT * FROM mahasiswa
INSERT INTO mahasiswa(nama, nim, jk, no_telp, alamat, keterangan)
VALUE
		('Andi Magfirah Inzani', 'H071211070', 'P', '081244279516','BTP', 'Semester 3');

INSERT INTO mahasiswa(nama, nim, no_telp, email, alamat, keterangan)
VALUE
		('Andi Magfirah Inzani', 'H071211060','081244279516', 'magfirahinza@gmail.com', 'BTP', 'Semester 3');