-- USE classicmodels

-- No. 1
INSERT INTO employees (employeeNumber,lastName,firstName,extension,email, 
officeCode,reportsTo,jobTitle )
VALUE (2705, 'Aqid', 'Rifky', 'x32270', 'rifkyaqid@gmail.com',1, 1002, 'Programing'),
(2709, 'salim', 'maulana', 'x32290', 'aim@gmail.com',6, 1056, 'tuhanHimpunan'),
(2707, 'sahmat', 'Moh Muslih', 'x39270', 'Mohsahmat@gmail.com',7, 1143, 'Programing');


-- 
--  No. 2
INSERT INTO offices
VALUE ('8', 'Makassar', '+62 230 457 7561', 'Jl. A. Pettarani no. 42', NULL, NULL, 'Indonesia', '92211', 'ID')
UPDATE employees
SET officeCode = '8' WHERE jobTitle = 'Sales Rep' AND officeCode = '4';
