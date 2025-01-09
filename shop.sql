CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(100),
    Cuisine VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Dishes (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(100),
    RestaurantID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

INSERT INTO Restaurants (RestaurantID, Name, Cuisine, Location)
VALUES 
(1, 'Spicy Treats', 'Indian', 'Mumbai'),
(2, 'Urban Grill', 'Continental', 'Delhi'),
(3, 'Sushi World', 'Japanese', 'Bangalore');

INSERT INTO Dishes (DishID, DishName, RestaurantID, Price)
VALUES 
(101, 'Butter Chicken', 1, 350.00),
(102, 'Salad', 2, 250.00),
(103, 'Sushi Platter', 3, 600.00);

SELECT * FROM Restaurants;
SELECT * FROM Dishes;

SELECT Restaurants.Name AS RestaurantName, Dishes.DishName, Dishes.Price FROM Restaurants CROSS JOIN Dishes;

SELECT Dishes.DishName, Dishes.Price, Restaurants.Name AS RestaurantName, Restaurants.Cuisine
FROM Dishes
INNER JOIN Restaurants ON Dishes.RestaurantID = Restaurants.RestaurantID;



SELECT *  FROM Restaurants CROSS JOIN Dishes;
SELECT Restaurants.Name AS RestaurantName, Dishes.DishName FROM Restaurants CROSS JOIN Dishes;
SELECT COUNT(*) AS TotalCombinations FROM Restaurants CROSS JOIN Dishes;

SELECT * FROM Restaurants AS r INNER JOIN Dishes AS d ON r.RestaurantID = d.RestaurantID;
SELECT Restaurants.Name AS RestaurantName, Dishes.DishName FROM Restaurants INNER JOIN Dishes ON Restaurants.RestaurantID = Dishes.RestaurantID;
SELECT Restaurants.Name AS RestaurantName, AVG(Dishes.Price) AS AverageDishPrice FROM Restaurants INNER JOIN Dishes ON Restaurants.RestaurantID = Dishes.RestaurantID GROUP BY Restaurants.Name;





CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactInfo VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactInfo) VALUES
(1, 'Ganesh', 'ganesh@gmail.com'),
(2, 'Raju', 'raju43@gmail.com'),
(3, 'vishal', 'vishalv099@gmail.com');

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 50000.00),
(2, 'Smartphone', 10000.00),
(3, 'Headphones', 1200.00);

INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity) VALUES
(1, 1, 1, 2),  
(2, 1, 3, 1),  
(3, 2, 2, 1),  
(4, 3, 1, 1);  

SELECT C.CustomerName AS Customer,O.OrderID AS OrderID,P.ProductName AS Product FROM Customers AS C CROSS JOIN Orders AS O CROSS JOIN Products AS P;


SELECT C.CustomerName AS Customer,P.ProductName AS Product,O.Quantity AS Quantity,P.Price AS PricePerUnit,(O.Quantity * P.Price) AS TotalCost FROM Orders AS O INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID INNER JOIN Products AS P ON O.ProductID = P.ProductID;
