USE Airport
IF OBJECT_ID('Passengers','U') IS NOT NULL
TRUNCATE TABLE Passengers;
BULK INSERT Passengers
	FROM   'C:\Users\martin\Documents\sql_projekt\passengers.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ','
	)
GO

IF OBJECT_ID('Airports','U') IS NOT NULL
TRUNCATE TABLE Airports;
BULK INSERT Airports
	FROM   'C:\Users\martin\Documents\sql_projekt\airports.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ','
	)
GO
IF OBJECT_ID('Airplanes','U') IS NOT NULL
TRUNCATE TABLE Airplanes;
BULK INSERT Airplanes
	FROM   'C:\Users\martin\Documents\sql_projekt\airplanes.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ','
	)
GO
IF OBJECT_ID('Airways','U') IS NOT NULL
TRUNCATE TABLE Airways;
BULK INSERT Airways
	FROM   'C:\Users\martin\Documents\sql_projekt\airways.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ','
	)
GO
IF OBJECT_ID('Flights','U') IS NOT NULL
TRUNCATE TABLE Flights;
BULK INSERT Flights
	FROM   'C:\Users\martin\Documents\sql_projekt\flights.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ','
	)
GO