SELECT * FROM employees

# Nomor 1.
# menambahkan 3 orang employee baru pada tabel employees, 
# salah satu nama employee merupakan nama anda
INSERT INTO employees (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`)
VALUE
(1215, 'Shasa', 'Park', 'x1001', 'Shasa@classicmodelcars.com', '6', 1056, 'Sales Rep'),
(0909, 'Junkyu', 'Kim', 'x102', 'kimkyu@classicmodelcars.com', '7', 1102, 'Sales Rep'),
(1802, 'Junghwan', 'So', 'x207', 'kingcow@classicmodelcars.com', '4', 1621, 'Sales Rep');

  
# Nomor 2.
# membuat query untuk memindahkan karyawan berjabatan Sales rep
# dari kantor 4, ke kantor yang baru
INSERT INTO offices
VALUE ('9', 'Makassar', '+6282190632664', 'Belakang Ramsis', NULL, 'South Sulawesi', 'Indonesia', '90245', 'IDN');

UPDATE employees
SET `officeCode` = '9'
WHERE `officeCode` = '4' AND `jobTitle` = 'Sales Rep';