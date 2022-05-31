

USE Purple_Lane_Furniture_Store


--JAWABAN C

--DATA CUSTOMER 
INSERT INTO Customer
VALUES 
('CU001', 'Henrietta Iryna'  , 'Female' , 'Iryna@gmail.com'       , '08234567'    , 'Jl. Wangi No. 25,Balaraja, Kabupaten Tangerang,Banten'),
('CU002', 'Iman Budi'   , 'Male'   , 'Iman_Budi@gmail.com'   , '0813198631'  , 'Jl. Harum No. 17,Serang, Kabupaten Tangerang, Banten'),
('CU003', 'Susila Guntur' , 'Male'   , 'Guntur04@gmail.com'    , '0843432456'  , 'Jl. Cantik No. 08, Cisoka, Kabupaten Tangerang,Banten'),
('CU004', 'Abdul Harta'  , 'Male'   , 'Abdul_Harta@gmail.com' , '085023232'   , 'Jl. Gitar No. 07, Cikupa, Kabupaten Tangerang,Banten'),
('CU005', 'Bima Indah'  , 'Female' , 'Bima_Indah@gmail.com'  , '0811432425'  , 'Jl. Keren No. 10, Legok, Kabupaten Tangerang, Banten'),
('CU006', 'Cahaya Bahtari', 'Female' , 'Terlbahtari@gmail.com' , '08228394759' , 'Jl. AWwawawawa No. 01,Cisauk, Kabupaten Tangerang, Banten'),
('CU007', 'Rustam Budi'   , 'Male'   , 'Rustam_Man@gmail.com'  , '0823231446'  , 'Jl. Kantoran No. 25, Legok, Kabupaten Tangerang, Banten'),
('CU008', 'Sulaiman Ilham'  , 'Male'   , 'Ilma_Dahsyat@gmail.com', '08114324325' , 'Jl. Jendral Apes No.25,Sukamulya, Kabupaten Tangerang, Banten'),
('CU009', 'Mahmud Lutfi'  , 'Male'   , 'Lutfi_Piece@gmail.com' , '081314325425', 'Jl. Macet No. 77,Curug,Kabupaten Tangerang,Banten'),
('CU010', 'Alya Widya'  , 'Female' , 'Alya_Widya@gmail.com'  , '08502314342' , 'Jl. Don Lancar No. 89,Kelapa Dua,Kabupaten Tangerang,Banten'),
('CU011', 'Latifah Amir'   , 'Male'   , 'Latifah_Amir@gmail.com', '08131324242' , 'Jl. Kuda Lumping 14,Tigaraksa,Kabupaten Tangerang,Banten'),
('CU012', 'Danial Harta'  , 'Male'   , 'Harta_Dikit@gmail.com' , '0877744532'  , 'Jl. Kucing Kecil No. 22,Panongan,Kabupaten Tangerang,Banten'),
('CU013', 'Muhammad Agung'  , 'Male'   , 'Saya_Agung@gmail.com'  , '082313123232', 'Jl. Singa Ganas No. 03,Jayanti,Kabupaten Tangerang, Banten'),
('CU014', 'Eka Adi'    , 'Male'   , 'Adi_Ganteng@gmail.com' , '081334523'   , 'Jl. Dagang No. 99,Kresek,Kabupaten Tangerang,Banten'),
('CU015', 'Daud Tirta'  , 'Male'   , 'Tirta054@gmail.com'    , '08542525221' , 'Jl. Pasar Ayam No. 14,Solear,Kabupaten Tangerang,Banten')

