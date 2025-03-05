use BikeShopDB
go

drop table if exists Bike
go 
create table dbo.bike(
    BikeId int primary key identity,
    CustomerName varchar(50),
    CustomerAddress varchar(150),
    PhoneNumber varchar(20),
    BikeCompany varchar(100) not null constraint ck_Bike_Company_cannot_be_blank check(BikeCompany <> ''),
    BikeSize varchar(6) not null constraint ck_Bike_Size_cannot_be_blank check(BikeSize <> ''),
    BikeColor varchar(15) not null constraint ck_Bike_Color_cannot_be_blank check(BikeColor <> ''),
    DatePurchased date not null constraint ck_Date_Purchased_must_be_between_2nd_of_march_2022_and_the_current_date check(DatePurchased between '2022-03-01' and getdate()),
    PurchasePrice decimal(6,2) not null constraint ck_Purchase_Price_must_be_greater_then_0 check(PurchasePrice > 0),
    New bit not null,
    ConditionReceived int not null,
    ConditionReceivedDesc as case ConditionReceived
      when 0 then 'NA' when 1 then 'Perfect' when 2 then 'Minor Fixup' when 3 then 'Major Fixup' when 4 then 'Restoration' end persisted,
    DateSold date,
    season as case
    when datepart(month, DateSold) = 12 or datepart(month, DateSold) between 1 and 2 then 'Winter'
    when datepart(month, DateSold) between 3 and 5 then 'Spring'
    when datepart(month, DateSold) between 6 and 8 then 'Summer'
    when datepart(month, DateSold) between 9 and 11 then 'Fall'
    end persisted, 
    SalePrice decimal(6,2) constraint ck_Sale_price_must_be_between_1_and_3000 check(SalePrice between 1 and 3000),
    constraint ck_New_is_1_and_ConditionReceived_is_0_or_New_is_0_and_ConditionReceived_is_between_1_and_4 check((New = 1 and ConditionReceived = 0) or (New = 0 and ConditionReceived between 1 and 4)),
    constraint ck_Date_sold_must_be_after_date_purchased_and_not_in_future check(dateSold between DatePurchased and getdate())
    )
