CREATE DATABASE Networking
USE Networking
CREATE TABLE Posts(
Id int identity(1,1) PRIMARY KEY,
Content nvarchar(250),
Likecount int,
IsDeleted nvarchar(250)

)
INSERT INTO Posts(Content,Likecount,IsDeleted)
VALUES('PORTRET',1235,'SILNEN MESAJ')
SELECT * FROM Posts
CREATE TABLE Users(
Id int identity(1,1) PRIMARY KEY,
[Login] nvarchar(255) NOT NULL,
[Password] nvarchar(50) NOT NULL,
Mail nvarchar(60) NOT NULL UNIQUE,
PersonId int references People(Id)
)
INSERT INTO Users ([Login],[Password],Mail)
VALUES('Shemiamanov','Shemi123','as@sndjd')
SELECT * FROM Users
CREATE TABLE Commets(
Id int identity (1,1) PRIMARY KEY,
UserId int references Users(Id),
PostId int references Posts(Id),

)
--CREATE TABLE People(
--Id int identity (1,1) PRIMARY KEY,
--Name varchar(50)NOT NULL,
--Surname varchar(200) DEFAULT 'XXX',
--Age int NOT NULL
--)
--INSERT INTO People(Name,Surname,Age)
--VALUES('Semseddin','Amanov',19)
--SELECT *FROM People