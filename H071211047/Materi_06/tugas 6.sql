USE classicmodels;
-- nomor 1
-- SELECT * FROM customers;
-- SELECT customerName AS 'Nama Pelanggan', SUM(amount) AS 'Total Belanja', creditLimit AS 'Batas Kredit', SUM(amount)-creditLimit AS 'Selisih' FROM customers
-- JOIN payments
-- ON payments.customerNumber = customers.customerNumber
-- GROUP BY customerName
-- HAVING SUM(amount) > creditLimit
-- ORDER BY SUM(amount)-creditLimit DESC
-- LIMIT 5;
-- 
-- nomor 2
-- SELECT concat (customerName, " : ", contactFirstName, contactLastName, " @", addressLine1) AS 'Pelanggan', sum(quantityOrdered) AS 'Jumlah Orderan' FROM customers AS C
-- JOIN orders AS O
-- ON O.customerNumber = C.customerNumber
-- JOIN orderdetails AS D
-- ON D.orderNumber = O.orderNumber
-- LIMIT 1;
-- WHERE C.customerNumber = 141;
-- 
-- nomor 3
-- select DATE_FORMAT(paymentDate,'%M %Y') 'Hari Pembayaran',
-- count(c.customerName) 'Jumlah Pelanggan',
-- group_concat(distinct c.customerName) 'List Pelanggan',
-- sum(p.amount) 'Jumlah Pembayaran' from payments p
-- inner join customers c on p.customerNumber = c.customerNumber
-- where month(paymentDate) = 02
-- group by `Hari Pembayaran`
-- order by `Jumlah Pembayaran` DESC;
-- 
-- nomor 4
-- select upper(productName) 'Nama Produk',count(distinct orderDate) as 'Jumlah di Order', group_concat(orderDate) as 'Waktu Orderan',
-- buyPrice 'Harga Beli',priceEach 'Harga Jual',sum(quantityOrdered) 'Total Jumlah Orderan',concat(o.priceEach*sum(quantityOrdered), ' - ',
-- buyPrice*sum(quantityOrdered), '= ', o.priceEach*sum(quantityOrdered)-buyPrice*sum(quantityOrdered)) as 'Pendapatan - Modal = Keuntungan'
-- from products
-- join orderdetails o on products.productCode = o.productCode
-- join orders o2 on o.orderNumber = o2.orderNumber
-- join customers c on o2.customerNumber = c.customerNumber
-- where productName like '%ferrari enz%'
-- group by productName, priceEach, buyPrice
-- having sum(o.priceEach*quantityOrdered)-sum(buyPrice*quantityOrdered) > 5000
-- order by sum(o.priceEach*quantityOrdered)-sum(buyPrice*quantityOrdered) DESC;

-- nomor 5
-- select offices.addressLine1 'Alamat', concat(left(offices.phone,char_length(offices.phone)-6),'* ****') 'Nomor Telp',
-- count(distinct e.firstName) as 'Jumlah Karyawan', count(distinct c.customerName) 'Jumlah Pelanggan', round(avg(amount),2) 'Rata-rata Penghasilan'
-- from offices
-- inner join employees e on offices.officeCode = e.officeCode
-- left join customers c on e.employeeNumber = c.salesRepEmployeeNumber
-- left join payments p on c.customerNumber = p.customerNumber
-- group by offices.phone, offices.addressLine1;