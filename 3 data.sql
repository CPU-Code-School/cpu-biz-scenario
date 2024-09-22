use BicycleShopDb
go
delete Shop
go

insert Shop(FirstName, LastName, StreetAddress, PhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, NewOrUsed, ConditionWhenReceived, DateSold, SeasonSold, SoldPrice)
select 'Shmuel', 'Bitton', '4 Sparrow Drive Spring Valley NY 10977', '845-425-9501', 'Schwinn', '24"', 'Black', '2022-07-20', 110.00, 'New', null, '2022-09-15', 'Summer', 220.00
union select 'Jack', 'Sullivan', '1889 Fifty Second Street Brooklyn NY 11218', '718-350-4401', 'Trek', '24"', 'Gray', '2023-01-26', 150.00, 'New', null, '2023-05-11', 'Spring', 250.00
union select 'Rochel', 'Cohen', '95 Francis Place Spring Valley NY 10977', '845-371-2052', 'Huffy', '16"', 'Pink', '2023-03-13', 30.00, 'New', null, '2023-06-18', 'Spring', 85.00 
union select 'Meir', 'Stern', '7 Bluejay Street Spring Valley NY 10977', '845-426-9806', 'Razor', '20"', 'Slate', '2023-08-06', 17.00, 'Used', 'Restoration', '2023-10-26', 'Fall', 61.00
union select 'Yehuda', 'Gluck', '11 Parness Rd. #3 South Fallsburg	NY 12733', '845-434-4011', 'Kent', '26"', 'Black', '2024-01-08', 120.00, 'New', null, '2024-02-19', 'Winter', 250.00
union select 'Gedallia', 'Gold', '2036 Park Avenue Lakewood NJ 08701', '732-930-6402', 'Trek', '20"', 'Blue', '2022-05-12', 105.00, 'Used', 'Minor Fixup', '2024-02-07', 'Winter', 200.00
union select 'Binyomin', 'Shapiro', '66 Carlton Road Monsey NY 10952', '845-356-9027', 'Schwinn', '26"', 'Gray', '2022-04-22', 150.00, 'Used', 'Perfect', '2024-01-09', 'Winter', 135.00
union select 'Malka', 'Fischer', '80 Twin Avenue Spring Valley NY 10977', '845-425-9002', 'Malibu', '18"', 'Pink', '2022-12-04', 90.00, 'New', null, '2023-06-23', 'Summer', 120.00
union select 'Yonason', 'Katz', '1470 E 26th Street Brooklyn NY 11223', '718-376-2658', 'Huffy', '20"', 'Blue', '2023-06-14', 76.00, 'New', null, '2023-08-03', 'Summer', 130.00
union select 'Bracha', 'Smith', '25 North Rigaud Road Spring Valley NY 10977', '845-352-1099', 'Razor', '24"', 'Slate', '2023-05-18', 167.00, 'New', null, '2023-07-22', 'Summer', 220.00
union select 'Moshe', 'Weiss', '25 Old Nyack Turnpike Monsey NY 10952', '845-356-9423', 'Kent', '24"', 'Black', '2022-12-13', 103.00, 'Used', 'Minor Fixup', '2023-08-16', 'Summer', 195.00
union select 'Yehuda', 'Jacobs', '1650 Lexington Avenue Lakewood NJ 08701', '732-930-8054', 'Schwinn', '20"', 'Blue', '2022-04-09', 42.00, 'Used', 'Major Fixup', '2022-07-20', 'Summer', 98.00

select * from Shop