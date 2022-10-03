/*

House
    HouseID int not null unique primary key
    AddressNo int not null > 0
    AddressStreet varchar(40) not null not blank
    AddressTown varchar(20) not null not blank
    HouseType varchar(20)
    HouseSqFoot int not null > 0
    LotSqFoot int not null > 0
    Bedrooms int not null > 0
    Bathrooms decimal(3,1) not null > 0
    Seller varchar(255) not null not blank
    SellerContact varchar(255) not null not blank
    RealtorAgent varchar(255) not null not blank
    Buyer varchar(255) not null 
    MarketDate date not null <= today
    AskingPrice decimal(9,2) not null between 100000 and 9900000
    SoldPrice decimal(9,2) between 100000 and 9900000
    SoldDate date
    DOE date default getdate()


    constraint soldDate >= marketDate
    constraint LotSqFoot > HouseSqFoot
    constraint if there is a sold price there also has to be a buyer

*/