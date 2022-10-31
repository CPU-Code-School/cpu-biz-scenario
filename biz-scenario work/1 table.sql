use CostumeDB
go

drop table if EXISTS dbo.Costume 
GO
create table dbo.Costume(
    CostumeId int not null IDENTITY PRIMARY KEY,
    BuyerName VARCHAR(50) not null, 
    OwnerName VARCHAR(50) not null 
        CONSTRAINT c_Owner_Name_cannot_be_blank CHECK(ownername <> ''),
    ClientName VARCHAR(50) not null 
        CONSTRAINT c_Client_Name_cannot_be_blank CHECK(ClientName <> ''),
    RealtorName VARCHAR(50) not null 
        CONSTRAINT c_Realtor_Name_cannot_be_blank CHECK(realtorname <> ''),
    AddressNumber int not null
        CONSTRAINT c_Address_Number_cannot_be_0 CHECK(addressnumber <> 0),
    Street VARCHAR(30) not null 
        CONSTRAINT c_Street_cannot_be_blank CHECK(street <> ''),
    Town VARCHAR(30) not null 
        CONSTRAINT c_Town_cannot_be_blank CHECK(town <> ''),
    HouseType VARCHAR(15) not null 
        CONSTRAINT c_House_Type_must_be_in_bilevel_colonial_ranch_splitlevel_duplex_townhouse_vacant_land_apartment 
            CHECK(HouseType in('bi-level', 'colonial', 'ranch', 'split-level', 'duplex', 'townhouse', 'vacant land', 'apartment')),
    HouseSquareFootage int not NULL 
        CONSTRAINT c_House_Square_Footage_cannot_be_0 CHECK(HouseSquareFootage <> 0),
    LotSquareFootage int not NULL 
        CONSTRAINT c_Lot_Square_Footage_cannot_be_0 CHECK(LotSquareFootage <> 0),
    NumberBathrooms int not NULL
        CONSTRAINT c_Number_Bathrooms_cannot_be_0 CHECK(NumberBathrooms <> 0),
    NumberBedrooms int not NULL
        CONSTRAINT c_Number_Bedrooms_cannot_be_0 CHECK(numberbedrooms <> 0),
    DateonMarket date not null
        CONSTRAINT c_Date_on_Market_cannot_be_blank CHECK(DateonMarket <> ''),
        CONSTRAINT c_Date_on_Market_must_be_before_current_date CHECK(DateonMarket < getdate()),
    DateClosed DATE NULL DEFAULt ''
        CONSTRAINT c_Date_Closed_must_be_before_current_date CHECK(DateClosed < getdate()),
    DateinSystem DATE not NULL DEFAULT GETDATE(),
    PriceAsked DECIMAL(9,2) not NULL
        CONSTRAINT c_Price_Asked_must_be_greater_than_100000 CHECK(PriceAsked > 100000),
    PriceSold DECIMAL(9,2) not null default '',
    Sold BIT not null,
    InContract bit not NULL,  
        CONSTRAINT c_either_Date_Closed_is_not_null_and_Sold_is_1_or_Date_Closed_is_null_and_Sold_is_0
            CHECK((DateClosed is not null and sold = 1) or (dateclosed is null and sold = 0)),
        CONSTRAINT c_Price_Sold_must_be_greater_than_or_equal_to_Price_asked_or_0 CHECK((pricesold >= PriceAsked) or pricesold = 0),
        CONSTRAINT u_Costume_Address_Number_Street_Town_Date_Closed UNIQUE(addressnumber, street, town, DateinSystem)
        
        )
GO

INSERT Costume(BuyerName, OwnerName, ClientName, RealtorName, AddressNumber, Street, Town, HouseType, housesquarefootage, LotSquareFootage, NumberBathrooms, NumberBedrooms, DateonMarket, DateClosed, PriceAsked, PriceSold, Sold, InContract)
SELECT 'Rachel Gestetner', 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 2.5, 4, '1/12/2021', '2/22/2021', 450000, 475000, 1, 0

SELECT * from Costume