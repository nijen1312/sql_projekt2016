IF DB_ID('Airport') IS NULL
CREATE DATABASE Airport
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
GO
--DROP TABLE dbo.Passengers
--DROP TABLE dbo.Airports