use ShoeSalesDB
go 

drop table if exists sales
go 

create table dbo.Sales(
    StoreId int not null identity primary key,
    CustomerName varchar(50) not null constraint ck_Sales_customerName_cannot_be_blank check(CustomerName <> ''),
    Age int not null constraint ck_Sales_Age_greater_than_zero check(Age > 0),
    PhoneNumber varchar(15) not null constraint ck_Sales_PhoneNumber_cannot_be_blank check(PhoneNumber <> ''),
    Company varchar(30) not null constraint ck_Sales_Company_cannot_be_blank check(Company <> ''),
    DateRecieved date not null constraint ck_Sales_DateRecieved_before_the_current_date check(DateRecieved <= getdate()),
    DateSold date not null constraint ck_Sales_DateSold_before_the_current_date check(DateSold <= getdate()),
    PricePaid decimal(5,2) not null constraint ck_Sales_PricePaid_greater_than_zero check(PricePaid > 0),
    PriceSold decimal(5,2) not null constraint ck_Sales_PriceSold_greater_than_zero check(PriceSold > 0),
    OrderReturns bit not null constraint ck_Sales_OrderReturns_ValidValues check (OrderReturns in (0, 1)) default 0,
    constraint ck_Sales_DateSold_is_greater_than_DateBought check(DateSold > DateRecieved)
)
go