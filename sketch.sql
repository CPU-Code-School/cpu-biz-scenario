/*
Costume
    CostumeId int not null identity primary key
    CustomerFirstName varchar(20) not null contraint not blank 
    CustomerLastName varchar (20) not null contraint not blank
    Type varchar (20) not null contraint not blank, check in(American Girl Doll Artist Bumble Bee Colonial Boy Colonial Girl Elephant Fire Man Police Man Princess Zebra)
    Size varchar(2) not null contraint not blank, check in (XS S M L XL)
    SoldQuantity int not null constraint must be greater than zero
    PurchaseDate date not null constraint after jan 1 2020    
    SoldDate date not null 
    PurchasePrice as case on size persisted
    SoldPrice decimal(4,2) not null         
    SoldPriceFull case on size and soldprice
    CustomerTotalPrice as SoldPrice * SoldQuantity

    multi column constraints:
    solddate must be after purchasedate
    soldprice greater than or equal to purchaseprice
*/