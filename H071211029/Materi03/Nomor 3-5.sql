USE db_praktikum;

ALTER TABLE mahasiswa
MODIFY `no telp` VARCHAR (20) NOT NULL,
MODIFY alamat VARCHAR (100),
MODIFY email VARCHAR (50) NOT NULL,
MODIFY keterangan VARCHAR (20);

-- nomor 3
INSERT INTO mahasiswa 
VALUES ('Abd. Rafiq Anwar', 'H071211029', 'L', '029', '082196173315', 'abd.rafiqanwar@gmail.com', 'Jl. Dg. Ramang', 'Semester 3'),
('Febi Fiantika', 'H071211051', 'P', '051', '081355560258', 'febifiantika@gmail.com', 'MASOLO', 'Semester 3'),
('Muh. Salim Maulana', 'H071211019', 'L', '019', '082296920258', 'salimaulana@gmail.com', 'DUSUN HONTO', 'Semester 3'),
('Muh. Nuril Muqit', 'H071211034', 'L', '034', '082278297575', 'nurilmuqit@gmail.com', 'JLN. RSI. FAISAL XIV', 'Semester 3'),
('Putri Aulia', 'H071211046', 'P', '046', '082190632664', 'auliaputri@gmail.com', 'JL.SEJATI', 'Semester 3');

-- nomor 4
INSERT INTO buku VALUES
('Teknik Bermain Gitar', 1999, 'Famoya', 1),
('Lutung Kasarung', 2013, 'Ruhiyat S.', 2),
('Tindak Pidana Perdagangan Orang', 2017, 'Paul SinlaEloE', 3),
('Belantik', 2001, 'Ahmad Tohari', 4),
('Hujan Kepagian', 2011, 'Nugroho Notosusanto', 5);

INSERT INTO pinjam VALUES 
('2003-02-13', 28, 1, '', 13),
('2021-09-30', 29, 2, '', 9),
('2013-05-24', 28, 3, 1, 3),
('2016-04-02', 28, 4, '', 41),
('2019-06-19', 29, 5, 1, 56);

-- nomor 5
INSERT INTO mahasiswa (nama, nim, jk, id_mahasiswa, `no telp`, email, alamat, keterangan)
VALUES ('Rafiq', 'H071211029', 'L', 29, '082196173315', '', 'Jl. Dg. Ramang', 'Semester 3');
INSERT INTO mahasiswa (nama, nim, jk, id_mahasiswa, `no telp`, email, alamat)
VALUES ('Abdul', 'H071211028', 'L', 28, '082196173316', 'abd.rafiq@gmail.com', 'Jl. Ramang');