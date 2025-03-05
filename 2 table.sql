use ShoeDB
go
drop table if exists ShoeInventory
go
create table dbo.ShoeInventory (
    ShoeID int not null identity primary key,
    CustomerName varchar(50), 
    Age int,
    PhoneNumber char(15) not null,
    DateReceived date constraint ck_ShoeInventory_DateReceived_not_before_June_16_2012 check(DateReceived >= '06-16-2012'),
    DateSold date constraint ck_ShoeInventory_DateSold_not_before_June_16_2012 check(DateSold >= '06-16-2012'),
    SeasonSold as case
            when month(DateSold) between 3 and 5 then 'Spring'
            when month(DateSold) between 6 AND 8 THEN 'Summer'
            when month(DateSold) between 9 AND 11 THEN 'Fall'
            else 'Winter'
        end persisted,
    PriceBought decimal (6,2),
    PriceSold decimal (7,2),
    Company varchar(30),
    Returned bit,
        /*SS Normally I would add this constraint in, but it doesn't work with the Invention data
        constraint ck_ShoeInventory_DateSold_not_before_current_date check (DateSold >= (getdate())),*/
        constraint ck_ShoeInventory_DateSold_cannot_be_before_DateReceived check(DateSold >= DateReceived),
        constraint ck_ShoeInventory_if_DateSold_is_null_then_PriceSold_also check((PriceSold is null and DateSold is null) or (PriceSold is not null and DateSold is not null))
)