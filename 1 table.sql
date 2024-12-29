use BikeShopDB
go

drop table if exists Bike
go 
create table dbo.bike(
    BikeId int primary key identity,
    CustomerName varchar(50),
    CustomerAddress varchar(150),
    PhoneNumber varchar(20),
    BikeCompany varchar(100) not null constraint ck_Bike_Company_cannot_be_blank check(BikeCompany <> ''),
    BikeSize varchar(6) not null constraint ck_Bike_Size_cannot_be_blank check(BikeSize <> ''),
    BikeColor varchar(15) not null constraint ck_Bike_Color_cannot_be_blank check(BikeColor <> ''),
    DatePurchased date not null constraint ck_Date_Purchased_must_be_after_1st_of_march_2022 check(DatePurchased > '2022-03-01'),
    PurchasePrice decimal(6,2) not null,
    New varchar (12) constraint ck_New_column_must_be_either_New_or_Used check(New in('new','Used')),
    ConditionReceived varchar (11),
    dateSold date,
    season varchar(10) not null constraint ck_season_cannot_be_blank check(season <> ''),
    SalePrice decimal(6,2) constraint ck_Sale_price_cannot_be_more_then_3000 check(SalePrice <3001),

    CONSTRAINT ck_Condition_Received_for_a_used_bike_must_be_either_In_Perfect_or_Minor_fixup_or_Major_fixup_or_Restoration
    CHECK (new <> 'used' or ConditionReceived in('Perfect', 'Minor Fixup', 'Major Fixup', 'Restoration')),
    constraint ck_Date_sold_must_be_after_date_purchased check(dateSold > DatePurchased)
    )




/*



 4: )
dateSold date
season varchar(10) not null not blank
sale price decimal(6,2)
    CONSTRAINT ck_Condition_Received_for_a_used_bike_must_be_either_In_Perfect_or_Minor_fixup_or_Major_fixup_or_Restoration CHECK (
        case
        when New = 'used' then ConditionWhenReceived in('Perfect', 'Minor Fixup', 'Major Fixup', 'Restoration')
*/


/*
CustomerName, Address, PhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice
SELECT 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', '845-425-9501', 'Schwinn', '24"', 'Black', '2022-07-20', 110.00, 'New', 'NA', '2022-09-15', 'Summer', 220.00
UNION SELECT 'Jack Sullivan', '1889 Fifty Second Street Brooklyn NY 11218', '718-350-4401', 'Trek', '24"', 'Gray', '2023-01-26', 150.00, 'New', 'NA', '2023-05-11', 'Spring', 250.00
UNION SELECT 'Rochel Cohen', '95 Francis Place Spring Valley NY 10977', '845-371-2052', 'Huffy', '16"', 'Pink', '2023-03-13', 30.00, 'New', 'NA', '2023-06-18', 'Spring', 85.00
UNION SELECT 'Meir Stern', '7 Bluejay Street Spring Valley NY 10977', '845-426-9806', 'Razor', '20"', 'Slate', '2023-08-06', 17.00, 'Used', 'Restoration', '2023-10-26', 'Fall', 61.00
UNION SELECT 'Yehuda Gluck', '11 Parness Rd. #3 South Fallsburg NY 12733', '845-434-4011', 'Kent', '26"', 'Black', '2024-01-08', 120.00, 'New', 'NA', '2024-02-19', 'Winter', 250.00
UNION SELECT 'Gedallia Gold', '2036 Park Avenue Lakewood NJ 08701', '732-930-6402', 'Trek', '20"', 'Blue', '2022-05-12', 105.00, 'Used', 'Minor Fixup', '2024-02-07', 'Winter', 200.00
UNION SELECT 'Binyomin Shapiro', '66 Carlton Road Monsey NY 10952', '845-356-9027', 'Schwinn', '26"', 'Gray', '2022-04-22', 150.00, 'Used', 'Perfect', '2024-01-09', 'Winter', 135.00
UNION SELECT 'Malka Fischer', '80 Twin Avenue Spring Valley NY 10977', '845-425-9002', 'Malibu', '18"', 'Pink', '2022-12-04', 90.00, 'New', 'NA', '2023-06-23', 'Summer', 120.00
UNION SELECT 'Yonason Katz', '1470 E 26th Street Brooklyn NY 11223', '718-376-2658', 'Huffy', '20"', 'Blue', '2023-06-14', 76.00, 'New', 'NA', '2023-08-03', 'Summer', 130.00
UNION SELECT 'Bracha Smith', '25 North Rigaud Road Spring Valley NY 10977', '845-352-1099', 'Razor', '24"', 'Slate', '2023-05-18', 167.00, 'New', 'NA', '2023-07-22', 'Summer', 220.00
UNION SELECT 'Moshe Weiss', '25 Old Nyack Turnpike Monsey NY 10952', '845-356-9423', 'Kent', '24"', 'Black', '2022-12-13', 103.00, 'Used', 'Minor Fixup', '2023-08-16', 'Summer', 195.00
UNION SELECT 'Yehuda Jacobs', '1650 Lexington Avenue Lakewood NJ 08701', '732-930-8054', 'Schwinn', '20"', 'Blue', '2022-04-09', 42.00, 'Used', 'Major Fixup', '2022-07-20', 'Summer', 98.00



*/
