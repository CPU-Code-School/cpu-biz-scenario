/*
Table Sketch:
dbo.Customer
    CustomerID int not null identity primary key 
    CustomerFirstName varchar(30) not null
        constraint cannot be blank
    CustomerLastName varchar(30) not null
        constraint cannot be blank
    CostumeBought varchar(18) not null
        constraint must be American Girl Doll, Artist, Bumble Bee, Colonial Boy, Colonial Girl, Elephant, Fire Man, Police Man, Princess, or Zebra
    CostumeSize varchar(2) not null
        constraint must be either XS, S, M, L, or XL
    AmountBought int not null
        constraint must be greater than 0
    CostPricePerCostume decimal(4,2) not null
        constraint must be 15, 17, 20, 22, 25
    SoldPricePerCostume decimal(4,2) not null
    FullPrice bit not null
    DateBought date not null
    DateSold date not null 
        constraint must be before or the same as getdate()
	CustomerTotal computed column SoldPricePerCostume * AmountBought persisted,
    TotalProfit computed column (SoldPricePerCostume - CostPricePerCostume) * AmountBought persisted,
    MultiColumn Constraints
        constraint DateBought must be between 01/01/2020 and DateSold
        constraint SoldPricePerCostume must be between CostPricePerCostume and 30
        constraint either SoldPricePerCostume equals CostPricePerCostume and FullPrice is 0 or SoldPricePerCostume doesn't equal CostPricePerCostume and FullPrice is 1 
*/