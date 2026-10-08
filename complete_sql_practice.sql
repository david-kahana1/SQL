

-- SELECT | 1



/* 
(1) Exercise: Display all information from the Orders table.
*/

SELECT *
FROM ORDERS;



/* 
(2) Exercise: Display all columns from the Employees table.
*/

SELECT * 
FROM Employees;



/*
(3) Exercise: From Employees, display FirstName, HireDate, Region, and Country.
*/

SELECT
	 FirstName
	,HireDate
	,Region
	,Country
FROM Employees;



/*
(4) Exercise: From Orders, display OrderID, OrderDate, and CustomerID.
*/

SELECT
	 CustomerID
	,OrderID
	,OrderDate
FROM Orders;



/*
(5) Exercise: From Products, display ProductID (alias: ProId), ProductName (alias: ProNm), and UnitPrice (alias: UntPr).
*/

SELECT
	 ProductID AS 'ProId'
	,ProductName AS 'ProNm'
	,UnitPrice AS 'UntPr'
FROM Products;



/*
(6) Exercise: From Employees, display Address (alias: add), City (alias: ct), and Region (alias: reg).
*/

SELECT
	 Address AS 'Add'
	,City AS 'Ct'
	,Region AS 'Reg'
FROM Employees;



/*
(7) Exercise: From Customers, display two columns: CustomerID, 
	and Address and City concatenated into one column named "full address".
*/

SELECT
	 CustomerID
	,CONCAT(Address, ' ', City) AS 'Full Address'
FROM Customers;


SELECT
	 CustomerID
	,Address + ' ' + City AS 'Full Address'
FROM Customers;



/*
(8) Exercise: From Employees, display three columns: 
	The employee’s full name (FirstName concatenated with LastName) under the heading "Full Name"; 
	BirthDate plus 8 days under "Birth Date"; and ReportsTo under "Manager#".
*/

SELECT
	 CONCAT(FirstName, ' ', LastName) AS 'Full Name'
	,BirthDate + 8 AS 'Birth Date'
	,ReportsTo AS '#Manager'
FROM Employees;



/*
(9) Exercise: From Employees, display the cities (City) where employees live, uniquely.
*/

SELECT DISTINCT City
FROM Employees;



/*
(10) Exercise: From Employees, display the countries (Country) where employees are from, uniquely.
*/

SELECT DISTINCT Country
FROM Employees;



/*
(11) Exercise: From Employees, display the employees’ job titles (Title), uniquely.
*/

SELECT DISTINCT Title
FROM Employees



--12,A: Exercise: From Customers, display Country and City.

SELECT
	 Country
	,City
FROM Customers;


--12,B: Exercise: Display the unique combinations of Country and City.

SELECT DISTINCT
	 Country
	,City
FROM Customers;



/*
(13) Exercise: From Employees, display FirstName, BirthDate, and BirthDate plus 5 days.
*/

SELECT
	 FirstName
	,BirthDate
	,BirthDate + 5
FROM Employees;



/*
(14) Exercise: From Products, display ProductName, UnitPrice, and UnitPrice plus 10.
*/

SELECT
	 ProductName
	,UnitPrice
	,UnitPrice + 10
FROM Products;



/*
(15) Exercise: From Products, display- ProductID, ProductName, UnitPrice,
	 UnitPrice after a 16.5% increase (use an appropriate alias),
	 UnitsInStock, UnitsOnOrder, and the difference between UnitsInStock and UnitsOnOrder.
*/

SELECT 
	 ProductID
	,ProductName
	,UnitPrice
	,(UnitPrice * 1.165) AS 'After Raise'
	,UnitsInStock
	,UnitsOnOrder
	,(UnitsInStock - UnitsOnOrder)  AS 'Units Left' 
FROM Products;



/*
(16) Exercise: From Products, display ProductID, ProductName,
			   and the cost of the products in stock that have not been ordered. 
			   Give the calculated column an appropriate name.
*/

SELECT
	 ProductID
	,ProductName
	,(UnitsInStock - UnitsOnOrder) * UnitPrice AS 'Units Left Value'
FROM Products;




-- WHERE | 2



/*
(1) Exercise: From Employees, display the FirstName and LastName of employee 3.
*/

SELECT
	 FirstName
	,LastName
FROM Employees
WHERE EmployeeID = 3;



/*
(2) Exercise: From Products, display the ProductName and UnitPrice of product 4.
*/

SELECT
	 ProductName
	,UnitPrice
