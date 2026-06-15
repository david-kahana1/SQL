/*
Aggregate Functions
*/


--The number of employees from London:

SELECT 
	  COUNT (City) AS 'CITY'
FROM Employees
WHERE City = 'LONDON';


--The youngest and the oldest employees:

SELECT 
	 MIN (BirthDate) AS 'OLD'
	,MAX (BirthDate) AS 'YUONG'
FROM Employees;


/*
Group By
*/

--

SELECT 
	  City 
	 , COUNT (*) AS 'KAMOT'
FROM Employees
GROUP BY City 
ORDER BY City;

--

SELECT City 
	, Country
	, COUNT(*) AS 'NumberOfEmployeesPerCity'
FROM Employees
GROUP BY City, Country
ORDER BY City

--The number of orders with more than 1200 items:

SELECT ProductID
FROM [Order Details]
GROUP BY ProductID
HAVING SUM (Quantity) > 1200

--Product ID and Quantity:

SELECT ProductID 
 ,SUM (Quantity) AS 'KAMOT'
FROM [Order Details]
GROUP BY ProductID 
HAVING ProductID IN (56,59,31,60)

--

SELECT 
	OrderID 
	, SUM (UnitPrice * Quantity) AS 'PRICE'
FROM [Order Details]
GROUP BY OrderID 
ORDER BY 'PRICE' DESC;

--

SELECT 
	OrderID
	, SUM(UnitPrice * Quantity) AS 'PRICE' 
FROM [Order Details]
GROUP BY OrderID
HAVING  SUM(UnitPrice * Quantity) > 4000 
ORDER BY 'PRICE' DESC

--

SELECT OrderID
	, SUM(UnitPrice * Quantity) AS 'Order Total'
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(UnitPrice * Quantity) < 300
ORDER BY 'Order Total' ASC

