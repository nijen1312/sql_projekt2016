USE Airport

IF OBJECT_ID('Flights','U') IS NOT NULL
DROP TABLE Flights

IF OBJECT_ID('Passengers','U') IS NOT NULL
DROP TABLE Passengers

IF OBJECT_ID('Airports','U') IS NOT NULL
DROP TABLE Airports

IF OBJECT_ID('Airplanes','U') IS NOT NULL
DROP TABLE Airplanes

IF OBJECT_ID('Airways','U') IS NOT NULL
DROP TABLE Airways
