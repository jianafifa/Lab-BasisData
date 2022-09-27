USE classicmodels;
-- nomor 1
SELECT * FROM offices WHERE city="San Francisco";
-- nomor 2
SELECT * FROM orderdetails
WHERE quantityOrdered > 70
ORDER BY orderLineNumber;
-- nomor 3
SELECT productLine from products;
-- nomor 4
select customerNumber AS nomerP, customerName AS namaP FROM customers
WHERE customerNumber between 100 AND 150;
-- nomor 5
SELECT * from customers
WHERE NOT country="USA" AND creditLimit = 0
ORDER BY customerName
LIMIT 9, 10;

-- soal tambahan
SELECT DISTINCT STATUS FROM orders;
SELECT * FROM orders WHERE status IN ('cancelled', 'ON hold', 'disputed')
order by shippedDate DESC;