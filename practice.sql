(1) CREATE DATABASE my_db;

(2)

(3) CREATE TABLE Persons
    (
	Id_P int,
	LastName varchar(255),
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255)
    )

(4) INSERT INTO Persons VALUES (1, 'Gates', 'Bill', 'Xuanwumen 10', 'Beijing')

(5) SELECT LastName, FirstName From Persons

(6) SELECT * FROM Persons WHERE City = 'Beijing'

(7) SELECT * FROM Persons WHERE (FirstName = 'Thomas' OR FirstName = 'William') 
    AND LastName = 'Carter'

(8) SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC

(9) CREATE TABLE Orders
    (
	Id_O int NOT NULL,
	OrderNo int NOT NULL,
	City varchar(255) DEFAULT 'Sandnes'
	Id_P int,
	PRIMARY KEY (Id_O),
	FOREIGN KEY (Id_P) REFERENCES Persons(Id_P),
	CHECK (Id_P>0)
    )

(10) UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing'
     WHERE LastName = 'Wilson'

(11) CREATE INDEX PersonIndex ON Person (LastName)
