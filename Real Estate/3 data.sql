DELETE House
GO

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 
UNION SELECT    8, 'London Drive', 'Lakewood', 'Ranch', 2000, 4089, 3, 2,'Shaindy Braun', 'Shaindy Braun', 'Raizy Berger', 'Elazar and Faigy Adler', '4/5/2009', 200000, 200000, '7/10/2010'
UNION SELECT    423, '2nd Street', 'Lakewood', 'Colonial', 3500, 4200, 9, 5.5, 'L3C Jackson, LLC', 'Mark Farkas', 'Rivka Harnik', 'Yossi Handler and Rivky Handler', '1/6/2015', 360000, 370000, '6/9/2015'
UNION SELECT    176, 'Hadassah Lane', 'Lakewood', 'duplex', 2550, 3049.2, 5, 2.5, 'Greenview Equities, LLC', 'shlomo press', 'Moshe Celnik', 'Shea Speigel', '5/3/2021', 549000, 600000, null
UNION SELECT    1141, 'Central Avenue', 'Lakewood', 'ranch', 855, 5000, 3, 1, 'Sorah Hager', 'Yitzchok Tendler', 'Moshe Celnik', '', '1/2/2022', 300000, null, null
