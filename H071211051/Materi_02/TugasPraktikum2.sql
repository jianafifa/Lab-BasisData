-- SELECT * FROM offices WHERE city='San Francisco';

-- SELECT * FROM orderdetails WHERE quantityOrdered>70 ORDER BY orderLineNumber ASC;

-- SELECT DISTINCT productLine FROM products;

-- SELECT customerNumber AS 'Nomor Customer', customerName AS 'Nama Customer' FROM customers WHERE customerNumber >100 AND customerName <150;

-- SELECT * FROM customers WHERE country != 'USA'AND creditLimit >0 ORDER BY customerName ASC LIMIT 10,10;

-- SELECT customerName AS 'Nama', country, creditLimit FROM customers WHERE creditLimit > 10000 AND creditLimit < 35000 ORDER BY creditLimit ASC ;

