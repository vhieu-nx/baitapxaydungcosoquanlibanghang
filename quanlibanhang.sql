use quanlibanhang;
create table Customer(
cID int primary key,
cName varchar(255),
cAge int 
);
create table OrderProduct(
oID int primary key,
cID int,
oDate date,
OtotalPrice float,
FOREIGN KEY(cID) REFERENCES Customer(cID)
);
create table Product(
pID int primary key,
pName varchar(45),
pPrice float
);
create table OrderDetail(
oID int,
pID int,
odQTY int,
FOREIGN KEY (oID) REFERENCES OrderProduct(oID),
FOREIGN KEY (pID) REFERENCES Product(pID)
);
INSERT INTO Customer(cID, cName ,cAge) VALUE('1','hieu2',18);
INSERT INTO Customer(cID, cName ,cAge) VALUE('2','hieu1',19);
INSERT INTO Customer(cID, cName ,cAge) VALUE('3','hieu3',20);
INSERT INTO OrderProduct(oID ,cID ,oDate ,OtotalPrice ) VALUE('1','1','2000/12/08',288888);
INSERT INTO OrderProduct(oID ,cID ,oDate ,OtotalPrice ) VALUE('2','2','2000/2/08',2882288);
INSERT INTO OrderProduct(oID ,cID ,oDate ,OtotalPrice ) VALUE('3','3','2000/3/08',288233);
INSERT INTO Product(pID ,pName ,pPrice ) VALUE('1','SMART PHONE Iphone 12',12000000);
INSERT INTO Product(pID ,pName ,pPrice ) VALUE('2','SMART PHONE OPPO',2000000);
INSERT INTO Product(pID ,pName ,pPrice ) VALUE('3','SMART PHONE VSMART',3000000);
INSERT INTO OrderDetail(oID ,pID ,odQTY ) VALUE('1','1',1);
INSERT INTO OrderDetail(oID ,pID ,odQTY ) VALUE('2','2',2);
INSERT INTO OrderDetail(oID ,pID ,odQTY ) VALUE('3','3',3);
select Orderdetail.oid,Orderdetail.odQTY,Product.pName,Product.pPrice from 
(OrderDetail
 INNER JOIN Product ON Product.pID = Orderdetail.pID);

