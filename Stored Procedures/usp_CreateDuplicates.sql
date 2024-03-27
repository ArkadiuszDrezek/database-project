CREATE PROC usp_CreateDuplicates AS 
	IF OBJECT_ID('Duplicates') IS NOT NULL
		DROP TABLE Duplicates;

	CREATE TABLE Duplicates(
		ID INT, Val1 VARCHAR(50), Val2 VARCHAR(50));
	
	INSERT INTO Duplicates
		(ID, Val1, Val2)
	SELECT TOP(30) ROW_NUMBER() OVER(ORDER BY name),
		name, [type]
	FROM sys.objects 
	UNION ALL
	SELECT TOP(5) 1, 'ABC','ABC'
	FROM sys.objects
	UNION ALL
	SELECT TOP(3) 2, 'DEF','ABC'
	FROM sys.objects