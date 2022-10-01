-- Nomor 1
DESCRIBE offices;
SELECT * FROM offices WHERE city = "San Francisco";

-- Nomor 2
DESCRIBE orderdetails;
SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY orderLineNumber ASC;

-- Nomor 3
DESCRIBE products;
SELECT DISTINCT productLine FROM products;

-- Nomor 4
DESCRIBE customers;
SELECT customerNumber AS 'nomor Customer', customerName AS 'nama Customer' FROM customers WHERE customerNumber > 100 AND customerNumber <150;

-- Nomor 5
SELECT * FROM customers WHERE country !="USA" AND creditLimit > 0 ORDER BY customerName ASC LIMIT 1,1;

-- Soal Tambahan
SELECT * FROM customers WHERE country = "USA" AND creditlimit < 30000 AND state iS NOT NULL ORDER BY creditlimit;