use RealEstateDB
go
drop TABLE if EXISTS RealEstate
CREATE TABLE dbo.RealEstate(
      HouseID int not null IDENTITY PRIMARY KEY,
      HouseAddress VARCHAR (35) not NULL
           CONSTRAINT ck_House_Address_cannot_be_blank check (HouseAddress <> ''),
      Town VARCHAR (10) not null
           CONSTRAINT ck_Town_can_only_be_Jackson_Toms_River_Howell_Brick_Manchester_or_Lakewood 
           check (town in ('Jackson', 'Toms River', 'Howell', 'Brick',  'Manchester', 'Lakewood')),
      TypeOfHouse VARCHAR (15)not NULL
           CONSTRAINT ck_Type_Of_House_can_only_be_bi_level_colonial_ranch_split_level_duplex_townhouse_apartment_or_vacant_land
           check (TypeOfHouse in ('bi-level', 'colonial', 'ranch', 'split-level', 'duplex', 'townhouse','apartment', 'vacant land') ),
      Bedrooms int not NULL
           CONSTRAINT ck_Bedrooms_cannot_be_0_or_less check (Bedrooms > 0),
      Bathrooms DECIMAL (2,1) not null
           CONSTRAINT ck_Bathrooms_cannot_be_0_or_less check (Bathrooms > 0),
      HouseSquareFootage int not null
           CONSTRAINT ck_House_Square_Footage_cannot_be_0_or_less check (HouseSquareFootage > 0),
      LotSquareFootage DECIMAL (7,1) null,
      HouseOwner VARCHAR (50) not null  
           CONSTRAINT ck_House_Owner_cannot_be_blank check (HouseOwner <> ''),
      Client VARCHAR (50) not null 
           CONSTRAINT ck_Client_cannot_be_blank CHECK (Client <>''),
      Realtor VARCHAR (30) not null
           CONSTRAINT ck_Realtor_cannot_be_blank CHECK (Realtor <>''),
      DateOnMarket date not null
           CONSTRAINT ck_Date_On_Market_cannot_be_blank check (DateOnMarket <> ''),
      DateSold date NULL
           CONSTRAINT ck_Date_Sold_cannot_be_blank check (DateSold <> ''),
           CONSTRAINT ck_Date_Sold_cannot_be_before_Date_On_Market check (DateSold >= DateOnMarket),
      AskingPrice int not NULL
           CONSTRAINT ck_Asking_Price_must_be_between_100k_and_9_9m CHECK (AskingPrice BETWEEN 100000 AND 9900000),
      SoldOrsellingPrice int NULL,
      Buyer VARCHAR (50) null
           CONSTRAINT ck_Buyer_cannot_be_blank check (Buyer <>''),   
      UnderContract bit not null,
      Sold bit not null,
           CONSTRAINT CK_Sold_or_Under_Contract_Price_Must_Be_At_Least_Asking_Price_Else_Null
            check (
                    (Sold = 1 and SoldOrsellingPrice >= AskingPrice)
                    OR
                    (UnderContract = 1 and SoldOrsellingPrice >= AskingPrice)
                    or
                    (Sold = 0 and UnderContract = 0 and SoldOrsellingPrice is null)
                 ),
           CONSTRAINT ck_only_if_Type_Of_House_is_apartment_should_Lot_Square_Footage_be_null_if_not_it_should_be_more_then_House_Square_Footage
           check (
            (TypeOfHouse = 'Apartment' AND LotSquareFootage IS NULL)
            or
            (TypeOfHouse <> 'Apartment' AND LotSquareFootage > HouseSquareFootage)
            ),
          CONSTRAINT ck_Sold_must_have_Date_Sold_not_Sold_Date_Sold_must_be_null
            check (
                (Sold = 1 and DateSold is not null)
                or
                (Sold = 0 and DateSold is null)
                ),
                CONSTRAINT ck_Sold_or_Under_Contract_must_have_a_Buyer_else_should_be_null
            check (
                (Sold = 1 and Buyer is not null)
                OR
                (UnderContract = 1 and buyer is not null )
                or
                (Sold = 0 AND UnderContract = 0 and Buyer is null)
                ),
        )
        GO
              CREATE UNIQUE INDEX u_House_Address_and_Town_must_be_if_not_Apartment_UNION
              ON dbo.RealEstate (HouseAddress, Town)
              WHERE TypeOfHouse <> 'Apartment'


