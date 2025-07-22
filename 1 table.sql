use master
go
drop database if exists BikeDB
go
create database BikeDB
go
use BikeDB
go
drop table if exists BikeShop
go
create table dbo.BikeShop(
BikeId int not null identity primary key,
CustomerName varchar(50) not null constraint ck_Bike_customername_cannot_be_blank check(CustomerName <> ' '),
CustomerAddress varchar(100) not null constraint ck_Bike_customeraddress_cannot_be_blank check(CustomerAddress <> ' '),
PhoneNumber varchar(15) not null constraint ck_Bike_phonenumber_cannot_be_blank check(PhoneNumber <> ' '),
BikeCompany varchar(10) not null constraint ck_Bike_bikecompany_cannot_be_blank check(BikeCompany <> ' '),
BikeSize int not null constraint ck_Bike_bikesize_must_be_greater_than_0 check(BikeSize > 0),
BikeColor varchar(10) not null constraint ck_Bike_bikecolor_cannot_be_blank check(BikeColor <> ' '),
DatePurchased datetime not null constraint ck_Bike_datepurchased_must_be_after_February_2022 check(DatePurchased > 02-29-2022),
PurchasePrice decimal(6,2) not null constraint ck_Bike_purchaseprice_must_be_greater_than_0 check(PurchasePrice > 0),
New varchar(4) not null constraint ck_Bike_new_must_be_either_new_or_used check(New in ('New', 'Used')),
ConditionWhenReceived varchar(12) null,
constraint ck_Bike_conditionwhenreceived_must_either_of_4_options_or_blank check(ConditionWhenReceived in ('Perfect', 'Minor Fixup', 'Major Fixup', 'Restoration', ' ')),
DateSold datetime not null,
SeasonSold varchar(8) not null constraint ck_Bike_seasonsold_cannot_be_blank check(SeasonSold <> ' '),
SoldPrice decimal(6,2) not null constraint ck_Bike_soldprice_must_be_between_0_and_3000 check(SoldPrice between 0 and 3000),
constraint ck_Bike_datesold_must_be_after_datepurchased check(DateSold >= DatePurchased),
constraint ck_Bike_conditionwhenreceived_and_New_must_align check((New = 'Used' and ConditionWhenReceived <> ' ' and ConditionWhenReceived is not null) or (New = 'New' and (ConditionWhenReceived = ' ' or ConditionWhenReceived is null)))
)

select * from BikeShop

