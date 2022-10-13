USE classicmodels;

# No. 1
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle, reportsTo)
VALUE (2720, 'Maulana', 'Salim', 'x5491', 'salim.yaklu@gmail.com', '1', 'Marketing Manager', 1143),
(2721, 'Fitria', 'Intan', 'x5127', 'intanftrs@gmail.com', '2', 'VP Marketing', 1143),
(2722, 'Azis', 'Fikri', 'x5229', 'fikhizlah@gmail.com', '3', 'VP Sales', 1143);

SELECT * FROM employees;
DESC employees

# No. 2
SELECT * FROM offices;
INSERT INTO offices
VALUE ('8', 'Makassar', '+62 230 457 7561', 'Jl. A. Pettarani no. 42', NULL, NULL, 'Indonesia', '92211', 'ID')
UPDATE employees
SET officeCode = '8'
WHERE jobTitle = 'Sales Rep' AND officeCode = '4';