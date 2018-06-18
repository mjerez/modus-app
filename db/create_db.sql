-- Database information

user: modusbox
pass: modusbox
db:   modusbox_db@localhost


-- Database creation script

create table Orders (
OrderID int primary key auto_increment,
PlacementDate datetime,
CustomerName varchar(200)
);

create table OrderItems (
OrderItemID int primary key auto_increment,
OrderID int,
ItemID int,
ItemCount int
);

create table Items (
ItemID int primary key auto_increment,
ItemName varchar(200),
ItemCost numeric (12,2)
);

insert into Orders (OrderID, PlacementDate, CustomerName)
values (1,now(),'Brandon Fox');

insert into Orders (OrderID, PlacementDate, CustomerName)
values (2,now(),'Jack Sparrow');