FROM Products
WHERE ProductID = 4;



/*
(3) Exercise: From Products, display ProductID, ProductName, and UnitPrice for products- 
			  whose UnitPrice is greater than 20. Sort by UnitPrice ascending.
*/

SELECT
	 ProductID
	,ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > 20
ORDER BY UnitPrice ASC;



/*
(4) Exercise: From Employees, display the full name in one column, BirthDate, and ReportsTo for employee 8.
*/

SELECT
	 CONCAT (FirstName, ' ', LastName) AS 'Full Name'
	,BirthDate
	,ReportsTo
FROM Employees
WHERE EmployeeID = 8;
 


/*
(5) Exercise: From Employees, display EmployeeID, full name, and BirthDate for employees who live in LONDON. 
			  Give the columns appropriate aliases.
*/

SELECT
	 EmployeeID
	,FirstName + ' ' + LastName AS 'Full Name'
	,BirthDate
FROM Employees
WHERE City = 'LONDON';



/*
(6) Exercise: From Products, display all details for products whose UnitPrice is not between 50 and 100.
*/

SELECT * 
FROM Products
WHERE UnitPrice NOT BETWEEN 50 AND 100;



/*
(7) Exercise: From Products, display ProductName and UnitPrice for products- 
	whose UnitPrice is between 21.35 and 43.9. Sort by UnitPrice descending.
*/

SELECT
	 ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 21.35 AND 43.9
ORDER BY UnitPrice DESC;



/*
(8) Exercise: From Employees, display EmployeeID, LastName, and HireDate for employees who live in LONDON or TACOMA.
*/

SELECT
	 EmployeeID
	,LastName
	,HireDate
FROM Employees
WHERE City IN ('LONDON', 'TACOMA');



/*
(9) Exercise: From Employees, display EmployeeID, FirstName, and LastName for employees whose EmployeeID is 1, 2, or 5.
*/

SELECT
	 EmployeeID
	,FirstName
	,LastName
FROM Employees
WHERE EmployeeID IN (1, 2, 5);



/*
(10) Exercise: From Employees, display FirstName, LastName, and BirthDate for employees whose EmployeeID is not 4, 5, or 7.
*/

SELECT 
	 FirstName
	,LastName
	,BirthDate
FROM Employees
WHERE EmployeeID NOT IN (4, 5, 7);



/*
(11) Exercise: From Products, display ProductID, ProductName, and CategoryID for products-
			   whose CategoryID is not 1, 2, or 7. Sort by CategoryID ascending.
*/

SELECT
	 ProductID
	,ProductName
	,CategoryID
FROM Products
WHERE CategoryID NOT IN (1,2,7)
ORDER BY CategoryID ASC;



/*
(12) Exercise: From Employees, display FirstName and Region for employees whose Region is NULL.
*/

SELECT
	 FirstName
	,Region 
FROM Employees
WHERE Region IS NULL;



/*
(13) Exercise: From Products, display ProductName and UnitPrice for the three most expensive products.
*/

SELECT TOP (3)
	 ProductName
	,UnitPrice
FROM Products
ORDER BY UnitPrice DESC;



/*
(14) Exercise: From Orders, display OrderID, OrderDate, and RequiredDate for orders-
			   whose RequiredDate is after October 1996.
*/

SELECT
	 OrderID
	,OrderDate
	,RequiredDate
FROM Orders
WHERE RequiredDate > '1996-10-31';



/*
(15) Exercise: From Employees, display EmployeeID, LastName, and ReportsTo only for employees who have a manager.
			   Sort by EmployeeID ascending.
*/

SELECT
	 EmployeeID
	,LastName
	,ReportsTo
FROM Employees
WHERE ReportsTo IS NOT NULL
ORDER BY EmployeeID ASC;



/*
(16) Exercise: From Categories, display all details for categories whose CategoryName contains the letter 'o'.
*/

SELECT *
FROM Categories
WHERE CategoryName LIKE '%O%';



/*
(17) Exercise: From Customers, display CompanyName and Country for companies whose name ends with the letter 'a'.
*/

SELECT
	 CompanyName
	,Country
FROM Customers
WHERE CompanyName LIKE '%A';



/*
(18) Exercise: From Products, display ProductName and CategoryID for products-
			   whose second-to-last character in ProductName is 'a'.
*/

SELECT
	 ProductName
	,CategoryID
FROM Products
WHERE ProductName LIKE '%A_';



