/*
Costumes

Customer
    CustomerID int identity primary key,
    FirstName not null not blank
    LastName not null not blank
    CostumeBought not null not blank
    CostumeSize max 2 character must be either XS, S, M, L, XL
    CostPrice int(2) calculated from size
    AmountBought int(3) not null not blank
    SoldPricePerCostume not less than cost price
    DateBought date
    DateSold date null not before date bought
    FullPrice bit  calculated (Full price or not)
    TotalPrice calculated (AmountBought x SoldPricePerCostume)
*/