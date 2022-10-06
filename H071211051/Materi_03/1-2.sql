-- NO 1
INSERT INTO employees
VALUE (1129, "Fiantika", "Febi", "x200", "febifian23@gmail.com", 3, 1088, " Web Developer"),
		(1130, "Rombe", "Liska", "x200", "liska@gmail.com", 3, 1088, "Data Analyst"),
(		1131, "Unnisa", "Dhiyaa", "x200", "dhiyaa@gmail.com", 3, 1088, "Data Analyst");
SELECT * FROM employees;

-- NO 2
INSERT INTO offices
VALUE (8, 'Jakarta', '+6282187244763', 'Jl. Pulang', 'Jl. Pergi', 'DKI Jakarta', 'IND', '90753', 'ID');

UPDATE employees
SET officeCode = 8
WHERE officeCode = 4 AND jobTitle = 'Sales Rep';

SELECT * from employees


