-- Database creation script

create table Orders (
OrderID int autoincremet,
PlacementDate datetime,
CustomerName varchar(200)
);

create table OrderItems (
OrderItemID int autoincrement,
OrderID int,
ItemID int,
ItemCount int
);

create table Items (
ItemID int autoincrement,
ItemName varchar(200),
ItemCost numeric (12,2)
);

insert into Orders (OrderID, PlacementDate, CustomerName)
values (1,now(),'Brandon Fox');


insert into Orders (OrderID, PlacementDate, CustomerName)
values (2,now(),'Jack Sparrow');

