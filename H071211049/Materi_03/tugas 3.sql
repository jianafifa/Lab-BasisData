-- no 1

use classicmodels;
desc employees;
select * from employees;
insert into employees
values (2803, "Ashley", "Vince", "x111", "vincashley@gmail.com", 3, 1076, "Sales Rep"), 
(2841, "Hall", "Garrett", "x112", "garretthall@gmail.com", 1, 1088, "Sales Rep"), 
(2860, "Sarira", "Stefany", "x113", "stefanysr@gmail.com", 1, 1102, "Sales Rep");

-- no 2

select * from offices;
insert into offices
values (8, 'Makassar', '+62 89012345678', 'Jl. Perintis Kemerdekaan KM 10 ', null, 'SulSel', 'INA', 90245, 'SEA');

-- soal sebelumnya: soal diganti karena versi MySQL tidak mendukung
update employees set officeCode = 8 
where jobTitle = 'Sales Rep' and officeCode = 4;

-- soal diganti: mengubah officeCode di mana employeeNumber bernilai 1056
select * from employees;
update employees set officeCode = 8
where employeeNumber =  1056 and officeCode = 1;

-- no 3

-- soal sebelumnya: soal diganti karena versi MySQL tidak mendukung
desc payments;
select amount from payments;
delete from payments where amount < 10000;

-- soal diganti: menghapus kolom di mana customerNumber bernilai 103
select * from payments
delete from payments where customerNumber=103;
