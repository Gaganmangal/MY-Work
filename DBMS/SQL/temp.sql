create database temp;
use temp;

create table Accounts(
id_acc int primary key auto_increment,
NAME varchar(255),
balances int not null default 0
-- constraint balances check(balances>1000) 
);

insert into Accounts
(Name,balances)values
('a',10000);

insert into Accounts
(Name)values
('m');


insert into Accounts
(Name,balances)values
('m',100000);

insert into Accounts
(Name,balances)values
('p',2000);


select * from accounts;

desc accounts;

drop table accounts;

-- Add new column
alter table accounts add account_no int not null;

-- MODIFY Change datatype of an attribute.
alter table accounts modify account_no double not null;

-- Rename column name
alter table accounts change column account_no number_acc double not null;

-- Drop a column completely
alter table accounts drop column number_acc;

-- Rename table name itself
alter table accounts rename account_ditales;