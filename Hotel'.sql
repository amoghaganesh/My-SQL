	create database 24aug;
create database amogh;
create table sports(id int, sp_name varchar(50),no_of_players int,sal bigint);
drop database amogh;

create database ganesh;
CREATE TABLE Students (studentID INT,FirstName VARCHAR(50),LastName VARCHAR(50),Age INT);

drop table sports;


CREATE TABLE Sports (
    SportID INT ,
    SportName VARCHAR(50),
    Players INT,
    OriginCountry VARCHAR(50),
    OlympicSport BOOLEAN
);

ALTER TABLE Sports ADD PopularityRank INT;
ALTER TABLE Sports ADD EquipmentRequired VARCHAR(100);
ALTER TABLE Sports ADD IndoorOutdoor VARCHAR(20);
ALTER TABLE Sports ADD MajorLeague VARCHAR(50);
ALTER TABLE Sports ADD AverageDuration INT;

ALTER TABLE Sports DROP COLUMN EquipmentRequired;
ALTER TABLE Sports DROP COLUMN MajorLeague;

INSERT INTO Sports VALUES 
(1, 'Soccer', 11, 'England', TRUE, 1, 'Outdoor', 90),
(2, 'Basketball', 5, 'USA', TRUE, 2, 'Indoor', 48),
(3, 'Cricket', 11, 'England', TRUE, 3, 'Outdoor', 300),
(4, 'Tennis', 2, 'France', TRUE, 4, 'Outdoor', 120),
(5, 'Badminton', 2, 'India', TRUE, 5, 'Indoor', 45),
(6, 'Baseball', 9, 'USA', TRUE, 6, 'Outdoor', 180),
(7, 'Rugby', 15, 'UK', TRUE, 7, 'Outdoor', 80),
(8, 'Table Tennis', 2, 'England', TRUE, 8, 'Indoor', 30),
(9, 'Hockey', 11, 'India', TRUE, 9, 'Outdoor', 70),
(10, 'Volleyball', 6, 'USA', TRUE, 10, 'Indoor', 60);



CREATE TABLE Cars (
    CarID INT ,
    CarName VARCHAR(50),
    Manufacturer VARCHAR(50),
    YearManufactured INT,
    Price bigint
);

ALTER TABLE Cars ADD EngineType VARCHAR(50);
ALTER TABLE Cars ADD FuelEfficiency DECIMAL(5, 2);
ALTER TABLE Cars ADD TopSpeed INT;
ALTER TABLE Cars ADD Color VARCHAR(30);
ALTER TABLE Cars ADD TransmissionType VARCHAR(50);

ALTER TABLE Cars DROP COLUMN TopSpeed;
ALTER TABLE Cars DROP COLUMN TransmissionType;

INSERT INTO Cars VALUES 
(1, 'Model S', 'Tesla', 2020, 79999.99, 'Electric', 120.0, 'Red'),
(2, 'Mustang', 'Ford', 2019, 55999.99, 'V8', 25.0, 'Blue'),
(3, 'Civic', 'Honda', 2018, 22999.99, 'I4', 32.0, 'Black'),
(4, 'Corolla', 'Toyota', 2020, 19999.99, 'I4', 30.0, 'White'),
(5, 'Camry', 'Toyota', 2021, 24999.99, 'I4', 28.0, 'Silver'),
(6, 'Model 3', 'Tesla', 2021, 39999.99, 'Electric', 140.0, 'Red'),
(7, 'Challenger', 'Dodge', 2017, 47999.99, 'V8', 20.0, 'Black'),
(8, 'Accord', 'Honda', 2019, 27999.99, 'I4', 30.0, 'Blue'),
(9, 'Explorer', 'Ford', 2020, 32999.99, 'V6', 22.0, 'White'),
(10, 'Altima', 'Nissan', 2018, 23999.99, 'I4', 33.0, 'Grey');


select * from sports;
select * from cars;


SELECT * FROM Sports WHERE SportName IN ('Soccer', 'Tennis', 'Basketball');
SELECT * FROM Cars WHERE Price BETWEEN 20000 AND 50000;


drop table sports;

CREATE TABLE Bank (
    BankID INT,
    BankName VARCHAR(50),
    BranchName VARCHAR(50),
    Location VARCHAR(100),
    EstablishedYear INT
);

CREATE TABLE Customer (
    CustomerID INT,
    CustomerName VARCHAR(50),
    BankID INT,
    ContactNumber VARCHAR(15),
    Address VARCHAR(100)
);