--DATA STAFF
INSERT INTO Staff
VALUES 
('ST001', 'Wasiman','Male','Wasiman@purplelane.com', '08121978121', 'Jelupang, North Serpong, South Tangerang City, Banten 15323', '1000000'),
('ST002', 'Abdul','Male','Abdul@purplelane.com', '08321978441', 'Jl. Layar Raya No.18-20, Kelapa Dua, Tangerang, Banten', '1100000'),
('ST003', 'Tjatur','Male','Tjatur@purplelane.com', '08133448121', 'Jl. Boulevard Diponegoro No. 105 Lt. LG Supermal Karawaci, Tangerang, Banten','1200000'),
('ST004', 'Hendro','Male','Hendro@purplelane.com', '08121568121', 'Jl. Mendut Raya No 27, Bencongan Indah, Kelapa Dua, Tangerang, Banten','1300000'),
('ST005', 'Gerald','Male','Gerald@purplelane.com', '0812268121', 'Jl. Wangi No.25, Balaraja, Kabupaten Tangerang, Banten','1400000'),
('ST006', 'Kevin','Male','Kevin@purplelane.com', '0812197121', 'Jl. Keren No. 10, Legok, Kabupaten Tangerang, Banten','1200000'),
('ST007', 'Gabriel','Male','Gabriel@purplelane.com', '08821978121', 'Jl. MH Thamrin, Cikokol, Tangerang, Banten','1500000'),
('ST008', 'Jason','Male','Jason@purplelane.com', '08121898121', 'Jl. Kiasnawi No.23, Sukarasa, Tangerang, Banten','1600000'),
('ST009', 'Joserio','Male','Joserio@purplelane.com', '081121978121', 'Jl. Kiasnawi No.85, Sukarasa, Tangerang, Banten','1600000'),
('ST010', 'Christopher','Male','Christopher@purplelane.com', '08124878121', 'Jl. Harum No. 17, Serang, Kabupaten Tangerang, Banten','1700000'),
('ST011', 'Gabriella','Female','Gabriella@purplelane.com', '08121978621', 'Jl. Peta Barat Blok Gondang 1 No.4, Benda, Tangerang, Banten','1800000'),
('ST012', 'Hareliz','Female','Hareliz@purplelane.com', '08121228121', 'Jl. Jalur Sutera Boulevard No.Kav.45, Kunciran, Pinang, Tangerang, Banten','1800000'),
('ST013', 'Jocelyn','Female','Jocelyn@purplelane.com', '08121568121', 'Jl. Raya Merdeka No.86, Gerendeng, Karawaci, Tangerang, Banten','23000000'),
('ST014', 'Evangeline','Female','Evangeline@purplelane.com', '08126378121', 'Jl. Harum No. 17, Serang, Kabupaten Tangerang, Banten','24000000'),
('ST015', 'Karryn','Female','Karryn@purplelane.com', '08121978561', 'Jl. Kantoran No. 25, Legok, Kabupaten Tangerang, Banten','25000000')

--DATA SUPPLIER
INSERT INTO Supplier
VALUES 
('SU001', 'Chandra Karya', 'Jl. Jalur Sutera Boulevard Kav 22D, Panunggangan Timur, Kec. Pinang, Tangerang, Banten'),
('SU002', 'Furniture Simpati', 'Jl. Kiasnawi No.85, Sukarasa, Tangerang, Banten'),
('SU003', 'UD Mandiri', 'Jl. Peta Barat Blok Gondang 1 No.4, Benda, Tangerang, Banten'),
('SU004', 'IKEA Indonesia', 'Jl. Jalur Sutera Boulevard No.Kav.45, Kunciran, Pinang, Tangerang, Banten'),
('SU005', 'Infinity Furniture', 'Jl. Raya Merdeka No.282, Pabuaran, Karawaci, Tangerang, Banten'),
('SU006', 'Bursa Mebel', 'Jl. MH Thamrin, Cikokol, Tangerang, Banten'),
('SU007', 'Informa Furnishing', 'Jl. Boulevard Diponegoro No. 105 Lt. LG Supermal Karawaci, Tangerang, Banten'),
('SU008', 'Olympic Furniture', 'Jl. Arya Kemuning Km. 5 No. 17, Priuk Jaya, Tangerang, Banten'),
('SU009', 'Panen Raya', 'Jl. KH. Hasyim Ashari No.7 A, Pd. Pucung, Karang Tengah, Tangerang, Banten'),
('SU010', 'Hadi Baru', 'Jl. Mendut Raya No 27, Bencongan Indah, Kelapa Dua, Tangerang, Banten'),
('SU011', 'Jaya Sukses', 'Jl. Raya Merdeka No.86, Gerendeng, Karawaci, Tangerang, Banten'),
('SU012', 'Benteng Furniture', 'Jl. Kiasnawi No.23, Sukarasa, Tangerang, Banten'),
('SU013', 'klikfurniture.com', 'Jl. Halim Perdana Kusuma No.4, Jurumudi Baru, Benda, Tangerang, Banten'),
('SU014', 'FurniKita Furniture', 'Jl. Peta Barat Blok Gondang 1 No.4, Benda, Tangerang, Banten'),
('SU015', 'Aneka Jaya', 'Jl. KH Hasyim Ashari Blok B no 16-17, Cipondoh, Tangerang, Banten')

