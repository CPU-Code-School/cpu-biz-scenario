
DROP TABLE IF EXISTS COSTUMESALES
GO
CREATE TABLE DBO.COSTUMESALES
(COSTUMESALESID INT NOT NULL IDENTITY PRIMARY KEY,
CustomerFirstName varchar (50) not null constraint ck_CustomerFirstName_may_not_be_blank check (CustomerFirstName <> ''),
CustomerLastName varchar (50) not null constraint ck_CustomerLastName_may_not_be_blank check (CustomerLastName <> ''),
CostumesBought varchar (22) not null constraint ck_CostumesBought_may_not_be_blank check (CostumesBought <> ''),
Size varchar (2) not null constraint ck_Size_may_not_be_blank check (Size <> ''),
AmountBought int not null,
PriceBoughtCostume int not null,
SoldPricePerCostume int not null,
DateBought date not null, 
DateSold  DATE not null,
constraint ck_COSTUMESALES_SoldPricePerCostume_Equal_or_more_than_PriceBoughtCostume check (SoldPricePerCostume>=PriceBoughtcostume))


