/*
Sub Queries
*/


--

SELECT ProductName
FROM products
WHERE UnitPrice < (SELECT UnitPrice
					FROM Products
					WHERE ProductID = 8);


-- 

SELECT 
	 ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT UnitPrice
				   FROM Products
				   WHERE ProductName LIKE 'Tofu');


--

SELECT 
	 CONCAT (FirstName,' ',LastName) AS 'Full Name'
	,HireDate
FROM Employees
WHERE HireDate > (SELECT HireDate
				  FROM Employees
				  WHERE EmployeeID = 6);


--

SELECT 
	 OrderID
	,OrderDate
FROM Orders
WHERE CustomerID IN (SELECT CustomerID
					FROM customers 
					WHERE Country IN ('Sweden','Germany','France')) AND YEAR(OrderDate) = 1997;


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
	,CategoryID
FROM Products
WHERE CategoryID IN (SELECT CategoryID
					 FROM Products
					 WHERE CategoryID = 5);
 

--

SELECT 
	 ProductName
	,ProductID
FROM Products
WHERE ProductID IN (SELECT ProductID
					FROM [Order Details]
					GROUP BY ProductID
					HAVING SUM (Quantity) > 1200);


--

SELECT 
	 ProductID
	,ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT 
					UnitPrice
					FROM Products
					WHERE ProductName LIKE 'Alice Mutton');
					
