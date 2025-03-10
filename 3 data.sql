use BicycleShopDb
go
delete Shop
go

insert Shop(FirstName, LastName, StreetAddress, PhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, SoldPrice)
select 'Shmuel', 'Bitton', '4 Sparrow Drive Spring Valley NY 10977', '8454259501', 'Schwinn', '24', 'Black', '2022-07-20', 110.00, 1, null, '2022-09-15', 220.00
union select 'Jack', 'Sullivan', '1889 Fifty Second Street Brooklyn NY 11218', '7183504401', 'Trek', '24', 'Gray', '2023-01-26', 150.00, 1, null, '2023-05-11', 250.00
union select 'Rochel', 'Cohen', '95 Francis Place Spring Valley NY 10977', '8453712052', 'Huffy', '16', 'Pink', '2023-03-13', 30.00, 1, null, '2023-06-18', 85.00 
union select 'Meir', 'Stern', '7 Bluejay Street Spring Valley NY 10977', '8454269806', 'Razor', '20', 'Slate', '2023-08-06', 17.00, 0, 'Restoration', '2023-10-26', 61.00
union select 'Yehuda', 'Gluck', '11 Parness Rd. #3 South Fallsburg	NY 12733', '8454344011', 'Kent', '26', 'Black', '2024-01-08', 120.00, 1, null, '2024-02-19', 250.00
union select 'Gedallia', 'Gold', '2036 Park Avenue Lakewood NJ 08701', '7329306402', 'Trek', '20', 'Blue', '2022-05-12', 105.00, 0, 'Minor Fixup', '2024-02-07', 200.00
union select 'Binyomin', 'Shapiro', '66 Carlton Road Monsey NY 10952', '8453569027', 'Schwinn', '26', 'Gray', '2022-04-22', 150.00, 0, 'Perfect', '2024-01-09', 135.00
union select 'Malka', 'Fischer', '80 Twin Avenue Spring Valley NY 10977', '8454259002', 'Malibu', '18', 'Pink', '2022-12-04', 90.00, 1, null, '2023-06-23', 120.00
union select 'Yonason', 'Katz', '1470 E 26th Street Brooklyn NY 11223', '7183762658', 'Huffy', '20', 'Blue', '2023-06-14', 76.00, 1, null, '2023-08-03', 130.00
union select 'Bracha', 'Smith', '25 North Rigaud Road Spring Valley NY 10977', '8453521099', 'Razor', '24', 'Slate', '2023-05-18', 167.00, 1, null, '2023-07-22', 220.00
union select 'Moshe', 'Weiss', '25 Old Nyack Turnpike Monsey NY 10952', '8453569423', 'Kent', '24', 'Black', '2022-12-13', 103.00, 0, 'Minor Fixup', '2023-08-16', 195.00
union select 'Yehuda', 'Jacobs', '1650 Lexington Avenue Lakewood NJ 08701', '7329308054', 'Schwinn', '20', 'Blue', '2022-04-09', 42.00, 0, 'Major Fixup', '2022-07-20', 98.00

select * from Shop