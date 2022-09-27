-- nomor 1
SELECT * FROM offices WHERE city = "San Francisco";

-- nomor 2
SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY orderLineNumber;

-- nomor 3
SELECT DISTINCT productline FROM products;

-- nomor 4
SELECT customerNumber 'nomorPelanggan', customerName 'namaPelanggan' FROM customers
WHERE customerNumber BETWEEN 100 AND 150;

-- nomor 5
SELECT * FROM customers WHERE country != 'USA' AND creditLimit = 0 ORDER BY customerName LIMIT 9,10;