/*
(19) Exercise: From Orders, display OrderID, CustomerID, and EmployeeID for orders placed from April through May 1997.
			   Sort first by OrderDate ascending and then by CustomerID descending.
*/

SELECT
	 OrderID
	,CustomerID
	,EmployeeID
FROM Orders
WHERE OrderDate BETWEEN '1997-04-01' AND '1997-05-31'
ORDER BY OrderDate ASC, CustomerID DESC;



/*
(20) Exercise: From Customers, display CustomerID, CompanyName, Country, Phone,
	 and Region for customers in countries whose names start with M, F, or G, and whose Region is NULL.
*/

SELECT
	 CustomerID
	,CompanyName
	,Country
	,Phone
	,Region
FROM Customers
WHERE (Country LIKE 'G%' OR Country LIKE 'M%' OR Country LIKE 'F%') AND Region IS NULL;



/*
(21) Exercise: From Employees, display EmployeeID, full name, BirthDate,
	 and Country for employees whose LastName contains K or D, or who were born in 1963.
*/

SELECT
	 EmployeeID
	,FirstName + ' ' + LastName AS 'Full Name'
	,BirthDate
	,Country
FROM Employees
WHERE (LastName LIKE '%K%' OR LastName LIKE '%D%') OR BirthDate LIKE '%1963%';



/*
(22) Exercise: From Products, display ProductName, UnitPrice, and SupplierID for products-
			   with UnitPrice greater than 30 and SupplierID equal to 1 or 3.
*/

SELECT
	 ProductName
	,UnitPrice
	,SupplierID
FROM Products
WHERE (UnitPrice > 30) AND SupplierID IN (1,3);



/*
(23) Exercise: From Orders, display OrderID, EmployeeID, OrderDate, RequiredDate, and ShipName-
	 for orders where EmployeeID = 7, ShipName is QUICK-Stop, Du monde entier, or Eastern Connection, 
	 and the difference between RequiredDate and OrderDate is greater than 20 days.
*/

SELECT 
	 OrderID
	,EmployeeID
	,OrderDate
	,RequiredDate
	,ShipName
FROM Orders
WHERE (EmployeeID = 7) AND (ShipName IN ('QUICK-Stop', 'Du monde entier','Eastern Connection'))
	AND (OrderDate + 20 < RequiredDate);



/*
(24) Exercise: From Products, display ProductID and ProductName for products whose SupplierID is 8, 16, or 21,
or whose UnitPrice is less than 10. In all cases, include only products whose UnitsInStock is not between 10 and 100.
Sort by UnitPrice ascending.
*/

SELECT
	 ProductID
	,ProductName
FROM Products
WHERE (SupplierID IN (8,16,21) OR UnitPrice < 10) AND (UnitsInStock NOT BETWEEN 10 AND 100)
ORDER BY UnitPrice ASC;




-- SCALAR FUNCTIONS | 3



/*
(1) Exercise: From Employees, display FirstName in lowercase and LastName in uppercase
			  for employees whose EmployeeID is between 3 and 5.
*/

SELECT
	 LOWER(FirstName)
	,UPPER(LastName)
FROM Employees
WHERE EmployeeID BETWEEN 3 AND 5;



--2A: Exercise: From Employees, display FirstName and the position of the letter 'a' within it.

SELECT
	 FirstName
	,CHARINDEX('A', FirstName)
FROM Employees;


--2B: Exercise: Filter the query so that only employees whose FirstName does not contain 'a' are displayed.

SELECT
	 FirstName
	,CHARINDEX('A', FirstName) 
FROM Employees
WHERE CHARINDEX('A', FirstName) = 0;



/*
(3) Exercise: From Categories, display CategoryName, Description, and the position of the character 'i' in Description,
			  starting the search from the 4th character.
*/

SELECT
	 CategoryName
	,Description
	,CHARINDEX('i', Description, 4)
FROM Categories;



/*
(4) Exercise: From Employees, display FirstName, LastName, and a username made from the first 3 letters-
			  of FirstName concatenated with the first letter of LastName.
*/

SELECT
	 FirstName
	,LastName
	,CONCAT(SUBSTRING(FirstName,1,3), SUBSTRING(LastName,1,1)) AS 'UserName' 
FROM Employees;



/*
(5) Exercise: From Products, display ProductID, ProductName, and ProductName again in another column,
			  with every '?' character replaced by '-'.
*/

SELECT
	 ProductID
	,ProductName
	,REPLACE(ProductName, '?','-')
