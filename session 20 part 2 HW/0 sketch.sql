/*
costume 
    CustomerFirstName varchar(30) not null
        not ''
    CustomerLastName varchar(30) not null
        not ''
    CostumeBought varchar(30) not null
        not ''
    Size varchar(2) not null
        can only be (XS, S, M, L, XL)
    AmountBought int not null
        not < 0 
    CostPricePerCostume int not null(decimal ?)
        must be (15, 17, 20, 22, 25)
    SoldPricePerCostume int not null(decimal ?)
        must be (20, 22, 25, 27, 30) or costprice
    PaidFullPrice bit
    DateBought date not null
        2020/1/1?
    DateSold date not null
        >=DateBought 
    TotalPriceCustomerPaid computed product 
