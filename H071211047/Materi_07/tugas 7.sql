use classicmodels;

-- nomor 1
-- select customerName as 'Pengguna', max(p.amount) as 'Pembayaran Terbesar', min(p.amount) as 'Pembayaran Terkecil'
-- from payments p
-- inner join customers c on c.customerNumber = p.customerNumber
-- where c.customerName in (
-- select customerName from customers)
-- group by customerName;

-- nomor 2
-- select officeCode, employeeNumber, concat(firstName, ' ', lastName) as 'Employee'  from employees
-- where officeCode = (
-- select officeCode FROM (
-- select officeCode, count(officeCode) as 'Employee' from employees
-- group by officeCode
-- order by 'Employee'
-- limit 1) as O);

-- nomor 3
-- select productName, productScale 
-- from products
-- where productName in (
-- select productName from products
-- where productName like "%Ford%");
    
-- nomor 4
-- SELECT c.customerName, CONCAT(e.firstName, " ", e.lastName) AS 'employeeName', o.orderNumber, d.priceEach*quantityOrdered AS 'biaya' FROM customers c
-- INNER JOIN employees e
-- ON C.salesRepEmployeeNumber = e.employeeNumber
-- INNER JOIN orders o
-- USING (customerNumber)
-- INNER JOIN orderdetails d
-- USING (orderNumber)
-- GROUP BY c.customerName, 'employeeName', o.orderNumber
-- ORDER BY 'biaya' DESC
-- LIMIT 1;

-- nomor 5
-- select distinct country, length(country) as 'lengthName' 
-- from customers
-- where length(country) = (
-- select max(length(country)) as 'Terpanjang' from customers)
-- or length(country) = (select min(length(country)) as 'Terpendek' from customers);