FROM Products;



/*
(6) Exercise: Display today’s date.
*/

SELECT GETDATE()



/*
(7) Exercise: To calculate the latest date on which each order can be shipped, display:
			  CustomerID, OrderID, OrderDate, and OrderDate plus 45 days.
			  Use a date function for the calculation.
*/

SELECT
	 CustomerID
	,OrderID
	,OrderDate
	,DATEADD(dd, 45, OrderDate)
FROM Orders;



/*
(8) Exercise: From Employees, display FirstName and age, calculated as the
			  difference in years between the current date and BirthDate.
*/

SELECT
	 FirstName
	,DATEDIFF(yyyy, BirthDate, GETDATE()) AS 'Age'
FROM Employees;



/*
(9) Exercise: From Employees, display FirstName, the weekday on which the employee started working
			  (for example, Sunday or Monday), and the year in which they started.
*/

SELECT
	 FirstName
	,DATENAME(DW,HireDate)
	,YEAR(HireDate)
FROM Employees;



/*
(10) Exercise: From Products, display ProductID and UnitPrice ª 0.12, rounded to the nearest whole number.
			   Give the calculated column an appropriate name.
*/

SELECT
	 ProductID
	,ROUND(UnitPrice * 0.12, 0) AS 'New price'
FROM Products;



/*
(11) Exercise: From Employees, display EmployeeID and LastName concatenated with a space,
	 plus BirthDate in a separate column. Give the concatenated column an appropriate alias.
*/

SELECT
	 CONCAT(EmployeeID, ' ', LastName) AS 'ID & L.NAME'
	,BirthDate
FROM Employees;



/*
(12) Exercise: From Employees, display LastName in uppercase and BirthDate in DD/MM/YY format for employees-
			   whose LastName starts with K or D. Use SUBSTRING in the WHERE condition instead of LIKE.
*/

SELECT
	 UPPER(LastName)
	,CONVERT(CHAR(12), BirthDate, 103) AS  'Birth Date'
FROM Employees
WHERE SUBSTRING(LastName, 1, 1) IN ('K','D');



/*
(13) Exercise: From Products, display ProductID and SupplierID in one column with the word 'AND' between them- AS 'PRODUCT'.
			   Also display UnitPrice ª 1.165 rounded down to a whole number; name this column FULL PRICE.
			   Display only products whose new price is greater than 40.
*/

SELECT
	 CONCAT(ProductID, ' ' , 'AND', ' ' , SupplierID) AS 'PRODUCT'
	,FLOOR (UnitPrice * 1.165) AS 'FULL PRICE'
FROM Products
WHERE FLOOR (UnitPrice * 1.165) > 40;



/*
(14) Exercise: From Employees, display LastName concatenated with the length of LastName,
			   and FirstName concatenated with the length of FirstName. 
			   Give each column an appropriate alias.
*/

SELECT
	 CONCAT(LastName, ' ', LEN(LastName)) AS 'Length Of Last Name'
	,CONCAT(FirstName, ' ', LEN(FirstName)) AS 'Length Of First Name'
FROM Employees;



/*
(15) Exercise: From Employees, display LastName and LastName reversed, with an appropriate alias for the reversed value.
			   Display only employees who have a manager according to ReportsTo.
*/

SELECT
	 LastName
	,REVERSE(LastName) AS 'Reverse Name'
FROM Employees
WHERE ReportsTo IS NOT NULL;



/*
(16) Exercise: From Orders, display OrderID, OrderDate, and RequiredDate for orders- 
			   where the number of quarters between OrderDate and RequiredDate is 1.
*/

SELECT
	 OrderID
	,OrderDate
	,RequiredDate
FROM Orders
WHERE DATEDIFF(Q, OrderDate, RequiredDate) = 1;



/*
(17) Exercise: From Customers, display the first four characters of CompanyName
			   for customers whose CompanyName starts with 'a'.
*/

SELECT
	SUBSTRING(CompanyName, 1, 4)
FROM Customers
WHERE CompanyName LIKE 'A%';



/*
(18) Exercise: From Employees, display LastName concatenated with BirthDate; HireDate in format 104;
			   and ReportsTo, displaying 'No Manager' when ReportsTo is NULL.
			   Include only employees whose LastName is at least as long as their FirstName.
*/

