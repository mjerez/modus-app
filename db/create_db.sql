-- Database information

user: modusbox
pass: modusbox
db:   modusbox_db@localhost


-- Database creation script

use mule_db

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

insert into OrderItems (OrderID, OrderItemID, ItemID, ItemCount)
values (1,1,1,3);

insert into OrderItems (OrderID, OrderItemID, ItemID, ItemCount)
values (1,2,2,1);


insert into OrderItems (OrderID, OrderItemID, ItemID, ItemCount)
values (2,21,1,3);

insert into OrderItems (OrderID, OrderItemID, ItemID, ItemCount)
values (2,22,2,1);

insert into Items (ItemID, ItemName, ItemCost)
values (1,'Mule in Action', 59);

insert into Items (ItemID, ItemName, ItemCost)
values (2, 'Enterprise Patterns in Action', 49);

insert into Items (ItemID, ItemName, ItemCost)
values (3, 'Spring in Action',64.5);

insert into Items (ItemID, ItemName, ItemCost)
values (4, 'Learn to Drive Smart', 9.99);

