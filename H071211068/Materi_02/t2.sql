#no 1
select * from offices where city = 'san francisco';
#no2
select * from orderdetails where quantityordered > 70 order by orderlinenumber;
#no3
select distinct productline from products;
#no4
select customerNumber as no_pelanggan, customername as pelanggan from customers
where customernumber between '100' and '150' ;
#no5
select * from customers 
where creditlimit = 0 and country != 'usa' order by customername limit 10,10