SELECT
	 CONCAT(LastName, ' ', BirthDate) AS 'Name + BirthDate'
	,CONVERT(CHAR(12),HireDate, 104) AS 'Hire Date'
	,ISNULL(CONVERT(char(25), ReportsTo), 'No Manager') AS 'Manager?' 
FROM Employees
WHERE LEN(LastName) >= LEN(FirstName);




-- JOIN | 4



/*
(1) Exercise: Display ProductName from Products and the corresponding CategoryName from Categories.
*/

SELECT
	 P.ProductName
	,C.CategoryName
FROM Products AS P JOIN categories AS C ON P.CategoryID = C.CategoryID;



/*
(2) Exercise: Display ProductName from Products and the supplier’s CompanyName from Suppliers.
*/

SELECT
	 P.ProductName
	,S.CompanyName
FROM Products P JOIN Suppliers S ON P.SupplierID = S.SupplierID;



/*
(3) Exercise: Display OrderID from Orders and CompanyName from Customers for companies whose name starts with 'a'.
*/

SELECT
	 O.OrderID
	,C.CompanyName
FROM ORDERS AS O JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE C.CompanyName LIKE 'A%';



/*
(4) Exercise: Display RegionDescription from Region and TerritoryDescription from Territories.
*/

SELECT
	 R.RegionDescription
	,T.TerritoryDescription
FROM Region R JOIN Territories T ON R.RegionID = T.RegionID;



/*
(5) Exercise: Display ProductName and UnitPrice from Products and the corresponding CategoryName-
			  from Categories for products whose UnitPrice is greater than 50.
*/

SELECT
	 P.ProductName
	,P.UnitPrice
	,C.CategoryName
FROM Products AS P JOIN Categories AS C ON P.CategoryID = C.CategoryID
WHERE P.UnitPrice > 50
ORDER BY P.UnitPrice ASC;



/*
(6) Exercise: Display ProductID, UnitPrice, and SupplierID from Products and CategoryName-
			  from Categories for products whose SupplierID is 3.
*/

SELECT
	 P.ProductID
	,P.UnitPrice
	,P.SupplierID
	,C.CategoryName
FROM Products P JOIN Categories C ON P.CategoryID = C.CategoryID
WHERE P.SupplierID = 3;



/*
(7) Exercise: Display ProductID, UnitPrice, SupplierID, and CategoryName for products 
			  whose category name contains the letter 'a'.
*/

SELECT
	 P.ProductID
	,P.UnitPrice
	,P.SupplierID
	,C.CategoryName
FROM Products P INNER JOIN Categories C ON P.CategoryID = C.CategoryID
WHERE C.CategoryName LIKE '%A%';



/*
(8) Exercise: Display ProductName, CategoryName, and Supplier CompanyName by joining Products, Categories, and Suppliers.
*/

SELECT
	 P.ProductName
	,C.CategoryName
	,S.CompanyName
FROM Products P JOIN Categories C ON P.CategoryID = C.CategoryID
				JOIN Suppliers S ON P.SupplierID = S.SupplierID;



/*
(9) Exercise: Display ProductName, Category Description, and Supplier City for products supplied by suppliers in London or Tokyo.
*/

SELECT
	P.ProductName
	,C.Description
	,S.City
FROM Products P JOIN Categories C ON P.CategoryID = C.CategoryID
				JOIN Suppliers S ON P.SupplierID = S.SupplierID
WHERE S.City IN ('London','Tokyo');



/*
(10) Exercise: Display ProductID, Category Description, and Supplier Country for products whose supplier’s country starts with 'a'.
*/

SELECT
	 P.ProductID
	,C.Description
	,S.Country
FROM Products P JOIN Categories C ON P.CategoryID = C.CategoryID
				JOIN Suppliers S ON P.SupplierID = S.SupplierID
WHERE S.Country LIKE 'A%';



/*
(11) Exercise: Display the customer CompanyName and OrderID for all customers, including customers who have no orders.
*/

SELECT
	 C.CompanyName
	,O.OrderID
FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID;



/*
(12) Exercise: Display OrderID, OrderDate, and ShipAddress from Orders, plus CustomerID, CompanyName, and Phone from Customers.
			   Include only orders from 1996 and customers whose CustomerID starts with A or C.
*/

SELECT
	 O.OrderID
	,O.OrderDate
	,O.ShipAddress
	,C.CustomerID
	,C.CompanyName
	,C.Phone
FROM Orders O JOIN Customers C ON O.CustomerID = C.CustomerID
WHERE YEAR(O.OrderDate) = 1996 AND (C.CustomerID LIKE 'A%' OR C.CustomerID LIKE 'C%');



