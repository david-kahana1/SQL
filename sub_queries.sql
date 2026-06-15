/*
Sub Queries
*/


--

SELECT 
	EmployeeID
	,CONCAT (FirstName, ' ' ,LastName) AS 'FULL NAME'
	,Country
FROM Employees
WHERE COUNTRY = (SELECT Country
				FROM Employees
				WHERE EmployeeID = 1) AND (FirstName != 'NANCY');


--

SELECT 
	ProductName
	, CategoryID
FROM Products
WHERE CategoryID IN (SELECT CategoryID
					 FROM Products
					 WHERE CategoryID = 5);
 


--Product name and number:

SELECT 
	ProductName
	, ProductID
FROM Products
WHERE ProductID IN (SELECT ProductID
					FROM [Order Details]
					GROUP BY ProductID
					HAVING SUM (Quantity) > 1200)


--

SELECT ProductID
,ProductName
,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT 
					UnitPrice
					FROM Products
					WHERE ProductName LIKE 'Alice Mutton')
					
