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

INSERT INTO Sports (SportID, SportName, Players, OriginCountry, OlympicSport, PopularityRank, IndoorOutdoor, AverageDuration)
VALUES 
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

INSERT INTO Cars (CarID, CarName, Manufacturer, YearManufactured, Price, EngineType, FuelEfficiency, Color)
VALUES 
(1, 'Model S', 'Tesla', 2020, 80000, 'Electric', 120.0, 'Red'),
(2, 'Mustang', 'Ford', 2019, 56000, 'V8', 25.0, 'Blue'),
(3, 'Civic', 'Honda', 2018, 23000, 'I4', 32.0, 'Black'),
(4, 'Corolla', 'Toyota', 2020, 20000, 'I4', 30.0, 'White'),
(5, 'Camry', 'Toyota', 2021, 25000, 'I4', 28.0, 'Silver'),
(6, 'Model 3', 'Tesla', 2021, 40000, 'Electric', 140.0, 'Red'),
(7, 'Challenger', 'Dodge', 2017, 49000, 'V8', 20.0, 'Black'),
(8, 'Accord', 'Honda', 2019, 28000, 'I4', 30.0, 'Blue'),
(9, 'Explorer', 'Ford', 2020, 33000, 'V6', 22.0, 'White'),
(10, 'Altima', 'Nissan', 2018, 24000, 'I4', 33.0, 'Grey');



SELECT * FROM Sports WHERE SportName IN ('Soccer', 'Tennis', 'Basketball');
SELECT * FROM Cars WHERE Price BETWEEN 20000 AND 50000;





CREATE TABLE student (
    student_id INT ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    date_of_birth varchar(50)
);

INSERT INTO student VALUES
(1, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04),
(2, 'Harsha', 'vardhan', 22, 'Male', 'Computer Science',2002-05-04),
(3, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04),
(4, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(5, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04),
(6, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(7, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(8, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(9, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(10, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(11, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(12, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(13, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(14, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(15, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(16, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(17, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(18, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(19, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04)
(20, 'Amogh', 'Ganesh', 22, 'Male', 'Computer Science',2002-05-04);