CREATE TABLE LoanDetail (
    LoanID INT,
    CustomerID INT,
    BankID INT,
    LoanAmount DECIMAL(10, 2),
    LoanType VARCHAR(50),
    LoanDate DATE
);

CREATE TABLE Insurance (
    PolicyID INT,
    CustomerID INT,
    BankID INT,
    InsuranceType VARCHAR(50),
    PremiumAmount DECIMAL(10, 2),
    StartDate DATE
);

INSERT INTO Bank VALUES
(1, 'union', 'gandhi nagar', 'banglore', 1990),
(2, 'canara', 'mg road', 'bellary', 1985),
(3, 'hdfc', 'rr nagar', 'hospet', 2000),
(4, 'BOB', 'jp nagar', 'koppal', 1995),
(5, 'icici', 'majestic', 'tumkur', 1980),
(6, 'andhra', 'sudha cross', 'hassan', 1975),
(7, 'pkgb', 'talur road', 'durga', 2005),
(8, 'karnataka', 'basaveshwara', 'udupi', 2010),
(9, 'sbi', 'rajajinagar', 'hubli', 1960),
(10, 'sbm', 'brigade', 'mandya', 1988);

select * from Bank;

insert into customer values 
(1001, 'Amogha',1,6361607266,'mg road'),
(1002, 'Ganesh',10,94832435432,'rr nagar'),
(1003, 'manoj',4,93495923543,'mjestic'),
(1004, 'bheemesh',2,3554653635,'parvathinagar'),
(1005, 'suraj',9,9358745834,'jp nagar'),
(1006, 'aravind',8,9235845724,'kappagal'),
(1007, 'rajesh',6,83258594323,'gandhi nagar'),
(1008, 'manju',3,73248325823,'brucpet'),
(1009, 'raghu',2,93472352434,'ap road'),
(1010, 'umesh',5,83248325243,'rajajinagar');

select * from customer;

insert into LoanDetail values
(2001,1001, 1,10000,'home loan'),
(2002,1004, 6,30000,'car'),
(2003,1002, 3,40000,'health'),
(2004,1003, 2,50000,'vehicle'),
(2005,1007, 9,60000,'home loan'),
(2006,1022, 11,70000,'car'),
(2007,1011, 22,80000,'home loan'),
(2008,1044, 33,90000,'health'),
(2009,1033, 44,44000,'property'),
(2010,1055, 66,20000,'business');

select * from LoanDetail;

insert into Insurance values
(3001,1001,1,'life',2000,'2020-01-02'),
(3002,1003,4,'home',5000,'2019-11-12'),
(3003,1005,5,'vehicle',2000,'2024-02-23'),
(3004,1007,6,'property',6000,'2023-02-21'),
(3005,1004,3,'business',7000,'2022-08-12'),
(3006,1002,23,'life',2300,'2020-09-15'),
(3007,1023,12,'home',7000,'2021-08-07'),
(3008,1043,42,'car',9000,'2018-07-09'),
(3009,1053,12,'life',8000,'2002-02-14'),
(3010,1063,9,'business',1000,'2023-04-30'); 

select * from Insurance;

SELECT * FROM Insurance WHERE CustomerID IN (1001, 1003, 1005);
SELECT * FROM Insurance WHERE CustomerID NOT IN (3002, 3004, 3006);
SELECT * FROM Insurance WHERE PremiumAmount BETWEEN 2000 AND 7000;
SELECT * FROM Insurance WHERE InsuranceType LIKE 'b%';

SELECT * FROM Insurance WHERE PremiumAmount > 1500;
SELECT * FROM Insurance WHERE PremiumAmount < 1500;
SELECT * FROM Insurance WHERE PremiumAmount <= 1500;
SELECT * FROM Insurance WHERE PremiumAmount >= 1500;
SELECT * FROM Insurance WHERE PremiumAmount > 10000 AND InsuranceType = 'Life';
SELECT PolicyID AS 'Policy Number', PremiumAmount AS 'Premium' FROM Insurance;

SELECT * FROM Insurance WHERE PremiumAmount > 1000 OR InsuranceType = 'home';
SELECT * FROM Insurance WHERE NOT (PremiumAmount > 1500);
SELECT * FROM Insurance ORDER BY PremiumAmount DESC;

