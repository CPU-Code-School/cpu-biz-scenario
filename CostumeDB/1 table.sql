/*
primary key int not null identity primary key
CustomerFirstName varchar(35) not null not blank
CustomerLastName varchar(35) not null not blank,
Costume varchar(30) not null not blank,
CustomerSize varchar(2) not null not blank and between xs and xl,
PriceSold int null in 20,22,25,27,30
AmountSold int not null not negative,
DateBought date not null between January 1, 2020 and until current date,
DateSold date null and not future date,
TotalPricePaid computed column
PaidFullPrice computed column
CostPrice computed column
Multi Column Constraints
    PriceBought <= PriceSold
    DateBought <=DateSold
    (PriceSold is null and DateSold is null and AmountSold is null) or (PriceSold is not null and DateSold is not null and AmountSold is not null)
*/

use CostumeDB
go

drop table if exists dbo.Costume
go

create table dbo.Costume(
    CostumeId int not null identity primary key,
    CustomerFirstName varchar(35) not null
        constraint c_Costume_customer_first_name_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(35) not null
        constraint c_Costume_customer_last_name_cannot_be_blank check(CustomerLastName <> ''),
    Costume varchar(30) not null
        constraint c_Costume_costume_cannot_be_blank check(Costume <> ''),
    CustomerSize varchar(2) not null
        constraint c_Costume_customer_size_cannot_be_blank check(CustomerSize <> ''),
        constraint c_Costume_customer_size_must_be_between_xs_and_xl check(CustomerSize in ('XS', 'S', 'M', 'L', 'XL')),
    AmountSold int not null
        constraint c_Costume_amount_sold_cannot_be_negative check(AmountSold >= 0),
    DateBought date not null
        constraint c_Costume_date_bought_between_January_1_2020_and_current_date check(DateBought between 'January 1, 2020' and getdate()),
    DateSold date null
        constraint c_Costume_date_sold_cannot_be_future_date check(DateSold between 'January 1, 2020' and getdate()),
    PriceSold int null
        constraint c_Costume_price_sold_must_be_20_22_25_27_30 check(PriceSold in (20,22,25,27,30)),
    TotalPricePaid as AmountSold * PriceSold persisted,
    CostPrice as case
        when CustomerSize = 'XS' then 15
        when CustomerSize = 'S' then 17
        when CustomerSize = 'M' then 20
        when CustomerSize = 'L' then 22
        when CustomerSize = 'XL' then 25 end persisted,
    FullPrice as case when PriceSold = case
        when CustomerSize = 'XS' then 15
        when CustomerSize = 'S' then 17
        when CustomerSize = 'M' then 20
        when CustomerSize = 'L' then 22
        when CustomerSize = 'XL' then 25 end then 0 else 1 end persisted,
            constraint c_Costume_cost_price_must_be_less_than_or_equal_to_price_sold check (CostPrice <= PriceSold),
            constraint c_Costume_date_bought_must_be_before_or_same_as_date_sold check(DateBought<=DateSold),
            constraint c_Costume_price_sold_and_date_sold_must_both_be_null_or_have_value check((PriceSold is null and DateSold is null) or (PriceSold is not null and DateSold is not null))
)
go
