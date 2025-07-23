use BikeDB
go
Delete BikeShop
go
insert BikeShop(CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerZipCode, PhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, SeasonSold, SoldPrice)
select 'Shmuel Bitton', '4 Sparrow Drive', 'Spring Valley', 'NY', '10977', '845-425-9501', 'Schwinn', 24, 'Black', '07/20/2022', 110.00, 1, null, '09/15/2022', 'Summer', 220.00
union select 'Jack Sullivan', '1889 Fifty Second Street', 'Brooklyn', 'NY', '11218', '718-350-4401', 'Trek', 24, 'Gray', '01/26/2023', 150.00, 1, null, '05/11/2023', 'Spring', 250.00
union select 'Rochel Cohen', '95 Francis Place', 'Spring Valley', 'NY', '10977', '845-371-2052', 'Huffy', 16, 'Pink', '03/13/2023', 30.00, 1, null, '06/18/2023', 'Spring', 85.00 
union select 'Meir Stern', '7 Bluejay Street', 'Spring Valley', 'NY', '10977', '845-426-9806', 'Razor', 20, 'Slate', '08/06/2023', 17.00, 0, 4, '10/26/2023', 'Fall', 61.00
union select 'Yehuda Gluck', '11 Parness Rd. #3', 'South Fallsburg', 'NY', '12733', '845-434-4011', 'Kent', 26, 'Black', '01/08/2024', 120.00, 1, null, '02/19/2024', 'Winter', 250.00
union select 'Gedallia Gold', '2036 Park Avenue', 'Lakewood', 'NJ', '08701', '732-930-6402', 'Trek', 20, 'Blue', '05/12/2022', 105.00, 0, 2, '02/07/2024', 'Winter', 200.00
union select 'Binyomin Shapiro', '66 Carlton Road', 'Monsey', 'NY', '10952', '845-356-9027', 'Schwinn', 26, 'Gray', '04/22/2022', 150.00, 0, 1, '01/09/2024', 'Winter', 135.00
union select 'Malka Fischer', '80 Twin Avenue', 'Spring Valley', 'NY', '10977', '845-425-9002', 'Malibu', 18, 'Pink', '12/04/2022', 90.00, 1, null, '06/23/2023', 'Summer', 120.00
union select 'Yonason Katz', '1470 E 26th Street', 'Brooklyn', 'NY', '11223', '718-376-2658', 'Huffy', 20, 'Blue', '06/14/2023', 76.00, 1, null, '08/03/2023', 'Summer', 130.00
union select 'Bracha Smith', '25 North Rigaud Road', 'Spring Valley', 'NY', '10977', '845-352-1099', 'Razor', 24, 'Slate', '05/18/2023', 167.00, 1, null, '07/22/2023', 'Summer', 220.00
union select 'Moshe Weiss', '25 Old Nyack Turnpike', 'Monsey', 'NY', '10952', '845-356-9423', 'Kent', 24, 'Black', '12/13/2022', 103.00, 0, 2, '08/16/2023', 'Summer', 195.00
union select 'Yehuda Jacobs', '1650 Lexington Avenue', 'Lakewood', 'NJ', '08701', '732-930-8054', 'Schwinn', 20, 'Blue',' 04/09/2022', 42.00, 0, 3, '07/20/2022', 'Summer', 98.00