/*
(13) Exercise: Repeat the previous exercise and also include FirstName and LastName from Employees.
			   Give the columns appropriate aliases. Sort the results by OrderDate descending.
*/

SELECT
	 O.OrderID
	,O.OrderDate
	,O.ShipAddress
	,C.CustomerID
	,C.CompanyName
	,C.Phone
	,CONCAT(E.FirstName, ' ', E.LastName) 'Employees Full Name'
FROM Orders O JOIN Customers C ON O.CustomerID = C.CustomerID
			  JOIN Employees E ON C.Country = E.Country
WHERE YEAR(O.OrderDate) = 1996 AND (C.CustomerID LIKE 'A%' OR C.CustomerID LIKE 'C%')
ORDER BY O.OrderDate DESC;



/* 14A: Exercise: Display the employee’s LastName and the manager’s LastName,
		using the relationship within Employees between ReportsTo and EmployeeID. */

SELECT
	 L.LastName
	,R.LastName
FROM Employees L JOIN Employees R ON L.ReportsTo = R.EmployeeID;


--14B: Exercise: Also display employees who do not have managers.

SELECT
	 L.LastName
	,R.LastName
FROM Employees L LEFT JOIN Employees R ON L.ReportsTo = R.EmployeeID;



/*
(15) Exercise: Using a JOIN, display ProductID, ProductName, and UnitPrice for products-
			   that cost more than the product named 'Alice Mutton'.
*/

SELECT
	 P.ProductID
	,P.ProductName
	,P.UnitPrice
FROM Products P JOIN Products AM ON P.UnitPrice > AM.UnitPrice AND AM.ProductName = 'Alice Mutton';




-- GROUP FUNCTIONS | 5



/*
(1) Exercise: From Employees, display the alphabetically smallest LastName.
*/

SELECT
	MIN(LastName)
FROM Employees;



/*
(2) Exercise: From Employees, display the alphabetically largest FirstName.
*/

SELECT
	MAX(FirstName)
FROM Employees;



/*
(3) Exercise: From Employees, display the number of rows in the table.
*/

SELECT
	COUNT(*)
FROM Employees;



/*
(4) Exercise: From Employees, display the number of non-NULL values in Region.
*/

SELECT
	COUNT(Region)
FROM Employees;



/*
(5) Exercise: From Products, display the average UnitPrice.
*/

SELECT
	AVG(UnitPrice)
FROM Products;



/*
(6) Exercise: From Products, display the highest UnitPrice and the average UnitPrice. Give the columns appropriate names.
*/

SELECT
	 MAX(UnitPrice) AS 'HIGH PRICE'
	,AVG(UnitPrice) AS 'THE AVERAGE PRICE'
FROM Products;



/*
(7) Exercise: From Employees, display the earliest and latest BirthDate. Format the dates using format 113,
			  and give the columns appropriate names.
*/

SELECT
	 CONVERT(char, MIN(BirthDate), 113) AS 'Min Birth Date'
	,CONVERT(char, MAX(BirthDate), 113) AS 'Max Birth Date'
FROM Employees;



/*
(8) Exercise: Display the number of distinct customers in Customers. Give the column an appropriate name.
*/

SELECT
	COUNT(CustomerID) AS 'The Numbers Of Customers'
FROM Customers;



/*
(9) Exercise: Display the number of distinct customers who appear in Orders. Give the column an appropriate name.
			  Note that a customer may have placed more than one order.
*/

SELECT 
	COUNT(DISTINCT CustomerID) AS 'The Numbers Of Customers'
FROM Orders;



/*
(10) Exercise: From Products, display the maximum, minimum, and average UnitPrice for each CategoryID.
			   Give the columns appropriate names.
*/

SELECT
	 CategoryID
	,MAX(UnitPrice) AS 'Max Price Per Category'
	,MIN(UnitPrice) AS 'Min Price Per Category'
	,AVG(UnitPrice) AS 'AVG Price Per Category'
FROM Products
GROUP BY CategoryID;



/*
(11) Exercise: From Products, display the highest UnitPrice for each SupplierID. Sort by SupplierID descending.
*/

SELECT
	 SupplierID
	,MAX(UnitPrice) AS 'Max Price Per Supplier'
FROM Products
GROUP BY SupplierID
ORDER BY SupplierID DESC;



