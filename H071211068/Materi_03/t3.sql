#no1
select * from employees;
insert into employees
values ('1003', 'Gabriel', 'Michael', 'x6123','mgb@classicmodelcars.com','3','1143', 'Sales Rep'),
	  ('1004', 'Sambo', 'Ferdy', 'x1000', 'fs@classicmodelcars.com', '1', '1143', 'VP'),
	  ('1005', 'Wati', 'Mega', 'x5231', 'mw@classicmodelcars.com', '2','1056', 'SPV');
#no2
select * from offices;
insert into offices values ('9','Konoha','+62812391251', '09 kiyowo', 'Level 6 impel down', 'marineford', 'japan', '1234', 'Marine');
update employees set officecode = '9' where officecode = '4' and jobtitle = 'Sales Rep';
#no3
select * from payments;
delete from payments where amount <10000;



-- use db_praktikum;
-- desc mahasiswa;
-- insert into mahasiswa (nim) values ("2312");
-- select * from mahasiswa
