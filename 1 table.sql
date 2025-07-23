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
CustomerName varchar(50) not null constraint ck_Bike_customername_cannot_be_blank check(CustomerName <> ''),
CustomerAddress varchar(50) not null constraint ck_Bike_customeraddress_cannot_be_blank check(CustomerAddress <> ''),
CustomerCity varchar(50) not null constraint ck_Bike_customercity_cannot_be_blank check(CustomerCity <> ''),
CustomerState char(2) not null constraint ck_Bike_customerstate_cannot_be_blank check(CustomerState <> ''),
CustomerZipCode char(5) not null constraint ck_Bike_customerzipcode_must_be_numeric check(CustomerZipCode in '[0-9][0-9][0-9][0-9][0-9]'),
PhoneNumber char(12) not null constraint ck_Bike_phonenumber_cannot_be_blank check(PhoneNumber <> ''),
BikeCompany varchar(10) not null constraint ck_Bike_bikecompany_cannot_be_blank check(BikeCompany <> ''),
BikeSize int not null constraint ck_Bike_bikesize_must_be_greater_than_0 check(BikeSize > 0),
BikeColor varchar(10) not null constraint ck_Bike_bikecolor_cannot_be_blank check(BikeColor <> ''),
DatePurchased datetime not null constraint ck_Bike_datepurchased_must_be_after_February_2022 check(DatePurchased > 02-29-2022),
PurchasePrice decimal(6,2) not null constraint ck_Bike_purchaseprice_must_be_greater_than_0 check(PurchasePrice > 0),
New bit not null,
ConditionWhenReceived int null constraint ck_Bike_conditionwhenreceived_must_be_1_or_2_or_3_or_4_or_blank check(ConditionWhenReceived in (1,2,3,4, '')),
ConditionWhenReceivedDesc as
case ConditionWhenReceived
when 1 then 'Perfect'
when 2 then 'Minor Fixup'
when 3 then 'Major Fixup'
when 4 then 'Restoration'
else ''
end,
DateSold datetime not null,
SeasonSold varchar(8) not null constraint ck_Bike_seasonsold_must_be_one_of_the_4_seasons check(SeasonSold in ('Winter', 'Summer', 'Fall', 'Spring')),
SoldPrice decimal(6,2) not null constraint ck_Bike_soldprice_must_be_between_0_and_3000 check(SoldPrice between 0 and 3000),
constraint ck_Bike_datesold_must_be_after_datepurchased check(DateSold >= DatePurchased),
constraint ck_Bike_conditionwhenreceived_and_New_must_align check((New = 0 and ConditionWhenReceived in (1,2,3,4)) or (New = 1 and (ConditionWhenReceived = '' or ConditionWhenReceived is null)))
)

select * from BikeShop

