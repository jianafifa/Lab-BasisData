CREATE TABLE offices(
officeCode varchar(10) not null,
city varchar(50) not null,
phone varchar(50) not null,
addressline1 varchar(50) not null,
addressline2 varchar(50),
state varchar(50),
country varchar(50) not null,
primary key(officeCode)
);

describe offices;
Alter table offices
modify column phone int(20) not null,
drop column addressline2;
describe offices;