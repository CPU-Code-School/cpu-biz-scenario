/*
CostumeDB
   CostumeId int
        not null, pk
    CustomerFirstName varchar(25)
        not null, not blank
    CustomerLastName varchar(25)
        not null, not blank
    CostumesBought varchar(100)
        not null, not blank, must be one of the choices of costumes
    CostumeSize varchar(2)
        not null, not blank
    CostumeAmount int
        not null, greater than 0
    CostumeCostPrice int
        not null, >= 15
    CostumeSoldPrice int
        not null, >= 20
    DateBought date
        not null, not blank
    DateSold date
        not null, not blank
    TotalPrice int 
        not null, >= 15
    Multi column:
        sold price >= cost price
        date sold >= date bought
        total price >= sold price
*/