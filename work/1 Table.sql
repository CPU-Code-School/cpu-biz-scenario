use costumeDB
go
drop table if exists Costumes 
go
create table dbo.Costumes(
CostumeId int not null identity primary key,
CustomerName varchar (50) not null constraint ck_costumes_customername_cannot_be_blank check(customername <> ''),
CostumesDesc varchar (20) not null constraint ck_costumes_CostumesBought_cannot_be_blank check (CostumesDesc <> ''),
Size varchar (2) not null constraint ck_costumes_size_can_only_be_xs_till_xl check (Size in ('xs','s','m','l','xl')),
AmountBought int constraint ck_costumes_AmountBought_cannot_be_lee_than_0 check (AmountBought > 0),
CostPricePerCostume as case size when 'xs' then 15 when 's' then 17 when 'm' then 20 when 'l' then 22 when 'xl' then 25 end,
SoldPricePerCostume decimal (4,2)constraint ck_costumes_SoldPricePerCostume_must_be_greater_or_equal_to_15 check (SoldPricePerCostume >= 15),
DateBought date not null constraint ck_costumes_datebought_must_be_after_jan_01_2022 check (datebought > '2020-01-01'),
DateSold date null, 
Paidfull bit not null,  
CONSTRAINT ck_Datebought_must_be_before_Datesold check(Datebought < Datesold),
)

