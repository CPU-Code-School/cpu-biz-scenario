--Sketch 
/*
Costume
    CostumeId int not null identity primary key
    CustomerFirstName varchar(30) not null 
        not blank
    PatientLastName varchar(30) not null 
        not blank 
    Costume varchar(30) not null
        constraint in specific list
    Size varchar(2) not null
        constraint XS, S, M, L, XL
    AmountBought int not null
        costraint >= 1
    SoldPricePerCostume int not null,
    DateBought date not null 
    DateSold date not null
        constraint bet Jan 1 2020 and getdate
    BoughtPricePerCostume computed column
        case XS=15.....
    TotalPaid computed column
        Amount*SoldPrice 
    constraints
        Sold Price >= Bought Price
        DateBought <= DateSold
*/


--insert Costume(CustomerFirstName, CustomerLastName, Costume, Size, AmountBought, SoldPricePerCostume, DateBought, DateSold)
--select 'First', 'Last', 'Fire Man', 'XS', 3, 20, '1/1/2024', '3/1/2024'
