select * from offices;
select * from offices where city="San Francisco";

select * from orderdetails 
where quantityOrdered > 70
order by orderLineNumber desc;

select productLine from products;

select customerNumber nomorPelanggan, customerName namaPelanggan from customers
where customerNumber between 100 and 150;

select * from customers 
where country not in ("USA") and creditLimit=0
order by customerName asc
limit 9, 10;

select distinct productLine from products;

select productLine, buyprice, quantityInStock from products
where productLine not like '%cars%' and buyPrice > 50
order by quantityInStock desc
limit 5;


