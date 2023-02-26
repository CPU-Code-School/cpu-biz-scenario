use RealEstateDB

insert House(HouseNum,HouseStreet,HouseTown,HouseType,SqrFootOfHouse,SqrFootOfLot,NumOfBath,NumOfBed,HouseOwner,Realtor,Client,DateOnMarket,Buyer,DateSold,AskingPrice,SellingPrice)
select 5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 2.5 , 4, 'Lynn Drive, LLC', 'Rivka Harnik', 'Yaakov Fishman', '1/12/2021', 'Rachel Gestetner', '2/22/2021', 450000.00, 475000.00
union select 8, 'London Drive', 'Lakewood', 'Ranch', 2000, 4089, 2, 3, 'Shaindy Braun', 'Raizy Berger', 'Shaindy Braun', '4/5/2009', 'Elazar and Faigy Adler', '7/10/2010', 200000.00, 200000.00
union select 423, '2nd Street', 'Lakewood', 'Colonial', 3500, 4200, 5.5, 9, 'L3C Jackson, LLC', 'Rivka Harnik', 'Mark Farkas', '1/6/2015', 'Yossi and Rivky Handler', '6/9/2015', 360000.00, 370000.00
union select 176, 'Hadassah Lane', 'Lakewood', 'duplex', 2550, 3049.2, 2.5, 5, 'Greenview Equities, LLC', 'shlomo press', 'Moshe Celnik', '5/3/2021', 'Shea Speigel', null, 549000.00, 600000.00
union select 1141, 'Central Avenue', 'Lakewood', 'ranch', 855, 5000, 1, 3, 'Sorah Hager', 'Yitzchok Tendler', 'Moshe Celnik', '1/2/2022', null, null, 300000.00, null

select * from House h 

