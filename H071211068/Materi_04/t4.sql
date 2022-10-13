-- no 1
select p.productName,p.productCode, o.orderDate
from products as p
inner join orderdetails as od 
on p.productCode = od.productCode
inner join orders as o
on od.orderNumber = o.orderNumber
where productName = "1940 Ford Pickup Truck" order by orderDate desc
-- no 2
select p.productName,p.productCode, od.priceEach,p.MSRP*0.8 as "80%.MSRP"
from products as p
inner join orderdetails as od
on p.productCode = od.productCode
where od.priceEach <80/100*p.MSRP
-- no 3
select m.id_mahasiswa, m.nama, m.nim, d.id_dosen, d.nip,d.nama
from ss_dosen as d
inner join ss_pembimbing as p
on d.id_dosen = p.id_pembimbing_utama 
inner join ss_mahasiswa as m
on m.id_mahasiswa = p.id_mahasiswa where m.nama = "Sulaeman"
-- no 4.1
alter table customers
add column status varchar (10);
-- no 4.2
update customers as c
inner join payments as p
on c.customernumber = p.customernumber
inner join orders as o
on c.customernumber = o.customernumber
inner join orderdetails as od
on o.ordernumber = od.ordernumber
set c.status = "VIP" where p.amount >100000 or od.quantityordered >=50 ;
-- no 4.3
update customers as c
set c.status = "Regular" where status is null;
-- no 5
alter table orderdetails 
drop constraint orderdetails_ibfk_1;

alter table orderdetails
add constraint ordedetails_ibfk_1 foreign key(ordernumber) references orders(ordernumber)
on delete cascade on update cascade;

alter table orders
drop constraint orders_ibfk_1;

alter table orders
add constraint orders_ibfk_1 foreign key(customernumber) references customers(customernumber)
on delete cascade on update cascade;

alter table payments
drop constraint payments_ibfk_1;

alter table payments
add constraint payments_ibfk_1 foreign key(customernumber) references customers(customernumber)
on delete cascade on update cascade;

DELETE customers,orders,orderdetails,payments
FROM customers
INNER JOIN Orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN Orderdetails
ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
WHERE orders.status = 'Cancelled';


