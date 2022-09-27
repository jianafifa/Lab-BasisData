-- SELECT * FROM offices WHERE city = 'San Francisco'
-- SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY orderLineNumber 
-- SELECT DISTINCT productLine FROM products
-- SELECT customerNumber noKonsumen, customerName namaKonsumer FROM customers WHERE customerNumber >= 100 && customerNumber <= 150

SELECT * FROM customers WHERE country != 'USA' AND creditLimit = 0 ORDER BY customerName LIMIT 9,19