SELECT MIN(PremiumAmount) AS 'Minimum Premium' FROM Insurance;
SELECT MAX(PremiumAmount) AS 'Maximum Premium' FROM Insurance;
SELECT COUNT(*) AS 'Total Policies' FROM Insurance;
SELECT SUM(PremiumAmount) AS 'Total Premium Amount' FROM Insurance;
SELECT AVG(PremiumAmount) AS 'Average Premium' FROM Insurance;




CREATE TABLE HotelGuests (
    GuestID INT PRIMARY KEY,
    GuestName VARCHAR(50),
    RoomNumber INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    RoomType VARCHAR(20),
    TotalBill DECIMAL(10, 2),
    Rating INT,
    Feedback VARCHAR(100),
    VIPStatus BOOLEAN
);


INSERT INTO HotelGuests VALUES 
(1, 'Bheemesh', 101, '2025-01-01', '2025-01-05', 'Deluxe', 7500.00, 5, 'Excellent service', TRUE),
(2, 'Suraj', 102, '2025-01-02', '2025-01-06', 'Standard', 4500.00, 4, 'Very good', FALSE),
(3, 'Rahul ', 103, '2025-01-03', '2025-01-07', 'Suite', 15000.00, 5, 'Luxurious stay', TRUE),
(4, 'Nikhil', 104, '2025-01-01', '2025-01-04', 'Standard', 4000.00, 3, 'Average', FALSE),
(5, 'Manoj', 105, '2025-01-02', '2025-01-05', 'Deluxe', 8000.00, 4, 'Good value', TRUE),
(6, 'Gagan', 106, '2025-01-03', '2025-01-08', 'Suite', 18000.00, 5, 'Amazing experience', TRUE),
(7, 'Ajmal', 107, '2025-01-04', '2025-01-09', 'Standard', 3700.00, 3, 'Okay', FALSE),
(8, 'Ganesh', 108, '2025-01-01', '2025-01-06', 'Deluxe', 7200.00, 4, 'Nice stay', TRUE),
(9, 'Arjun', 109, '2025-01-05', '2025-01-10', 'Suite', 20000.00, 5, 'Top-notch service', TRUE),
(10, 'Sakshi Desai', 110, '2025-01-06', '2025-01-09', 'Standard', 4500.00, 3, 'Satisfactory', FALSE),
(11, 'Ravi Patil', 111, '2025-01-07', '2025-01-12', 'Deluxe', 8000.00, 4, 'Pleasant', TRUE),
(12, 'Deepika Joshi', 112, '2025-01-08', '2025-01-13', 'Suite', 22000.00, 5, 'Highly recommended', TRUE),
(13, 'Ajay Kulkarni', 113, '2025-01-03', '2025-01-08', 'Standard', 3800.00, 3, 'Not bad', FALSE),
(14, 'Meera Reddy', 114, '2025-01-09', '2025-01-14', 'Deluxe', 9000.00, 4, 'Great service', TRUE),
(15, 'Manoj Yadav', 115, '2025-01-10', '2025-01-15', 'Suite', 25000.00, 5, 'Exceptional', TRUE);

select * from HotelGuests;

SELECT * FROM HotelGuests WHERE RoomType IN ('Deluxe', 'Suite');
SELECT * FROM HotelGuests WHERE RoomNumber NOT IN (101, 102, 103);
SELECT GuestName, TotalBill AS Total_Amount FROM HotelGuests;
SELECT * FROM HotelGuests WHERE TotalBill BETWEEN 5000 AND 15000;

SELECT * FROM HotelGuests WHERE TotalBill > 8000 AND Rating < 4;
SELECT * FROM HotelGuests WHERE CheckOutDate <= '2025-01-10';
SELECT * FROM HotelGuests WHERE Feedback LIKE '%service%';

SELECT * FROM HotelGuests WHERE Feedback NOT LIKE '%service%';

SELECT * FROM HotelGuests WHERE VIPStatus = TRUE AND Rating > 4;

SELECT * FROM HotelGuests WHERE RoomType = 'Suite' OR TotalBill > 20000;

SELECT * FROM HotelGuests WHERE NOT VIPStatus;

SELECT * FROM HotelGuests ORDER BY TotalBill DESC;

SELECT * FROM HotelGuests ORDER BY Rating ASC;

SELECT MIN(TotalBill) AS Min_Bill FROM HotelGuests;

SELECT MAX(TotalBill) AS Max_Bill FROM HotelGuests;

SELECT COUNT(*) AS Total_Guests FROM HotelGuests;

SELECT SUM(TotalBill) AS Total_Revenue FROM HotelGuests;

SELECT AVG(TotalBill) AS Average_Bill FROM HotelGuests;