--DATA PRODUCT CATEGORY 
INSERT INTO Product_Category
VALUES
('PC001', 'Chair'),
('PC002', 'Sofa'),
('PC003', 'Stool'),
('PC004', 'Dining Table'),
('PC005', 'Wardrobe'),
('PC006', 'Cabinet'),
('PC007', 'Coffee Table'),
('PC008', 'Drawer'),
('PC009', 'Bed'),
('PC010', 'Other')

--DATA INVENTORY
INSERT INTO Furniture_Inventory
VALUES
('PR001','PC001','Cafe Chair','50'),
('PR002','PC001','Office Chair','100'),
('PR003','PC001','Small Chair','80'),
('PR004','PC002','Cafe Sofa','70'),
('PR005','PC002','Sofa Bed','65'),
('PR006','PC003','Plastik Stool','50'),
('PR007','PC003','Wooden Stool','60'),
('PR008','PC004','Marble Dining Table Set','60'),
('PR009','PC005','150cm X 70cm X 100cm  Stainless Wardrobe','45'),
('PR010','PC005','250cm X 90cm X 130cm Custom Spruce Wood Wardrobe','36'),
('PR011','PC006','IKEA Wooden Cabinet','40'),
('PR012','PC007','IKEA Coffee Table','52'),
('PR013','PC008','Custom Wooden Drawer','30'),
('PR014','PC009','King Size Premium Bed','65'),
('PR015','PC010',' 1 Set Night Lamp','6')

--DATA SALES TRANSACTION 
INSERT INTO Sales_Transaction 
VALUES 
('SA001','CU001','ST001'),
('SA002','CU002','ST002'),
('SA003','CU003','ST003'),
('SA004','CU003','ST004'),
('SA005','CU005','ST005'),
('SA006','CU006','ST006'),
('SA007','CU007','ST007'),
('SA008','CU008','ST008'),
('SA009','CU009','ST009'),
('SA010','CU011','ST010'),
('SA011','CU011','ST011'),
('SA012','CU012','ST012'),
('SA013','CU012','ST013'),
('SA014','CU015','ST014'),
('SA015','CU014','ST015'),
('SA016','CU003','ST005'),
('SA017','CU006','ST006'),
('SA018','CU002','ST007'),
('SA019','CU008','ST008'),
('SA020','CU009','ST009'),
('SA021','CU011','ST010'),
('SA022','CU001','ST011'),
('SA023','CU012','ST012'),
('SA024','CU012','ST013'),
('SA025','CU015','ST014')


