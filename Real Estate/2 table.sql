USE RealEstate
GO

DROP TABLE IF EXISTS House
GO

CREATE TABLE House(
    HouseID INT NOT NULL IDENTITY PRIMARY KEY,
    AddressNo int not null                  CONSTRAINT c_House_AddressNo_must_be_greater_than_zero CHECK(AddressNo > 0),
    AddressStreet varchar(40) not null      CONSTRAINT c_House_Street_cannot_be_blank CHECK(AddressStreet > ''),
    AddressTown varchar(20) not null        CONSTRAINT c_House_town_cannot_be_blank CHECK(AddressTown > ''),
    HouseType varchar(20) not null          CONSTRAINT c_House_HouseType_cannot_be_blank CHECK(HouseType > ''),
    HouseSqFoot int not null                CONSTRAINT c_House_HouseSqFoot_at_least_zero CHECK(HouseSqFoot >= 0),
    LotSqFoot decimal(7,2) not null         CONSTRAINT c_House_LotSqFoot_must_be_greater_than_zero CHECK(LotSqFoot > 0),
    Bedrooms int not null                   CONSTRAINT c_House_bedrooms_cannot_be_less_than_zero CHECK(Bedrooms >= 0),
    Bathrooms decimal(3,1) not null         CONSTRAINT c_House_bathrooms_cannot_be_less_than_zero CHECK(Bathrooms >= 0),
    Seller varchar(255) not null            CONSTRAINT c_House_seller_cannot_be_blank CHECK(Seller > ''),
    SellerContact varchar(255) not null     CONSTRAINT c_House_seller_contact_cannot_be_blank CHECK(SellerContact > ''),
    RealtorAgent varchar(255) not null      CONSTRAINT c_House_Realtor_Agent_cannot_be_blank CHECK(RealtorAgent > ''),
    Buyer varchar(255) not null DEFAULT '',
    MarketDate date not null                CONSTRAINT c_House_market_date_cannot_be_in_future CHECK(MarketDate <= getdate()),
    AskingPrice decimal(9,2) not null       CONSTRAINT c_House_asking_price_must_be_between_100000_and_9900000 CHECK(AskingPrice between 100000 and 9900000),
    SoldPrice decimal(9,2)                  CONSTRAINT c_House_sold_price_must_be_between_100000_and_9900000 CHECK(SoldPrice between 100000 and 9900000),
    SoldDate date,
    DOE date default getdate(),


    constraint c_House_Sold_date_cannot_be_before_put_on_market CHECK(soldDate >= marketDate),
    constraint c_House_cannot_be_bigger_than_the_lot CHECK(LotSqFoot >= HouseSqFoot),
    constraint c_House_sold_price_and_buyer_and_sold_date_either_all_blank_or_sold_price_and_buyer_have_a_value check((SoldPrice is null and Buyer = '' and SoldDate is null) or (SoldPrice is not null and Buyer > '')) 

)
GO



