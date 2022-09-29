#no.1 
select *from offices where city="san francisco";

#no.2
select *from orderdetails where quantityOrdered>70 order by orderLineNumber desc;

#no.3
select distinct productLine from products;

#no.4
select customerNumber as NomorPelanggan, customerName as NamaPelanggan from customers where customerNumber >100 and customerNumber <150;

#no.5
select *from customers where country!="usa" and creditLimit= 0 order by customerName asc limit 9,10;
