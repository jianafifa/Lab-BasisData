USE classicmodels;

SELECT c.customerName, c.creditLimit-SUM(priceEach*quantityOrdered) AS 'total', 
case
when c.creditLimit-SUM(priceEach*quantityOrdered) > 0 then 'you are safe'
when c.creditLimit-SUM(priceEach*quantityOrdered) < 0 then 'you are in debt'
ELSE 'you are running out of credit'
END
AS 'are you safe?'
FROM customers c
INNER JOIN orders o
USING (customerNumber)
INNER JOIN orderdetails d
USING (orderNumber) 
GROUP BY customerNumber
;
