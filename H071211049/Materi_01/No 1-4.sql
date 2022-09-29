use unhas;

-- no.1
create table offices(
officeCode varchar (10) not null,
city varchar (50) not null,
phone varchar (50) not null, 
addressline1 varchar (50) not null,
addressline2 varchar (50),
state varchar (50),
country varchar (50),
primary key (officeCode));

-- no. 2
alter table offices
modify column phone int (20);

-- no. 3
alter table offices
drop column addressline2;

-- no. 4
desc offices;


