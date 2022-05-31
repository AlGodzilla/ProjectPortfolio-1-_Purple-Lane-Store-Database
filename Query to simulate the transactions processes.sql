USE Purple_Lane_Furniture_Store



--JAWABAN D

--A. Sales Transaction Simulation

--1. Before Sales Transaction

SELECT * FROM Sales_Transaction

--AND

SELECT * FROM Detail_Transaction_Sales


--2. Sales Transaction start

BEGIN TRANSACTION

INSERT INTO Sales_Transaction VALUES 
('SA026','CU012','ST011')

--AND

INSERT INTO Detail_Transaction_Sales
VALUES ('SA026','PR005', '2021-06-02', '10', '200000000')

--3. After Sales Transaction

SELECT * FROM Sales_Transaction

--AND

SELECT * FROM Detail_Transaction_Sales

--4. Commit The Transaction

COMMIT;


--B. Purchase Transaction Simulation

--1. Before Purchase Transaction

SELECT * FROM Purchase_Transaction

--AND

SELECT * FROM Detail_Transaction_Purchase

--2. Purchase Transaction Start

BEGIN TRANSACTION

INSERT INTO Purchase_Transaction VALUES
('PA026','SU007','ST001')

--AND

INSERT INTO Detail_Transaction_Purchase VALUES 
('PA026','PR007','2021-06-02','200','70000000')

--3. After Purchase Transaction

SELECT * FROM Purchase_Transaction

--AND

SELECT * FROM Detail_Transaction_Purchase

--4. Commit The Transaction

COMMIT;