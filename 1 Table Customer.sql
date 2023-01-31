use CostumeBusinessDB
go 
drop table if exists dbo.Customer
go 

create table dbo.Customer(
    CustomerId int not null identity primary key,
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
    DateBought date not null,
    DateSold date not null 
        constraint ck_Customer_Date_Sold_must_be_before_or_on_the_current_date check(DateSold <= getdate()),
    FullPrice as case 
                    when SoldPricePerCostume = CostPricePerCostume then 0
                    else 1 
                end persisted,
    CustomerTotal as SoldPricePerCostume * AmountBought persisted,
    constraint ck_Customer_Date_Bought_must_be_between_01_01_2020_and_Date_Sold check(DateBought between '01/01/2020' and DateSold),
    constraint ck_Customer_Sold_Price_Per_Costume_must_be_between_Cost_Price_Per_Costume_and_30 check(SoldPricePerCostume between CostPricePerCostume and 30), 
    constraint ck_Cost_Price_Per_Costume_must_match_up_correctly_to_the_Costume_Size check(
        (CostPricePerCostume = 15 and CostumeSize = 'XS') 
        or (CostPricePerCostume = 17 and CostumeSize = 'S') 
        or (CostPricePerCostume = 20 and CostumeSize = 'M') 
        or (CostPricePerCostume = 22 and CostumeSize = 'L')
        or (CostPricePerCostume = 25 and CostumeSize = 'XL'))
    )

	