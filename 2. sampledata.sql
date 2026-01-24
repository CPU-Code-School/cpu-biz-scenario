use RealEstateDB
GO
DELETE RealEstate
GO
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '5 Lynn Drive', 'Toms River', 'Colonial', 4, 2.5, 3000, 42000, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', '1/12/2021', '2/22/2021', 450000, 475000, 'Rachel Gestetner', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '8 London Drive', 'Lakewood', 'Ranch', 3, 2, 2000, 4089, 'Shaindy Braun', 'Shaindy Braun', 'Raizy Berger', '4/5/2009', '7/10/2010', 200000, 200000, 'Elazar and Faigy Adler', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '423 2nd Street', 'Lakewood', 'Colonial', 9, 5.5, 3500, 4200, 'L3C Jackson, LLC', 'Mark Farkas', 'Rivka Harnik', '1/6/2015', '6/9/2015', 360000, 370000, 'Yossi Handler and Rivky Handler', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '176 Hadassah Lane', 'Lakewood', 'duplex', 5, 2.5, 2550, 3049.2 , 'Greenview Equities, LLC', 'shlomo press', 'Moshe Celnik', '5/3/2021', null, 549000, 600000, 'Shea Speigel', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '1141 Central Avenue', 'Lakewood', 'ranch', 3, 1, 855, 5000, 'Sorah Hager', 'Yitzchok Tendler', 'Moshe Celnik', '1/2/2022', null, 300000, null, null, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '101 Oak St', 'Jackson', 'colonial', 4, 2.5, 2400, 12000, 'John Smith', 'Smith Family', 'Amy Lopez', '2023-01-10', '2023-03-05', 450000, 465000, 'Robert King', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '55 Pine Ave', 'Brick', 'ranch', 3, 2.0, 1800, 9000, 'Linda Brown', 'Brown Trust', 'Mark Jones', '2023-02-01', '2023-04-10', 375000, 380000, 'Susan Hall', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '88 Maple Rd', 'Howell', 'split-level', 4, 2.0, 2100, 11000, 'George White', 'White LLC', 'Amy Lopez', '2023-01-15', '2023-02-28', 425000, 430000, 'Daniel Green', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '14 Cedar Ln', 'Lakewood', 'duplex', 5, 3.0, 2600, 15000, 'Aaron Cohen', 'Cohen Group', 'Rachel Stein', '2023-03-01', '2023-05-01', 520000, 540000, 'Miriam Gold', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '200 Birch Blvd', 'Manchester', 'townhouse', 3, 2.5, 1900, 5000, 'Nancy Reed', 'Reed Holdings', 'Tom Baker', '2023-02-20', '2023-04-15', 360000, 365000, 'Kevin Moore', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '9 Elm Ct', 'Jackson', 'bi-level', 4, 2.5, 2300, 13000, 'Paul Adams', 'Adams Family', 'Amy Lopez', '2023-04-01', NULL, 470000, 480000, 'Brian Scott', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '77 Sunset Dr', 'Toms River', 'colonial', 5, 3.5, 3200, 20000, 'Helen Turner', 'Turner LLC', 'Mark Jones', '2023-03-15', NULL, 720000, 735000, 'Laura Evans', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '12 Ridge Rd', 'Brick', 'ranch', 3, 2.0, 1700, 8500, 'Carlos Diaz', 'Diaz Family', 'Tom Baker', '2023-04-05', NULL, 340000, 345000, 'Anthony Ruiz', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '6 Meadow Way', 'Howell', 'split-level', 4, 2.5, 2200, 14000, 'Steven Hill', 'Hill Group', 'Amy Lopez', '2023-03-25', NULL, 460000, 470000, 'Jennifer Lee', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '99 Brookside Ave', 'Manchester', 'colonial', 4, 3.0, 2800, 18000, 'Patricia Long', 'Long Realty', 'Mark Jones', '2023-02-28', NULL, 610000, 620000, 'Michael Young', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '3 Willow St', 'Jackson', 'ranch', 3, 1.5, 1600, 8000, 'Ellen Price', 'Price Family', 'Tom Baker', '2023-05-01', NULL, 315000, NULL, NULL, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '45 Forest Rd', 'Brick', 'townhouse', 2, 2.0, 1500, 4000, 'Jason Miller', 'Miller Trust', 'Rachel Stein', '2023-04-20', NULL, 290000, NULL, NULL, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '18 Hilltop Dr', 'Howell', 'bi-level', 4, 2.0, 2100, 12500, 'Ronald Scott', 'Scott LLC', 'Amy Lopez', '2023-05-03', NULL, 455000, NULL, NULL, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '66 Park Ave', 'Toms River', 'colonial', 5, 3.0, 3100, 19500, 'Deborah Allen', 'Allen Family', 'Mark Jones', '2023-04-18', NULL, 695000, NULL, NULL, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '27 Spruce Ln', 'Manchester', 'vacant land', 1, 1.0, 500, 25000, 'Land Corp NJ', 'Land Corp NJ', 'Tom Baker', '2023-03-10', NULL, 150000, NULL, NULL, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '10 Main St Apt 1A', 'Lakewood', 'apartment', 2, 1.0, 900, NULL, 'Urban Living LLC', 'Urban Living LLC', 'Rachel Stein', '2023-02-01', '2023-03-01', 220000, 225000, 'David Rosen', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '10 Main St Apt 2B', 'Lakewood', 'apartment', 1, 1.0, 750, NULL, 'Urban Living LLC', 'Urban Living LLC', 'Rachel Stein', '2023-03-01', NULL, 195000, 200000, 'Sarah Klein', 1, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '22 Ocean Blvd Apt 5C', 'Toms River', 'apartment', 3, 2.0, 1200, NULL, 'Seaside Rentals', 'Seaside Rentals', 'Mark Jones', '2023-04-01', NULL, 310000, NULL, NULL, 0, 0
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '5 River Rd Apt 3D', 'Brick', 'apartment', 2, 1.5, 1000, NULL, 'Brick Towers LLC', 'Brick Towers LLC', 'Tom Baker', '2023-03-15', '2023-04-20', 275000, 280000, 'Emily Carter', 0, 1
INSERT RealEstate (HouseAddress, Town, TypeOfHouse, Bedrooms, Bathrooms, HouseSquareFootage, LotSquareFootage, HouseOwner, Client, Realtor, DateOnMarket, DateSold, AskingPrice, SoldOrsellingPrice, Buyer, UnderContract, Sold)
select '88 Lakeside Dr Apt 7E', 'Jackson', 'apartment', 1, 1.0, 700, NULL, 'Lakeview Homes', 'Lakeview Homes', 'Amy Lopez', '2023-05-05', NULL, 185000, NULL, NULL, 0, 0
SELECT * from RealEstate