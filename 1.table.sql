use CostumeDB
go
drop table if exists Sales
go

create table dbo.Sales(
    CustomerId int not null identity primary key,
    CustomerName varchar(50) not null 
        constraint ck_customer_name_cannot_be_blank check(CustomerName <> ''), 
    CostumesBought varchar(25) not null
        constraint ck_costume_bought_cannot_be_blank_and_is_specific check(CostumesBought in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy','Colonial Girl','Elephant','Fire Man','Police Man', 'Princess', 'Zebra')),
    CostumeSize varchar(2) not null 
        constraint ck_costume_size_cannot_be_blank_and_is_specific check(CostumeSize in ('XS', 'S', 'M', 'L', 'XL')),
    Quantity int not null 
        constraint ck_quantity_must_be_at_least_1 check(Quantity > 0),
    PriceSoldPerCostume int not null 
        constraint ck_price_sold_per_costume_there_are_fixed_prices check(PriceSoldPerCostume in (15,17,20,22,25,27,30)),
    DateBought date not null,
    DateSold date not null 
        constraint ck_date_sold_must_be_between_Jan_1_2020_and_current_date check(DateSold between 'Jan 1 2020' and getdate()),
        constraint ck_date_sold_must_be_after_date_bought check(DateSold >= DateBought),
        constraint u_same_record_shouldnt_be_entered_twice_per_year unique(CustomerName, DateSold, CostumesBought, CostumeSize),
        constraint ck_price_sold_per_costume_can_be_same_not_less_than_cost_price_per_costume check(PriceSoldPerCostume >= CostPricePerCostume),
    CostPricePerCostume as
        case CostumeSize
        when 'XS' then 15
        when 'S' then 17
        when 'M' then 20
        when 'L' then 22
        when 'XL' then 25
        end persisted,
    FullPricePaid as case  
        when CostumeSize = 'XS' and PriceSoldPerCostume = 20 then 'Yes'
        when CostumeSize = 'S' and PriceSoldPerCostume = 22 then 'Yes'
        when CostumeSize = 'M' and PriceSoldPerCostume = 25 then 'Yes'
        when CostumeSize = 'L' and PriceSoldPerCostume = 27 then 'Yes'
        when CostumeSize = 'XL' and PriceSoldPerCostume = 30 then 'Yes'
        else 'No'
        end persisted,
    TotalPricePerCustomer as PriceSoldPerCostume * Quantity persisted
)
go