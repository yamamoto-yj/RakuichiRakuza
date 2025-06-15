CREATE TABLE GdCategory (
Id int IDENTITY(1,1) NOT NULL,
Code nvarchar(3) NOT NULL,	
Name nvarchar(30) NOT NULL,
InsDate datetime2(7) NOT NULL,
UpdDate datetime2(7) NULL,
WithdrawalDate datetime2(7) NULL,
UpdStaffId int NOT NULL
CONSTRAINT PK_GdCategory_Id PRIMARY KEY (Id), 
CONSTRAINT UQ_GdCategory_Code UNIQUE (Code) 
);
/*
datetime2
正確に書くとdatetime2(7)。
YYYY-MM-DD hh:mm:ss[.fractional seconds] という形式の日時の型。
小数点以下は7桁で、精度は100nsです。
(例) 2019-04-23 19:41:12.1234567 
*/

CREATE TABLE Goods (
Id int IDENTITY(1,1) NOT NULL,
Code nvarchar(13) NOT NULL,	
BarCode nvarchar(13) NULL,	
Name nvarchar(30) NOT NULL,
GdCateId1 int NULL,
GdCateId2 int NULL,
GdCateId3 int NULL,
ImageFile nvarchar(256) NULL,
Price decimal(9,0) NULL,
SalesPrice decimal(9,0) NULL,
Color nvarchar(5) NULL,
Size nvarchar(5) NULL,
StartDate datetime2(7) NULL,
SuspensionDate datetime2(7) NULL,
SalesStatus tinyint NOT NULL default 0,
Summary nvarchar(1000) NULL,
InsDate datetime2(7) NOT NULL DEFAULT CURRENT_TIMESTAMP,
UpdDate datetime2(7) NULL,
DelDate datetime2(7) NULL,
UpdStaffId int NOT NULL
CONSTRAINT PK_Goods_Id PRIMARY KEY (Id), 
CONSTRAINT UQ_Goods_Code UNIQUE (Code),
CONSTRAINT UQ_Goods_BarCode UNIQUE (BarCode)
);