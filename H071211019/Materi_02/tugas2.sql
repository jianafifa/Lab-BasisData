-- No. 1
SELECT * FROM offices WHERE city = 'San Francisco';

-- No. 2
SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY orderLineNumber ;

-- No. 3
SELECT DISTINCT productLine FROM products;

-- No. 4
SELECT customerNumber noKonsumen, customerName namaKonsumer FROM customers WHERE customerNumber BETWEEN 100 AND 150;

-- No. 5
SELECT * FROM customers WHERE country != 'USA' AND creditLimit = 0 ORDER BY customerName LIMIT 9,10;


-- Challenge
SELECT * FROM orderdetails WHERE productCode NOT LIKE 'S12%' ORDER BY quantityOrdered DESC, priceEach DESC;

SELECT * FROM customers WHERE state IS NULL;
