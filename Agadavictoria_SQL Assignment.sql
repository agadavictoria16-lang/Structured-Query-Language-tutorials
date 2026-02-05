SELECT * FROM Customers_ekene

SELECT * FROM Employees_ekene

SELECT * FROM Sales_ekene

SELECT
    a.CustomerName,
    b.EmployeeName,
    c.SaleAmount, c.SaleDate
FROM Customers_ekene AS a
FULL OUTER JOIN Employees_ekene AS b
    ON a.CustomerID = b.EmployeeID
FULL OUTER JOIN Sales_ekene AS c
    ON b.EmployeeID= c.SaleID

SELECT EmployeeID,
SUM(SaleAmount) AS Total_Sales_amount
FROM Sales_ekene
GROUP BY EmployeeID

SELECT EmployeeName FROM Employees_ekene WHERE Position = 'Manager' 
UNION
SELECT CustomerName FROM Customers_ekene WHERE Country = 'USA'

/*To create a TEMP table*/
CREATE TABLE #Temp_2024 (SaleID INT, CustomerID INT, EmployeeID INT, SaleAmount INT, SaleDate VARCHAR (50) )
INSERT INTO #Temp_2024 
SELECT * FROM Sales_ekene
WHERE SaleDate >= '2024-01-01'
  AND SaleDate <  '2025-01-01'

SELECT * FROM #Temp_2024

SELECT SaleAmount,
CASE
	WHEN SaleAmount >5000 THEN 'High value'
	WHEN SaleAmount BETWEEN 2000 AND 5000 THEN 'Medium value'
	WHEN SaleAmount < 2000 THEN 'Low value'
END
AS Total_Sales_Amount
FROM Sales_ekene

UPDATE Customers_ekene
SET Country = 'Unknown'
WHERE CustomerEmail LIKE '%@%'

SELECT
    SaleID,
    CustomerID,
    EmployeeID,
    SaleAmount,
    SaleDate
FROM Sales_ekene
WHERE SaleAmount > 5000
  AND SaleDate >= '2024-01-01'
  AND SaleDate <  '2025-01-01'

ALTER TABLE Customers_ekene
ADD Region VARCHAR(50)

UPDATE Customers_ekene
SET Region = 'North America'
WHERE Country = 'Unknown'

SELECT * FROM
Customers_ekene AS a
FULL OUTER JOIN Employees_ekene AS b
    ON a.CustomerID = b.EmployeeID
FULL OUTER JOIN Sales_ekene AS c
    ON b.EmployeeID= c.SaleID








