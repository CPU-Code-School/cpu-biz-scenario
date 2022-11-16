use costumeDB
go
drop table if exists Costumes 
go
create table dbo.Costumes(
CostumeId int not null identity primary key,
CustomerName varchar (50) not null constraint ck_costumes_customername_cannot_be_blank check(customername <> ''),
CostumesBought varchar (20) not null constraint ck_costumes_CostumesBought_cannot_be_blank check (CostumesBought <> ''),
Size varchar (2) not null constraint ck_costumes_size_cannot_be_blank check (Size <> ''),
AmountBought char (1) constraint ck_costumes_AmountBought_cannot_be_blank check (AmountBought <> ''),
CostPricePerCostume as case size when 'xs' then 15 when 's' then 17 when 'm' then 20 when 'l' then 22 when 'xl' then 25 end,
SoldPricePerCostume decimal (4,2)constraint ck_costumes_SoldPricePerCostume_must_be_greater_or_equal_to_15 check (SoldPricePerCostume >= 15),
DateBought date not null,
DateSold date null, 
CONSTRAINT ck_Datebought_must_be_before_Datesold check(Datebought < Datesold),
)

