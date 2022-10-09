#use classicmodels
#SELECT * FROM classicmodels.employees;

#no.1 tambahkan 3 data pada tabel employee
insert into employees
value 
(2001, 'Maghfirah', 'Andi', 'x123', 'firauwaw@gmail.com', 6, 1619, 'Astronaut'),
(2002, 'Inzani', 'Maghfirah', 'x345', 'queenfira@yahoo.com', 5, 1612, 'Presidents wife'),
(2003, 'Saputra', 'Inzani',  'x567', 'firaart@sbd.com', 4, 1076, 'artist');

#no.2
insert into offices
value (8, 'Paris', '+623456', 'btp', 'antang', 'ma','France', 09876, 'EMEA');

update employees
set officeCode = 8
where officeCode= 4 and jobTitle='Sales Rep'
#select *from employees
