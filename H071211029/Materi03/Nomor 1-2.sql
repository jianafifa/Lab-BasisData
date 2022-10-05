USE classicmodels;

-- nomor 1
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUE (1802, 'Anwar', 'Abd. Rafiq', 'x315', 'abd.rafiqanwar@gmail.com', '7', 1102, 'CEO'),
(1901, 'Zabri', 'Zabil', 'x031', 'zabilzabri@gmail.com', '4', 1002, 'Manager'),
(2013, 'Maulana', 'Salim', 'x181', 'salimaulana@gmail.com', '1', 1143, 'Director');

-- nomor 2
INSERT INTO offices
VALUE ('8', 'Makassar', '+6282196173315', 'FMIPA UNHAS', 'Lab DOP', '', 'Indonesia', '90243', 'UNHAS');

UPDATE employees 
SET officeCode = 8
WHERE jobTitle = 'Sales Rep' AND officeCode = '4';