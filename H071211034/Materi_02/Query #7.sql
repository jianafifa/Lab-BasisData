-- nomor 1
SELECT * FROM offices WHERE city ='San Francisco';

-- nomor 2
SELECT * FROM orderdetails WHERE quantityOrdered >70 ORDER BY OrderLineNumber ASC;

-- nomor 3
SELECT DISTINCT productLine FROM products;

-- nomor 4
SELECT customerNumber AS 'Nomor Konsumen' , customerName AS 'Nama Konsumen' FROM customers WHERE customerNumber BETWEEN 100 AND 150;

-- nomor 5
SELECT * FROM customers WHERE creditLimit =0 AND country !='USA' ORDER BY customerName LIMIT 9,10;

-- quis
SELECT * FROM orders WHERE orderDate >'2003-11-30' AND orderdate <'2004-01-01' AND STATUS ='Shipped' ORDER BY ordernumber DESC LIMIT 5;