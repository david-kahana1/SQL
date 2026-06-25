/*
Scalar Functions
*/


--Math Functions:

SELECT 
	 UnitPrice
	,UnitPrice*1.18 AS 'PlusVAT'
	,ROUND(UnitPrice*1.18, 0) AS 'Rounded VAT'
FROM Products;

--

SELECT CEILING(3.4); --> 4
SELECT FLOOR(3.4); --> 3
SELECT ROUND(3.6, 1); --> 3.6
SELECT ROUND(3.6, 0); --> 4
SELECT ROUND(3.6555, 3); --> 3.6560

--

SELECT 
	 UnitPrice
	,UnitPrice*1.18 AS 'PlusVAT'
	,ROUND(UnitPrice*1.18, 0) AS 'Rounded VAT'
	,CEILING(UnitPrice) AS 'CeilingUnitPrice'
	,FLOOR(UnitPrice) AS 'FloorUnitPrice'
	,FLOOR(ROUND(UnitPrice*1.18, 0)) AS 'Floor&Round'
FROM Products
ORDER BY UnitPrice DESC;


--String Functions:

SELECT 
	 FirstName
	,LastName
	,UPPER(FirstName) AS 'UpperCase'
	,LOWER(LastName) AS 'LowerCase'
	,LEN(FirstName) AS 'Length'
	,LEFT(FirstName, 3) As 'Left3'
	,Right(FirstName, 2) As 'Right2'
	,PhotoPath AS 'Emp Image'
	,REPLACE(PhotoPath, 'bmp', 'jpg') AS 'NewImagePath'
FROM Employees;

--

SELECT 
	 EmployeeID
	,FirstName
	,LastName
	,Region
	,LOWER (Address + City) AS 'FULL ADDDRESS'
FROM Employees
WHERE Region IS NULL AND EmployeeID LIKE '[^5]' AND EmployeeID LIKE '[^7]'
ORDER BY FirstName DESC;


--Text Concatination:

SELECT 
	 FirstName
	,LastName
	,CONCAT(FirstName,' ', LastName) AS 'Full Name'
	,CONCAT(SUBSTRING(FirstName,1,1)
	,SUBSTRING(LastName,1,1) ) AS 'Initials'
FROM Employees;


/*
Date & Time Functions:
*/

-- Show Today's Date:

SELECT GETDATE() AS 'Now';

--

SELECT HireDate
	,YEAR(HireDate) AS 'Hire Year'
	,MONTH(HireDate) AS 'Hire Month'
	,DAY(HireDate) AS 'Hire Day'
	,GETDATE() AS 'Curent Day'
	,DATEDIFF(DAY, HireDate, GETDATE()) AS 'Days Since Hire'
	,DATEDIFF(YEAR, HireDate, GETDATE()) AS 'Years Since Hire'
	,DATEDIFF(MONTH, HireDate, GETDATE()) AS 'Months Since Hire'
	,DATEADD(Year, 10, HireDate) AS '10 Years Aniversary'
	,DATENAME(MONTH, GETDATE()) 
	,DATENAME(HOUR, GETDATE())
	,DATENAME(MINUTE, GETDATE())
FROM Employees;

--

SELECT HireDate
	,FORMAT(HireDate, 'dddd')
	,FORMAT(HireDate, 'ddd')
	,FORMAT(HireDate, 'dd')
	,FORMAT(HireDate, 'd')
	,FORMAT(HireDate, 'dddd, MMMM, dd, yyyy')
	,FORMAT(HireDate, 'd-MMM')
FROM Employees;


--ISNULL():

SELECT 
	CompanyName
	,City
	,Region
	,ISNULL(Region, 'No Region') AS 'NoNull'
FROM Customers;

