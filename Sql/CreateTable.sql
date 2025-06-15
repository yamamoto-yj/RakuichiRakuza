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