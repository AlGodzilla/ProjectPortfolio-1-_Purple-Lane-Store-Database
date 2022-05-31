USE Purple_Lane_Furniture_Store



--JAWABAN E

--No. 1

    SELECT [Product Name]=F.Furniture_Name, [Total Product Sold]= 
	CONVERT(VARCHAR,DTS.Furniture_Sales_Quantity)+ ' products' 
		FROM Furniture_Inventory F
		JOIN Detail_Transaction_Sales DTS
			ON F.Furniture_ID= DTS.Furniture_ID 
	WHERE F.Furniture_Cat_ID = 'PC003' OR F.Furniture_Cat_ID = 'PC001'
	AND DTS.Furniture_Sales_Price > 150000
    
--No. 2

SELECT 
    [StaffName] = Staff_Name, 
    [Total Product Sold] = Furniture_Sales_Quantity 
FROM Staff s, Sales_Transaction st, Detail_Transaction_Sales dts
WHERE 
	s.Staff_ID = st.Staff_ID AND 
	st.Sales_ID = dts.Sales_ID AND 
	MONTH(Sales_Transaction_Date) < 11 AND 
	Furniture_Sales_Quantity > 10

--No. 3

INSERT INTO Customer
VALUES 
('CU016', 'An'     , ''  , 'Male'   , 'Tirta054@gmail.com'    , '08542525221' , 'Jl. Pasar Ayam No. 14,Solear,Kabupaten Tangerang,Banten')


INSERT INTO Sales_Transaction 
VALUES 
('SA028','CU016','ST014')

INSERT INTO Detail_Transaction_Sales 
VALUES
('SA028','PR001','2021-08-12','1','1200000')




INSERT INTO Sales_Transaction 
VALUES 
('SA029','CU016','ST012')

INSERT INTO Detail_Transaction_Sales 
VALUES
('SA029','PR002','2021-09-12','1','1200000')


SELECT Customer_Name, [Total Sales Transactions] = Detail_Transaction_Sales.Furniture_Sales_Price, 
[Total Price of Product Sold] = Detail_Transaction_Sales.Furniture_Sales_Price * Detail_Transaction_Sales.Furniture_Sales_Quantity
FROM Customer
JOIN Detail_Transaction_Sales
ON Customer.Customer_ID = Detail_Transaction_Sales.Sales_ID
WHERE LEN(Customer.First_Name + Customer.Last_Name)  < 3 AND Detail_Transaction_Sales.Sales_ID > 1

--Could not be bound

SELECT, 
		[Total Sales Transactions] = DTS.Furniture_Sales_Price, 
		[Total Price of Product Sold] = DTS.Furniture_Sales_Price * DTS.Furniture_Sales_Quantity
FROM Customer C
JOIN Detail_Transaction_Sales DTS
ON C.Customer_ID = DTS.Sales_ID
JOIN Sales_Transaction 
ON C.Customer_ID = DTS.Sales_ID
GROUP BY [CustomerName] --could not be bound
HAVING  LEN(Customer.First_Name + Customer.Last_Name)  < 3 AND Detail_Transaction_Sales.Sales_ID > 1


--VERSI FELLIK
SELECT  Customer.Customer_Name C, 
		[Total Sales Transactions] = DTS.Furniture_Sales_Price, 
		[Total Price of Product Sold] = DTS.Furniture_Sales_Price * DTS.Furniture_Sales_Quantity
FROM Customer C
JOIN Sales_Transaction 
ON C.Customer_ID = DTS.Customer_ID
JOIN Detail_Transaction_Sales DTS
ON C.Sales_ID = DTS.Sales_ID
WHERE Detail_Transaction_Sales.Sales_ID > 1
GROUP BY [CustomerName] 
HAVING LEN(Customer.First_Name + Customer.Last_Name)  < 3


--Versi ketiga
SELECT  Customer_Name, 
		[Total Sales Transactions] = DTS.Furniture_Sales_Price, 
		[Total Price of Product Sold] = DTS.Furniture_Sales_Price * DTS.Furniture_Sales_Quantity
FROM Customer C
JOIN Detail_Transaction_Sales DTS
ON C.Customer_ID = DTS.Sales_ID
JOIN Sales_Transaction 
ON C.Customer_ID = DTS.Sales_ID
WHERE DTS.Sales_ID > 1
GROUP BY Customer_Name
HAVING LEN(Customer_Name) < 3
--Column 'Detail_Transaction_Sales.Furniture_Sales_Price' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.



--versi keempat
SELECT  Customer_Name, 
		[Total Sales Transactions] = DTS.Furniture_Sales_Price, 
		[Total Price of Product Sold] = DTS.Furniture_Sales_Price * DTS.Furniture_Sales_Quantity
FROM Customer C
JOIN Detail_Transaction_Sales DTS
ON C.Customer_ID = DTS.Sales_ID
JOIN Sales_Transaction 
ON C.Customer_ID = DTS.Sales_ID
WHERE DTS.Sales_ID > 1
GROUP BY Furniture_Sales_Price, Customer_Name, Furniture_Sales_Quantity
HAVING COUNT(Customer_Name) < 3



  ISNULL(dkcd.tong, 0) AS tongdkcd
FROM phuongxa a
  INNER JOIN quanhuyen b ON LEFT(a.maxa, 2) = b.mahuyen
  LEFT OUTER JOIN (
    SELECT
      maxa,
      COUNT(*) AS tong
    FROM khaosat
    WHERE CONVERT(datetime, ngaylap, 103) BETWEEN 'Sep 1 2011' AND 'Sep 5 2011'
    GROUP BY maxa
  ) AS dkcd ON dkcd.maxa = a.maxa
