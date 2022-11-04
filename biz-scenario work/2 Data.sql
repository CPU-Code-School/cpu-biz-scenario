use RealEstateDB
GO

DELETE House
GO

INSERT House(BuyerName, OwnerName, ClientName, RealtorName, AddressNumber, Street, Town, HouseType, housesquarefootage, LotSquareFootage, NumberBathrooms, NumberBedrooms, DateonMarket, DateClosed, PriceAsked, PriceSold, Sold, InContract)
SELECT 'Rachel Gestetner', 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 2.5, 4, '1/12/2021', '2/22/2021', 450000, 475000, 1, 0
union select 'Elazar and Faigy Adler', 'Shaindy Braun', 'Shaindy Braun', 'Raizy Berger', 8, 'London Drive', 'Lakewood', 'Ranch', 2000, 4089, 2, 3, '4/5/2009', '7/10/2010', 200000, 200000, 1, 0
union SELECT 'Yossi Handler and Rivky Handler', 'L3C Jackson, LLC', 'Mark Farkas', 'Rivka Harnik', 423, '2nd Street', 'Lakewood', 'Colonial', 3500, 4200, 5.5, 9, '1/6/2015', '6/9/2015', 360000, 370000, 1, 0
union SELECT 'Shea Speigel', 'Greenview Equities, LLC', 'Shlomo Press', 'Moshe Celnik', 176, 'Hadassah Lane', 'Lakewood', 'Duplex', 2550, 3049.2, 2.5, 5, '5/3/2021', NULL, 549000, 600000, 0, 1
union select '', 'Sorah Hager', 'Yitzchok Tendler', 'Moshe Celnik', 1141, 'Central Avenue', 'Lakewood', 'Ranch', 855, 5000, 1, 3, '1/2/2022', null, 300000, 0, 0, 1

select * from House
 
