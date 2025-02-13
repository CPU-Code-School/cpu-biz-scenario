use CostumeDB
go
drop table if exists Customer
go
create table dbo.Customer(
    CustomerID int identity primary key,
    FirstName varchar(15) not null constraint c_Customer_first_name_not_blank check(FirstName <> ''),
    LastName varchar(15) not null constraint c_Customer_last_name_not_blank check(LastName <> ''),
    CostumeBought varchar(20) not null constraint c_Customer_costume_must_be_one_of_the_options
		check(CostumeBought in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    CostumeSize char(2) constraint c_Customer_costume_size_must_be_either_XS_S_M_L_or_XL check(CostumeSize in ('XS', 'S', 'M', 'L', 'XL')),
    CostPrice as case CostumeSize
        when 'XS' then 15
        when 'S' then 17
        when 'M' then 20
        when 'L' then 22
        when 'XL' then 25
        end persisted,
    AmountBought int not null constraint c_Customer_amount_bought_not_negative check(AmountBought > 0),
    SoldPricePerCostume int null, --not less than cost price
    FullPrice as case 
        when CostumeSize = 'XS' and SoldPricePerCostume = 20 then '1'
        when CostumeSize = 'S' and SoldPricePerCostume = 22 then '1'
        when CostumeSize = 'M' and SoldPricePerCostume = 25 then '1'
        when CostumeSize = 'L' and SoldPricePerCostume = 27 then '1'
        when CostumeSize = 'XL' and SoldPricePerCostume = 30 then '1'
        else '0'
        end persisted,
    DateBought date not null,
    DateSold date null, --not before date bought
    TotalPrice as (AmountBought * SoldPricePerCostume),
    Constraint c_Customer_Sold_price_per_costume_equal_or_greater_than_cost_price check(CostPrice <= SoldPricePerCostume),
    constraint c_Customer_date_bought_before_date_sold check(DateBought < DateSold)
)