WHERE a.maxa <> '99'
ORDER BY a.maxa




--No. 4

SELECT  S.Supplier_Name, 
		[Total Purchase Transactions] = SUM(DTP.Furniture_Purchase_Price),
		[Total Price of Product Purchased] =  SUM(DTP.Furniture_Purchase_Quantity)*(SUM(DTP.Furniture_Purchase_Price))
FROM Supplier S 
	INNER JOIN Purchase_Transaction PT ON S.Supplier_ID = PT.Supplier_ID 
	INNER JOIN Detail_Transaction_Purchase DTP ON PT.Purchase_ID = DTP.Purchase_ID
	GROUP BY  S.Supplier_Name
HAVING
	LEN(S.Supplier_Name)>10 AND (SUM(DTP.Furniture_Purchase_Price)) >5000000



--No. 5

SELECT 
	[ProductCategoryName] = Furniture_Cat_Name, 
	[Total Products Sold] = CAST(Furniture_Sales_Quantity AS VARCHAR) + ' product(s)'
FROM 
	Product_Category pc, 
	Furniture_Inventory fi, 
	Detail_Transaction_Sales dts, 	
	(
		SELECT [Maximum Quantity] = MAX(Furniture_Stock)
		FROM Furniture_Inventory
	) AS MaximumQuantity
WHERE 
	pc.Furniture_Cat_ID = fi.Furniture_Cat_ID AND 
	fi.Furniture_ID = dts.Furniture_ID AND 
	Furniture_Cat_Name NOT LIKE ('%g%') AND 
	Furniture_Sales_Quantity > MaximumQuantity.[Maximum Quantity]

--No. 6




INI BUAT MIKKO




--No. 7
--ganti bbrp tahun dri Sales_Transaction_Date (table Detail_Transaction_Sales) jd 2020

SELECT 
	[StaffName] = Staff_Name, 
	[Gender] = LEFT(Staff_Gender, 1),
	[Total Product Purchased] = Furniture_Sales_Quantity
FROM 
	Staff s, 
	Sales_Transaction st, 
	Detail_Transaction_Sales dts,
	(
		SELECT [Average Quantity] = AVG(Furniture_Sales_Quantity)
		FROM Detail_Transaction_Sales
		WHERE YEAR(Sales_Transaction_Date) = 2020
	) AS AvgQuantity
WHERE 
	s.Staff_ID = st.Staff_ID AND
	st.Sales_ID = dts.Sales_ID AND
	Furniture_Sales_Quantity > AvgQuantity.[Average Quantity]

--No. 8

SELECT 
	[CustomerName] = Customer_Name, 
	[CustomerEmail] = Customer_Email,
	[Phone Number] = REPLACE(REPLACE(Customer_PhoneNumber, '0', '+6'), '8', '2'),
	[Total Products Sold] = CAST(Furniture_Sales_Quantity AS VARCHAR) + ' product(s)'
FROM 
	Customer c, 
	Detail_Transaction_Sales dts, 	
	(
		SELECT [Average Quantity] = AVG(Furniture_Sales_Quantity)
		FROM Detail_Transaction_Sales
	) AS AvgQuantity
WHERE 
	c.Customer_ID = C.Customer_ID AND
	dts.Sales_ID = dts.Sales_ID AND
	c.Customer_Name LIKE ('%j%') AND
	c.Customer_PhoneNumber IS NOT NULL AND
	Furniture_Sales_Quantity > AvgQuantity.[Average Quantity]


--No. 9

CREATE VIEW Q4LargeSupplierTransactionsData
AS
	SELECT 
		[SupplierName] = Supplier_Name,
		[SupplierAddress] = Supplier_Address,
		[Total Price of Product Purchased] = Furniture_Purchase_Quantity*Furniture_Purchase_Price,
		[Maximum Product Purchased] = MAX(Furniture_Purchase_Quantity)
	FROM Supplier s, Purchase_Transaction pt, Detail_Transaction_Purchase dtp
	WHERE 
		s.Supplier_ID = pt.Supplier_ID AND
		pt.Purchase_ID = dtp.Purchase_ID AND
		MONTH(Purchase_Transaction_Date) > 9
	GROUP BY Supplier_Name, Supplier_Address, Furniture_Purchase_Quantity, Furniture_Purchase_Price
	HAVING MAX(Furniture_Purchase_Quantity) > 15

--No. 10

CREATE VIEW [CustomerTransactionData] AS

	SELECT  [CustomerName] = C.Customer_Name, 
			[Total Product Sold ] = SUM(DTS.Furniture_Sales_Quantity), 
			[Max Product Sold In a Transaction] = MAX(DTS.Furniture_Sales_Quantity)
		
	FROM Customer C
	INNER JOIN Sales_Transaction ST ON C.Customer_ID= ST.Customer_ID
	INNER JOIN Detail_Transaction_Sales DTS ON ST.Sales_ID = DTS.Sales_ID

	WHERE  C.Customer_Name LIKE '% %'
	GROUP BY C.Customer_Name
	HAVING MAX(DTS.Furniture_Sales_Quantity)>1  
	

	INSERT INTO Customer
	VALUES
	('CU016', 'Jarum'  , 'Male'   , 'Tirta054@gmail.com'    , '08542525221' , 'Jl. Pasar Ayam No. 14,Solear,Kabupaten Tangerang,Banten')