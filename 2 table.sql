use ShoeDB
go
drop table if exists ShoeInventory
go
create table dbo.ShoeInventory (
    ShoeInventoryID int not null identity primary key,
    CustomerName varchar(50) not null constraint ck_ShoeInventory_CustomerName_cannot_blank check(CustomerName <> ''), 
    Age int not null,
    PhoneNumber char(13) not null constraint ck_ShoeInventory_PhoneNumber_cannot_be_blank check (PhoneNumber <> ''),
    DateReceived date not null constraint ck_ShoeInventory_DateReceived_not_before_June_16_2012_and_not_future_date check(DateReceived between '06-16-2012' and getdate()),
    DateSold date constraint ck_ShoeInventory_DateSold_not_before_June_16_2012_and_not_future_date check(DateSold between '06-16-2012' and getdate()),
    SeasonSold as case
            when month(DateSold) between 3 and 5 then 'Spring'
            when month(DateSold) between 6 AND 8 THEN 'Summer'
            when month(DateSold) between 9 AND 11 THEN 'Fall'
            else 'Winter'
        end persisted,
    PriceBought decimal (6,2) not null constraint ck_ShoeInventory_PriceBought_greater_than_zero check (PriceBought > 0),
    PriceSold decimal (7,2) constraint ck_ShoeInventory_PriceSold_greater_than_zero check (PriceSold > 0),
    Company varchar(30) not null constraint ck_ShoeInventory_Company_cannot_be_blank check(Company <> ''),
    Returned bit,
        constraint ck_ShoeInventory_DateSold_cannot_be_before_DateReceived check(DateSold >= DateReceived),
        constraint ck_ShoeInventory_if_DateSold_is_null_then_PriceSold_also check((PriceSold is null and DateSold is null) or (PriceSold is not null and DateSold is not null))
)