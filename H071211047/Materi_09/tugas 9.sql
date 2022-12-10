use classicmodels;
show variables like '%autocommit%';
set autocommit = 0;

-- no1
begin;
insert into orders 
VALUES 	(10550, "2003-11-10", "2003-04-10", "2003-01-31", "shipped", NULL, 467),
		(10429, "2003-09-17", "2003-12-10", "2003-02-14", "shipped", NULL, 762),
		(10650, "2003-08-29", "2003-03-25", "2003-07-07", "shipped", NULL, 189);
        
insert into orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES	(10550, "S02_7219", 27, 152.26, 2),
		(10429, "S03_2323", 32, 118.32 , 4),
		(10650, "S05_1027", 16, 27.88, 5);
        
commit;
-- select * from orderdetails;    
-- select * from orders;    

-- no2
begin;
delete from orderdetails;
rollback;