-- no. 1
select * from offices where city="San Francisco";

-- no. 2
select * from orderdetails 
where quantityOrdered > 70
order by orderLineNumber asc;

-- no. 3
select distinct productLine from products;

-- no. 4
select customerNumber nomorPelanggan, customerName namaPelanggan from customers
where customerNumber between 100 and 150;

-- no. 5
select * from customers 
where country !=("USA") and creditLimit=0
order by customerName asc
limit 10, 10;

select distinct productLine from products;

select productLine, buyprice, quantityInStock from products
where productLine not like '%cars%' and buyPrice > 50
order by quantityInStock desc
limit 5;


