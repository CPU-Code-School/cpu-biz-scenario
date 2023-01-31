use CostumeBusinessDB
go 
drop table if exists dbo.Customer
go 
create table dbo.Customer(
    CustomerID int not null identity primary key,
    CustomerFirstName varchar(30) not null 
        constraint ck_Customer_Customer_First_Name_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(30) not null
        constraint ck_Customer_Customer_Last_Name_cannot_be_blank check(CustomerLastName <> ''), 
    CostumeBought varchar(18) not null
        constraint ck_Customer_Costume_Bought_must_be_a_costume_from_the_list_of_costumes_sold
        check(CostumeBought in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    CostumeSize varchar(2) not null 
        constraint ck_Customer_Costume_Size_must_be_XS_S_M_L_or_XL check(CostumeSize in ('XS','S','M','L','XL')),
    AmountBought int not null 
        constraint ck_Customer_Amount_Bought_must_be_greater_than_0 check(AmountBought > 0), 
    CostPricePerCostume decimal(4,2) not null 
        constraint ck_Customer_Cost_Price_Per_Costume_must_be_15_17_20_22_25 check(CostPricePerCostume in (15,17,20,22,25)),
    SoldPricePerCostume decimal(4,2) not null,
    FullPrice bit not null, 
    DateBought date not null,
    DateSold date not null 
        constraint ck_Customer_Date_Sold_must_be_before_or_on_the_current_date check(DateSold <= getdate()),
    CustomerTotal as SoldPricePerCostume * AmountBought persisted,
    TotalProfit as (SoldPricePerCostume - CostPricePerCostume) * AmountBought persisted,
    constraint ck_Customer_Date_Bought_must_be_between_01_01_2020_and_Date_Sold check(DateBought between '01/01/2020' and DateSold),
    constraint ck_Customer_Sold_Price_Per_Costume_must_be_between_Cost_Price_Per_Costume_and_30 check(SoldPricePerCostume between CostPricePerCostume and 30), 
    constraint ck_Customer_FullPrice_is_1_only_when_SoldPricePerCostume_does_not_equal_CostPricePerCostume
    check((SoldPricePerCostume = CostPricePerCostume and FullPrice = 0) or (SoldPricePerCostume <> CostPricePerCostume and FullPrice = 1))
)