--DATA PURCHASE TRANSACTION 
INSERT INTO Purchase_Transaction 
VALUES
('PA001','SU001','ST001'),
('PA002','SU002','ST002'),
('PA003','SU003','ST003'),
('PA004','SU003','ST004'),
('PA005','SU005','ST005'),
('PA006','SU006','ST006'),
('PA007','SU007','ST007'),
('PA008','SU008','ST008'),
('PA009','SU009','ST009'),
('PA010','SU011','ST010'),
('PA011','SU011','ST011'),
('PA012','SU012','ST012'),
('PA013','SU012','ST013'),
('PA014','SU015','ST014'),
('PA015','SU014','ST015'),
('PA016','SU006','ST006'),
('PA017','SU007','ST001'),
('PA018','SU008','ST002'),
('PA019','SU009','ST009'),
('PA020','SU011','ST010'),
('PA021','SU011','ST011'),
('PA022','SU012','ST012'),
('PA023','SU012','ST013'),
('PA024','SU015','ST014'),
('PA025','SU014','ST015') 

--DATA DETAIL TRANSACTION SALES
INSERT INTO Detail_Transaction_Sales 
VALUES
('SA001','PR001','2020-01-12','1','1200000'),
('SA002','PR001','2020-01-22','2','1200000'),
('SA003','PR001','2021-01-24','3','1200000'),
('SA004','PR002','2020-01-26','4','1100000'),
('SA005','PR002','2021-02-02','5','1100000'),
('SA006','PR002','2020-02-15','6','1100000'),
('SA007','PR003','2021-02-28','6','400000'),
('SA008','PR003','2021-03-11','7','400000'),
('SA009','PR004','2021-03-26','7','10000000'),
('SA010','PR004','2021-04-08','8','10000000'),
('SA011','PR005','2021-05-09','8','6000000'),
('SA012','PR005','2020-06-01','5','6000000'),
('SA013','PR006','2021-06-06','20','75000'),
('SA014','PR007','2021-07-07','10','140000'),
('SA015','PR008','2021-07-09','13','10000000'),
('SA016','PR009','2021-07-10','15','2500000'),
('SA017','PR010','2021-07-12','1','3500000'),
('SA018','PR010','2020-08-15','2','3500000'),
('SA019','PR011','2021-08-16','7','1200000'),
('SA020','PR011','2021-08-17','10','1200000'),
('SA021','PR012','2021-09-20','13','750000'),
('SA022','PR012','2020-09-26','5','750000'),
('SA023','PR013','2021-10-13','1','12650000'),
('SA024','PR014','2021-10-28','4','25000000'),
('SA025','PR015','2020-11-05','2','475000')


INSERT INTO Detail_Transaction_Purchase 
VALUES 
('PA001','PR001','2021-01-10','1','600000'),
('PA002','PR001','2021-01-20','2','650000'),
('PA003','PR001','2021-01-22','3','700000'),
('PA004','PR002','2021-01-20','4','800000'),
('PA005','PR002','2021-02-01','5','750000'),
('PA006','PR002','2021-02-10','6','650000'),
('PA007','PR003','2021-02-20','6','200000'),
('PA008','PR003','2021-03-05','7','225000'),
('PA009','PR004','2021-03-20','7','6500000'),
('PA010','PR004','2021-04-01','8','7000000'),
('PA011','PR005','2021-05-04','8','6000000'),
('PA012','PR005','2021-05-23','5','3500000'),
('PA013','PR006','2021-05-25','20','50000'),
('PA014','PR007','2021-06-07','10','90000'),
('PA015','PR008','2021-06-09','13','7000000'),
('PA016','PR009','2021-06-10','15','15000000'),
('PA017','PR010','2021-07-01','1','2250000'),
('PA018','PR010','2021-07-15','2','1750000'),
('PA019','PR011','2021-08-04','7','750000'),
('PA020','PR011','2021-08-05','10','725000'),
('PA021','PR012','2021-08-10','13','375000'),
('PA022','PR012','2021-09-06','5','425000'),
('PA023','PR013','2021-09-13','1','7625000'),
('PA024','PR014','2021-10-08','20','13000000'),
('PA025','PR015','2021-10-12','23','275000')