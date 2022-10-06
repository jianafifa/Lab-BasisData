#use db_praktikum

-- alter table mahasiswa
-- modify no_telp varchar (20) not null,
-- modify Alamat varchar (100),
-- modify Email varchar (50) not null,
-- modify Keterangan varchar (20);

#no.3 Tambahkan data pada tabel mahasiswa dengan data nya adalah semua nama praktikan pada gb asistensi anda
#select *from mahasiswa

#desc mahasiswa;
insert into mahasiswa(nama, nim, jk, id_mahasiswa, no_telp, Email, alamat, keterangan) 
values 
('Andi Maghfirah Inzani', 'H071211005', 'P', '1', '08123456', 'firahinzani@gmail.com', 'Jl. Perintis', 'Semester 3'),
('Michael Gabriel', 'H071211068','L', '2', '0812345',  'miki@gmail.com', 'Jl. Perintis', 'Semester 3'),
( 'Febi Fiantika', 'H071211051','L', '3', '0812345',  'miki@gmail.com', 'Jl. Perintis', 'Semester 3'),
('inzani', 'H098765', 'L', 08764689, 'zani@gmail.com', 'btp', 'Semester 3'),
('ayu','H098700', 'L', '4', 08764689, 'zani@gmail.com', 'btp', 'Semester 3'),
( 'aul', 'H098709', 'L', '5', 087646, 'zani@gmail.com', 'btp', 'Semester 3');

#no.4 
insert into buku
value
('pergi', '2030', 'fira', '2'),
('pulang', 2031, 'rafi', '4'),
('masuk', 2033, 'ohfira', '5');
#select *from buku

insert into pinjam 
value 
('2003-03-03', 1, 1, 1, 1),
('2004-04-04', 2, 2, 1, 2),
('2004-05-05', 3, 3, 1, 3),
('2004-06-06', 4, 4, 1, 4),
('2004-07-08', 2, 2, 1, 5);
#select *from pinjam 

#no.5
#null
insert into mahasiswa (nama, nim, id_mahasiswa, no_telp, email, alamat, keterangan)
value 
('queen', 'H092376', 8, 34567, 'queen@gmail.com', 'btp', 'semester 3');

 #blank
insert into mahasiswa (nama, nim, jk, id_mahasiswa, no_telp, email, alamat, keterangan)
value 
('king', 'H67896', 'L', 10, '', 'king@gmail.com', 'bulan', 'semester 3');







