IF DB_ID('Airport') IS NULL
CREATE DATABASE Airport
GO

USE Airport
GO

IF OBJECT_ID('Passengers') IS NULL
CREATE TABLE Airport.dbo.Passengers(
PassportID NCHAR(9) NOT NULL UNIQUE,
FirstName NVARCHAR(20) NOT NULL,
Surname NVARCHAR(20) NOT NULL,
OriginCountry NVARCHAR(50) NOT NULL,
BirthDate DATE NOT NULL,
PRIMARY KEY (PassportID)
)

IF OBJECT_ID('Airports') IS NULL
CREATE TABLE Airport.dbo.Airports(
CodeName NCHAR(3) NOT NULL UNIQUE,
FullName NVARCHAR(80) NOT NULL,
City NVARCHAR(50) NOT NULL,
Country NVARCHAR(50) NOT NULL,
Distance INT NOT NULL,
PRIMARY KEY (CodeName)
)

IF OBJECT_ID('Airplanes') IS NULL
CREATE TABLE Airport.dbo.Airplanes(
SerialNo NCHAR(7) NOT NULL UNIQUE,
Manufacuter NVARCHAR(30) NOT NULL,
Model NVARCHAR(30) NOT NULL,
MaxPassengers INT NOT NULL,
FuelRange INT NOT NULL,
Miles INT NOT NULL,
PRIMARY KEY (SerialNo)
)
GO

IF OBJECT_ID('Airways') IS NULL
CREATE TABLE Airport.dbo.Airways(
AirwaysName NVARCHAR(30) NOT NULL UNIQUE,
AirwaysType NVARCHAR(30) NOT NULL,
OwnerCountry NVARCHAR(30) NOT NULL,
PRIMARY KEY (AirwaysName)
)
GO

IF OBJECT_ID('Flights') IS NULL
CREATE TABLE Airport.dbo.Flights(
FlightNumber NCHAR(6) NOT NULL,
AirwaysName NVARCHAR(30) NOT NULL,
AirportCodeName NCHAR(3) NOT NULL,
PRIMARY KEY (FlightNumber),
FOREIGN KEY (AirwaysName) REFERENCES Airways(AirwaysName),
FOREIGN KEY (AirportCodeName) REFERENCES Airports(CodeName)
)
GO