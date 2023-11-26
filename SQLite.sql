-- Create a database
CREATE DATABASE myDatabase;

-- Use the created database
USE myDatabase;

-- Create tables
CREATE TABLE Customers (
    CustomerID int,
    CustomerName varchar(255),
    ContactName varchar(255),
    Country varchar(255),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
    OrderID int,
    CustomerID int,
    OrderDate date,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into tables
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES (1, 'Company A', 'Contact 1', 'Country A');

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES (1, 1, '2023-11-26');

-- Use JOIN to query data from both tables
SELECT Customers.CustomerName, Orders.OrderDate
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
