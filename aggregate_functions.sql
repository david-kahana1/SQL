/*
Aggregate Functions
*/


--The number of employees from London:

SELECT COUNT (City) AS 'CITY'
FROM Employees
WHERE City = 'LONDON';


--The youngest and the oldest employees:

SELECT 
	 MIN (BirthDate) AS 'OLD'
	,MAX (BirthDate) AS 'YUONG'
FROM Employees;


/*
GROUP FUNCTIONS (Group By)
*/

--

SELECT
	 SupplierID
	,MAX(UnitPrice) AS 'Highest Price'
FROM Products
GROUP BY SupplierID
ORDER BY SupplierID DESC;

--

SELECT 
	  City 
	 ,COUNT (*) AS 'Quantity'
FROM Employees
GROUP BY City 
ORDER BY City;

--

SELECT 
	 City 
	,Country
	,COUNT(*) AS 'NumberOfEmployeesPerCity'
FROM Employees
GROUP BY City, Country
ORDER BY City;

--The number of orders with more than 1200 items:

SELECT ProductID
FROM [Order Details]
GROUP BY ProductID
HAVING SUM (Quantity) > 1200;

--Product ID and Quantity:

SELECT
	 ProductID 
	,SUM (Quantity) AS 'Quantity'
FROM [Order Details]
GROUP BY ProductID 
HAVING ProductID IN (56,59,31,60);

--

SELECT 
	 OrderID 
	,SUM (UnitPrice * Quantity) AS 'Price'
FROM [Order Details]
GROUP BY OrderID 
ORDER BY 'Price' DESC;

--

SELECT 
	 OrderID
	,SUM(UnitPrice * Quantity) AS 'Price' 
FROM [Order Details]
GROUP BY OrderID
HAVING  SUM(UnitPrice * Quantity) > 4000 
ORDER BY 'Price' DESC;

--

SELECT 
	 OrderID
	,SUM(UnitPrice * Quantity) AS 'Order Total'
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(UnitPrice * Quantity) < 300
ORDER BY 'Order Total' ASC;

