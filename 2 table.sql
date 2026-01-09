use ShoeStoreDB
go 

drop table if exists store 
go 

create table dbo.Store(
    StoreId int not null identity primary key,
    CustomerName varchar(50) not null constraint ck_Store_ustomerName_cannot_be_blank check(CustomerName <> ''),
    Age int not null constraint ck_Store_Age_greater_than_zero check(Age > 0),
    PhoneNumber varchar(15) not null constraint ck_Store_PhoneNumber_cannot_be_blank check(PhoneNumber <> ''),
    Company varchar(30) not null constraint ck_Store_Company_cannot_be_blank check(Company <> ''),
    DateRecieved date not null constraint ck_Store_DateRecieved_before_the_current_date check(DateRecieved <= getdate()),
    DateSold date not null constraint ck_Store_DateSold_before_the_current_date check(DateSold <= getdate()),
    PricePaid decimal(5,2) not null constraint ck_Store_PricePaid_greater_than_zero check(PricePaid > 0),
    PriceSold decimal(5,2) not null constraint ck_Store_PriceSold_greater_than_zero check(PriceSold > 0),
    OrderReturns varchar(9) not null constraint ck_Store_OrderReturns_either_blank_or_refunded check(OrderReturns in ('', 'refunded')),
    constraint ck_Store_DateSold_is_greater_than_DateBought check(DateSold > DateRecieved)
)
go