create database granadb;
use granadb;

create table tblStudent(
studentNumber INT(11) auto_increment primary key,
firstName VARCHAR(100),
lastName VARCHAR(100) not null,
middleName VARCHAR(100),
birthdate VARCHAR(20),
citizenship VARCHAR(50) comment "Example:Filipino,Nigerian,Korean",
gender VARCHAR(100) comment "Male or Female"
);

show full columns from tblStudent;

INSERT INTO tblStudent (studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
VALUES 
	(202014912,'STEVEN', 'ESPEDIDO','ROSALDO','2000-01-01','FILIPINO','MALE'),
    (202014165,'NINA KLARISSE', 'ULANGKAYA','AMBROSIO','2000-01-02','FILIPINO','FEMALE'),
    (202011535,'ADRIAN', 'CARRANZA','RUBIA','2000-01-03','FILIPINO','MALE'),
    (202011818,'JEAN', 'DACLES','RICO','2000-01-04','FILIPINO','FEMALE'),
    (202012336,'GILLIAN KYLE', 'CATAHAN','DIMAALA','2000-01-05','FILIPINO','MALE');
    select * from tblStudent; 
    
alter table tblStudent change gender sex VARCHAR(6);
alter table tblStudent change birthdate birthdate DATE;
alter table tblStudent change citizenship citizenship VARCHAR(20);
alter table tblStudent add age INT(3) after birthdate;
alter table tblStudent rename studentinfo;

show full columns from studentinfo;

select 
    upper(firstName) as firstName,
    upper(lastName) as lastName,
    upper(middleName) as middleName
from studentinfo;

select 
    studentNumber,
    firstName,
    lastName,
    middleName,
    birthdate,
    age,
    replace(citizenship, 'Filipino', 'Pinoy') as citizenship,
    sex
from studentinfo;

select
    studentNumber,
    concat(firstName, ' ', middleName, ' ', lastName) as FullName
from studentinfo;

select
	repeat(lastName, 5) as repeatedLastName
from studentinfo;

select 
	avg(age) as AverageAge
from studentinfo;

select 
    studentNumber,
    firstName,
    lastName,
    middleName,
    date_format(birthdate, '%M %d, %Y') as birthdate,
    age,
    citizenship,
    sex
from studentinfo;

select
	sex,
	count(*) as total
from studentinfo
group by sex;

select *
from studentinfo
order by lastName ASC;
