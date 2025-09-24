

 -- Create New Database E-Commerce --

CREATE DATABASE E_Commerce;   # Name of Database
USE E_Commerce;

-- Create Entitiys As E-commerce 
				
CREATE TABLE Customers (
    Customer_Id INT PRIMARY KEY AUTO_INCREMENT,
    Full_Name VARCHAR(100) NOT NULL,
    Contact BIGINT NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Address VARCHAR(100) NOT NULL
);

DESC Customers;   
ALTER TABLE Customers AUTO_INCREMENT=201;  --  Unique number to be generated automatically

CREATE TABLE Products (
    Product_Id INT PRIMARY KEY AUTO_INCREMENT,
    Product_Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Stock_quantity INT NOT NULL
);

DESC Products;        -- DESC helps to display the structure of a specified table 
ALTER TABLE Products AUTO_INCREMENT=111;  

CREATE TABLE Orders(
    Order_Id INT AUTO_INCREMENT PRIMARY KEY,      -- The starting value for AUTO_INCREMENT is Default 1
    Customer_Id INT NOT NULL, 
    Product_Id INT NOT NULL,
    Order_Date TIMESTAMP NOT NULL,   
    Amount DECIMAL(10,2) NOT NULL, 
    Payment_Type ENUM('UPI','CARD','CASH') NOT NULL,
    FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id) , FOREIGN KEY (Product_Id) REFERENCES Products(Product_Id) 
);

DESC Orders;

CREATE TABLE Payments (
    Payment_Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   
    Order_Id INT,                                         
    Payment_Date TIMESTAMP NOT NULL,                           
    Payment_Status ENUM('Paid', 'Unpaid','Cancelled') DEFAULT 'Cancelled', 
	FOREIGN KEY (Order_Id) REFERENCES Orders(Order_Id)    
);

DESC Payments;
ALTER TABLE Payments AUTO_INCREMENT=10001;














