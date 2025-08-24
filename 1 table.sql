drop table if exists Bike 
go 
create table dbo.Bike(
    SaleId int not null identity primary key,
    CustomerName varchar(30) not null constraint c_Bike_customer_name_cannot_be_blank check(CustomerName <> ''),
    CustomerAddress varchar(100) not null constraint c_Bike_customer_address_cannot_be_blank check(CustomerAddress <> ''),
    CustomerPhoneNumber varchar(15) not null constraint c_Bike_customer_phone_number_cannot_be_blank check(CustomerPhoneNumber <> ''), 
    BikeCompany varchar(25) not null constraint c_Bike_bike_company_cannot_be_blank check(BikeCompany <> ''),
    BikeSize varchar(3) not null constraint c_Bike_bike_size_cannot_be_blank check(BikeSize <> ''),
    BikeColor varchar(12) not null constraint c_Bike_bike_color_cannot_be_blank check(BikeColor <> ''),
    DatePurchased date not null constraint c_Bike_Date_Purchased_cannot_be_before_march_2022 check(DatePurchased > '2022-03-01'), 
    PurchasePrice decimal(6,2) not null constraint c_Bike_purchase_price_cannot_be_a_negative_number check(PurchasePrice > 0),
    IsNew bit not null,
    ConditionWhenReceived varchar(15) null constraint c_Bike_condition_must_be_either_Perfect_Minor_Fixup_Major_Fixup_or_Restoration check(ConditionWhenReceived in ('Perfect', 'Minor Fixup', 'Major Fixup', 'Restoration')),
    DateSold date not null, 
    Season varchar(10) not null constraint c_Bike_Season_cannot_be_blank check(Season <> ''),
    SoldPrice decimal(6,2) not null constraint c_Bike_sold_price_cannot_be_a_negative_number check(SoldPrice > 0),
            constraint c_Date_sold_cannot_be_before_date_purchase check(DateSold > DatePurchased)

)