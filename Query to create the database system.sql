CREATE DATABASE Purple_Lane_Furniture_Store
USE Purple_Lane_Furniture_Store

--JAWABAN B

CREATE TABLE Customer(
    Customer_ID CHAR(5) PRIMARY KEY NOT NULL CHECK(Customer_ID LIKE 'CU[0-9][0-9][0-9]'),
    Customer_Name VARCHAR(50),
    Customer_Gender VARCHAR(10) CHECK(Customer_Gender LIKE 'Female' OR Customer_Gender LIKE 'Male'),
    Customer_Email VARCHAR(50) CHECK(Customer_Email LIKE '%@%'),
    Customer_PhoneNumber VARCHAR(14),
    Customer_Address VARCHAR(100)
)


CREATE TABLE Staff(
    Staff_ID CHAR(5) PRIMARY KEY NOT NULL CHECK(Staff_ID LIKE 'ST[0-9][0-9][0-9]'),
    Staff_Name VARCHAR(20),
    Staff_Gender VARCHAR(20) CHECK(Staff_Gender LIKE 'Male' OR Staff_Gender LIKE 'Female'),
    Staff_Email VARCHAR(50) CHECK(Staff_Email LIKE '%@purplelane.com'),
    Staff_PhoneNumber VARCHAR(13),
    Staff_Address VARCHAR(100),
    Staff_Salary INT CHECK(Staff_Salary BETWEEN 1000000 AND 25000000)
)

CREATE TABLE Supplier(
    Supplier_ID CHAR(5) PRIMARY KEY NOT NULL CHECK(Supplier_ID LIKE 'SU[0-9][0-9][0-9]'),
    Supplier_Name VARCHAR(20),
    Supplier_Address VARCHAR(100)
)

CREATE TABLE Product_Category(
    Furniture_Cat_ID CHAR(5) NOT NULL PRIMARY KEY CHECK(Furniture_Cat_ID LIKE 'PC[0-9][0-9][0-9]'),
    Furniture_Cat_Name VARCHAR(20)
)


CREATE TABLE Furniture_Inventory(
    Furniture_ID CHAR(5) NOT NULL PRIMARY KEY CHECK(Furniture_ID LIKE 'PR[0-9][0-9][0-9]'),
    Furniture_Cat_ID CHAR(5) NOT NULL FOREIGN KEY REFERENCES Product_Category(Furniture_Cat_ID),
    Furniture_Name VARCHAR(50),
    Furniture_Stock INT,
)

CREATE TABLE Sales_Transaction(
    Sales_ID CHAR(5) PRIMARY KEY NOT NULL CHECK(Sales_ID LIKE 'SA[0-9][0-9][0-9]') ,
	Customer_ID CHAR(5) NOT NULL FOREIGN KEY REFERENCES Customer(Customer_ID),
	Staff_ID CHAR(5) FOREIGN KEY REFERENCES Staff(Staff_ID)   
)

CREATE TABLE Purchase_Transaction(
    Purchase_ID CHAR(5) PRIMARY KEY CHECK(Purchase_ID LIKE 'PA[0-9][0-9][0-9]'),
    Supplier_ID CHAR(5) FOREIGN KEY REFERENCES Supplier(Supplier_ID),
	Staff_ID CHAR(5) FOREIGN KEY REFERENCES Staff(Staff_ID)
)

CREATE TABLE Detail_Transaction_Purchase(  
    Purchase_ID CHAR(5)  NOT NULL FOREIGN KEY REFERENCES Purchase_Transaction(Purchase_ID),
	Furniture_ID CHAR(5) NOT NULL FOREIGN KEY REFERENCES Furniture_Inventory(Furniture_ID),
	PRIMARY KEY(Purchase_ID,Furniture_ID),
    Purchase_Transaction_Date DATE,
    Furniture_Purchase_Quantity INT,
    Furniture_Purchase_Price INT
)

CREATE TABLE Detail_Transaction_Sales(
    Sales_ID CHAR(5) NOT NULL FOREIGN KEY REFERENCES Sales_Transaction(Sales_ID),
    Furniture_ID CHAR(5) NOT NULL FOREIGN KEY REFERENCES Furniture_Inventory(Furniture_ID),
	PRIMARY KEY(Sales_ID,Furniture_ID),
    Sales_Transaction_Date DATE,
    Furniture_Sales_Quantity INT,
    Furniture_Sales_Price INT
)