/*
(12) Exercise: From Products, display the average UnitsInStock for each SupplierID. 
			   Sort by the average UnitsInStock descending.
*/

SELECT
	 SupplierID
	,AVG(UnitsInStock) AS 'AVG UnitsInStock Per Supplier'
FROM Products
GROUP BY SupplierID
ORDER BY 'AVG UnitsInStock Per Supplier' DESC;



/*
(13) Exercise: From Customers, display the number of customers for each Country and City.
*/

SELECT
	 COUNT(CompanyName) AS 'NUMBERS OF CUSTOMERS'
	,Country
	,City
FROM Customers
GROUP BY City, Country;



/*
(14) Exercise: From Products, display the average UnitPrice for each category,
			   considering only products whose UnitPrice is greater than 40.
*/

SELECT
	 CategoryID
	,AVG(UnitPrice) AS 'AVG PRICE'
FROM Products
WHERE UnitPrice > 40
GROUP BY CategoryID;



/*
(15) Exercise: From Customers, display the number of customers for each City,
			   for customers living in London, Berlin, Paris, or Rio de Janeiro.
*/

SELECT
	 City
	,COUNT(CustomerID) AS 'Num Of Customers'
FROM Customers
WHERE City IN('London','Paris','Berlin','Rio de janeiro')
GROUP BY City;



/*
(16) Exercise: From Products, display the highest UnitPrice, lowest UnitPrice, average UnitPrice, 
			   and number of products for each combination of CategoryID and SupplierID.
*/

SELECT
	 SupplierID
	,CategoryID
	,MAX(UnitPrice) AS 'MAX PRICE'
	,MIN(UnitPrice) AS 'MIN PRICE'
	,AVG(UnitPrice) AS 'AVG PRICE'
	,COUNT(UnitsInStock) AS 'COUNT IN STOCK'
FROM Products
GROUP BY SupplierID, CategoryID;



/*
(17) Exercise: From Products, display the maximum UnitPrice for each category,
			   only for categories whose maximum UnitPrice is greater than 40.
*/

SELECT
	 CategoryID
	,MAX(UnitPrice) AS 'MAX PRICE'
FROM Products
GROUP BY CategoryID
HAVING MAX(UnitPrice) > 40;



/*
(18) Exercise: From Products, display the average UnitPrice for each supplier, 
			   only for suppliers whose average UnitPrice is greater than 40.
*/

SELECT
	 SupplierID
	,AVG(UnitPrice) AS 'AVG PRICE'
FROM Products
GROUP BY SupplierID
HAVING AVG(UnitPrice) > 40;



/*
(19) Exercise: From Products, display the total UnitsOnOrder and total UnitsInStock for each category,
together with CategoryName from Categories. Include only categories whose name contains 'c' and groups-
whose total UnitsOnOrder is greater than 100. Sort by CategoryName ascending.
*/

SELECT
	 SUM(P.UnitsOnOrder) AS 'SUM Units On Order'
	,SUM(P.UnitsInStock) AS 'SUM Units In Stock'
	,C.CategoryName
FROM Products P JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName
HAVING (C.CategoryName LIKE '%C%') AND SUM(P.UnitsOnOrder) > 100
ORDER BY C.CategoryName ASC;



/*
(20) Exercise: From Customers, display Region, City, and the number of customers
in that Region/City for cities whose names contain M or L and whose Region is not NULL. 
Include only groups with at least 2 customers.
*/

SELECT
	 Region
	,City
	,COUNT(*) AS 'COUNT OF Customers'
FROM Customers
WHERE (City LIKE'%M%' OR City LIKE '%L%') AND (Region IS NOT NULL)
GROUP BY Region, CITY
HAVING COUNT(*) >= 2;



/*
(21) Exercise: Display LastName from Employees, the total number of orders handled by the employee from Orders,
			   and the employee’s latest OrderDate. Give the columns appropriate names. 
			   Include only employees who handled more than 100 orders.
*/

SELECT
	 CONCAT(E.FirstName, ' ', E.LastName) AS 'Employees Name'
	,COUNT(O.OrderID) AS 'Total Orders'
	,MAX(O.OrderDate) AS 'The Last Order'
FROM Employees E JOIN Orders O ON E.EmployeeID = O.EmployeeID
GROUP BY E.FirstName, E.LastName
HAVING COUNT(O.OrderID) > 100;




-- SUBQURIES | 6



/*
(1) Exercise: From Products, display the names of products whose UnitPrice is lower than the UnitPrice of product 8.
*/

