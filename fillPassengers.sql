IF OBJECT_ID('Passengers','U') IS NOT NULL
BULK INSERT Passengers
	FROM   'C:\Users\martin\Documents\sql_projekt\passengers.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n'
	)
GO

IF OBJECT_ID('Airports','U') IS NOT NULL
BULK INSERT Airports
	FROM   'C:\Users\martin\Documents\sql_projekt\airports.csv'
	WITH
	(
		CODEPAGE='65001',
		DATAFILETYPE='Char',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n'
	)
GO
select * from Airports
select * from Passengers