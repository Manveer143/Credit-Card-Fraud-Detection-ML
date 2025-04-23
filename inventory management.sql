CREATE TABLE Catagories(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(100) NOT NULL
);
INSERT INTO CATAGORIES(CategoryID,CategoryName)
VALUES (1, 'Electronics');
INSERT INTO CATAGORIES (CategoryID,CategoryName)
VALUES (2, 'Furniture');
INSERT INTO CATAGORIES(CategoryID,CategoryName)
VALUES (3, 'Clothing');
CREATE TABLE Product(
PRODUCTID INT PRIMARY KEY,
PRODUCTNAME VARCHAR2(100) NOT NULL,
CategoryID INT,
Quantity INT DEFAULT 0,
Price DECIMAL(10, 2),  
FOREIGN KEY (CategoryID) REFERENCES CATAGORIES(CategoryID)
);
INSERT INTO Product (ProductID, ProductName, CategoryID, Quantity, Price) 
VALUES (1, 'Smartphone', 1, 50, 699.99);
INSERT INTO Product (ProductID, ProductName, CategoryID, Quantity, Price) 
VALUES (2, 'Laptop', 1, 30, 999.99);
INSERT INTO Product (ProductID, ProductName, CategoryID, Quantity, Price) 
VALUES (3, 'Sofa', 2, 20, 399.99);
INSERT INTO Product (ProductID, ProductName, CategoryID, Quantity, Price) 
VALUES (4, 'Television', 3, 100, 19.99);