SELECT
	ProductName
FROM Products
WHERE UnitPrice < (SELECT UnitPrice
					FROM Products
					WHERE ProductID = 8);



/*
(2) Exercise: From Products, display ProductName and UnitPrice for products-
	whose UnitPrice is higher than the price of the product named 'Tofu'.
*/

SELECT
	 ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT UnitPrice
					FROM Products
					WHERE ProductName LIKE 'Tofu');



/*
(3) Exercise: From Employees, display LastName and HireDate for employees hired after employee 6.
*/

SELECT
	 CONCAT(FirstName, ' ', LastName) AS 'FULL NAME'
	,HireDate
FROM Employees
WHERE HireDate > (SELECT HireDate
				   FROM Employees
				   WHERE EmployeeID = 6);



/*
(4) Exercise: From Products, display ProductID, ProductName, and UnitPrice for products-
			  whose UnitPrice is higher than the average UnitPrice.
*/

SELECT
	 ProductID
	,ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice)
					FROM Products);



/*
(5) Exercise: From Products, display ProductName and UnitsInStock for products whose UnitsInStock-
			  is lower than the minimum UnitsInStock among products in CategoryID 5.
*/

SELECT
	 ProductName
	,UnitsInStock
FROM Products
WHERE UnitsInStock < (SELECT MIN(UnitsInStock)
					   FROM Products
					   WHERE CategoryID = 5);



/*
(6) Exercise: From Products, display all details of products that are in the same category as the product named 'Chai'.
			  Do not include Chai itself in the final result.
*/

SELECT *
FROM Products
WHERE CategoryID LIKE (SELECT CategoryID
						FROM Products
						WHERE ProductName LIKE 'CHAI') 
AND ProductName <> 'CHAI';



/*
(7) Exercise: From Products, display ProductName, UnitPrice, and CategoryID for products-
			  whose UnitPrice is equal to the price of at least one product in CategoryID 5.
*/

SELECT
	 ProductName
	,UnitPrice
	,CategoryID
FROM Products
WHERE UnitPrice IN (SELECT UnitPrice
					FROM Products
					WHERE CategoryID = 5);



/*
(8) Exercise: From Products, display ProductName and UnitPrice for products-
			  whose UnitPrice is higher than at least one product in CategoryID 5.
*/

SELECT
	 ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT MIN(UnitPrice)
						FROM Products
						WHERE CategoryID = 5);
		

		
/*
(9) Exercise: From Products, display ProductName and UnitPrice for products-
			  whose UnitPrice is higher than every product in CategoryID 5.
*/

SELECT
	 ProductName
	,UnitPrice
FROM Products 
WHERE UnitPrice > (SELECT MAX(UnitPrice)
					FROM Products
					WHERE CategoryID = 5);



/*
(10) Exercise: From Orders, display OrderID and OrderDate for orders whose customers are from Germany, France, or Sweden-
			   and whose OrderDate is in 1997. Pay attention to how many rows the subquery returns.
*/

SELECT
	 OrderID
	,OrderDate
FROM Orders
WHERE ShipCountry IN (SELECT ShipCountry
						FROM Orders
						WHERE ShipCountry IN ('France','Germany','Sweden')) 
AND YEAR(OrderDate) = 1997; 



/*
(11) Exercise: From Products, display ProductName and ProductID only for products whose UnitPrice is-
			   greater than the average UnitPrice of products whose UnitsInStock is greater than 50.
*/

SELECT
	 ProductName
	,UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice)
						FROM Products
						WHERE UnitsInStock > 50);



/*
(12) Exercise: From Products, display the names of all products whose category is Beverages or Condiments-
			   and whose supplier Region is unknown (NULL).
*/

SELECT
	ProductName
FROM Products
WHERE CategoryID IN (SELECT CategoryID
					  FROM Categories
					  WHERE CategoryName IN ('Beverages','Condiments'))
												AND SupplierID IN (SELECT SupplierID
																	FROM Suppliers
																	WHERE Region IS NULL); 



/*
(13) Exercise: Display the CompanyName values from Suppliers for suppliers-
			   that provide products from the Beverages category (CategoryName in Categories).
*/

SELECT 
	CompanyName
FROM Suppliers
WHERE SupplierID IN (SELECT SupplierID
					  FROM Products
					  WHERE CategoryID = (SELECT CategoryID
										  FROM Categories
										  WHERE CategoryName = 'Beverages'));



