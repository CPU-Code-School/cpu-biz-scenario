use CostumeDB
go
drop table if exists Sales
go

create table dbo.Sales(
    CustomerId int not null identity primary key,
    CustomerFirstName varchar(50) not null 
        constraint ck_sales_customer_first_name_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(50) not null 
        constraint ck_sales_customer_last_name_cannot_be_blank check(CustomerLastName <> ''), 
    CostumesBought varchar(25) not null
        constraint ck_sales_costume_is_specific check(CostumesBought in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy','Colonial Girl','Elephant','Fire Man','Police Man', 'Princess', 'Zebra')),
    CostumeSize varchar(2) not null 
        constraint ck_sales_costume_size_is_specific check(CostumeSize in ('XS', 'S', 'M', 'L', 'XL')),
    Quantity int not null 
        constraint ck_sales_quantity_must_be_at_least_1 check(Quantity > 0),
    PriceSoldPerCostume int not null 
        constraint ck_sales_price_sold_per_costume_there_are_fixed_prices check(PriceSoldPerCostume in (15,17,20,22,25,27,30)),
    DateBought date not null
        constraint ck_sales_date_bought_must_be_after_Jan_1_2020 check(DateBought >= 'Jan 1 2020'),
    DateSold date not null, 
    CostPricePerCostume as
        case CostumeSize
        when 'XS' then 15
        when 'S' then 17
        when 'M' then 20
        when 'L' then 22
        when 'XL' then 25
        end persisted,
    FullPricePaid as case  
        when CostumeSize = 'XS' and PriceSoldPerCostume = 20 then 1
        when CostumeSize = 'S' and PriceSoldPerCostume = 22 then 1
        when CostumeSize = 'M' and PriceSoldPerCostume = 25 then 1
        when CostumeSize = 'L' and PriceSoldPerCostume = 27 then 1
        when CostumeSize = 'XL' and PriceSoldPerCostume = 30 then 1
        else 0
        end persisted,
    TotalPricePerCustomer as PriceSoldPerCostume * Quantity persisted,
        constraint ck_sales_date_sold_must_be_between_date_bought_and_current_date check(DateSold between DateBought and getdate()),
        constraint ck_sales_price_sold_per_costume_can_be_same_not_less_than_cost_price_per_costume check(PriceSoldPerCostume >= CostPricePerCostume)
)
go