/*
JOIN
*/


--Inner Join:

SELECT * 
FROM Orders JOIN Customers ON ORDERS.CustomerID = Customers.CustomerID;

--

SELECT 
	 P.ProductName
	,C.CategoryID
FROM Products AS P JOIN Categories AS C ON P.CategoryID = C.CategoryID;

-- 

SELECT 
	 P.ProductName
	,S.CompanyName
FROM Products AS P JOIN Suppliers AS S ON P.SupplierID = S.SupplierID;

-- 

SELECT 
	 P.ProductID
	,P.UnitPrice
	,P.SupplierID
	,C.CategoryName
FROM Products AS P JOIN Categories AS C ON P.CategoryID = C.CategoryID
WHERE P.SupplierID = 3;

--

SELECT 
	 O.OrderID
	,C.CustomerID
	,C.City
	,O.OrderID
FROM Orders AS O
JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE C.City = 'BERLIN'
ORDER BY C.City;

--

SELECT 
	 O.OrderID
	,O.OrderDate
	,O.ShipAddress
	,C.CustomerID
	,C.CompanyName
	,C.Phone
FROM Orders AS O JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE (YEAR (OrderDate) = 1996) AND (C.CustomerID LIKE 'C%' OR C.CustomerID LIKE 'A%') 

--

SELECT 
	 O.OrderID
	,O.OrderDate
	,O.ShipAddress
	,C.CustomerID
	,C.CompanyName
	,C.Phone
	,E.FirstName
	,E.LastName
FROM Orders AS O JOIN Customers AS C ON O.CustomerID = C.CustomerID JOIN Employees AS E ON E.EmployeeID = O.EmployeeID
WHERE (O.OrderDate LIKE '%1996%') AND (C.CustomerID LIKE 'C%' OR C.CustomerID LIKE 'A%')
ORDER BY OrderDate DESC;


--Self Join:

SELECT 
	 L.ProductID
	,R.ProductName
	,L.UnitPrice
FROM Products AS L JOIN Products AS R ON (L.UnitPrice > R.UnitPrice) AND (R.ProductName = 'Alice Mutton');


--Right Join:

SELECT 
	 C.CompanyName
	,C.City  AS 'CustomersCity A'
	,C.ContactName
	,E.EmployeeID
	,E.City AS 'EmployeeCity B'
FROM Customers AS C RIGHT JOIN Employees AS E ON C.City = E.City;


--Left Join:

SELECT
	 C.CompanyName
	,C.City
	,C.ContactName
	,E.EmployeeID
	,E.City
FROM Customers AS C 
LEFT JOIN Employees AS E ON C.City = E.City;


--Full Join:

SELECT 
	 C.CompanyName
	,C.City
	,C.ContactName
	,E.EmployeeID
	,E.City	
FROM Customers AS C FULL JOIN Employees AS E ON C.City = E.City;

