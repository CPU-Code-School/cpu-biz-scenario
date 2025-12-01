USE CostumeStoreDB
GO
DROP TABLE if EXISTS dbo.Costume
GO
CREATE TABLE dbo.Costume
(
   CostumeID INT NOT NULL IDENTITY PRIMARY KEY, 
   CustomerFirstName VARCHAR(15) not NULL 
        CONSTRAINT CK_Costume_Customer_First_Name_cannot_be_blank CHECK(CustomerFirstName>''),
   CustomerLastName VARCHAR(15) not NULL 
        CONSTRAINT CK_Costume_Customer_Last_Name_cannot_be_blank CHECK(CustomerLastName>''),
   Costume varchar(20) not null 
        CONSTRAINT [(CK) Costume must be American Girl Doll,Artist,Bumble Bee,Colonial Boy,Colonial Girl,Elephant,Fire Man,Police Man,Princess,Zebra]
            CHECK(Costume in('American Girl Doll','Artist','Bumble Bee','Colonial Boy','Colonial Girl','Elephant','Fire Man','Police Man','Princess','Zebra')),
   Size char(2) NOT NULL
        constraint CK_Costume_must_be_in_XS_S_M_L_XL CHECK(Size in('XS','S','M','L','XL')),
   AmountBought TINYINT not NULL
        constraint CK_Costume_Amount_Bought_must_be_greater_than_0 CHECK(AmountBought>0),
   SalesPricePerCostume AS
            CASE Size
                WHEN'XS'then 20-Discount
                WHEN'S'then 22-Discount
                WHEN'M'then 25-Discount
                WHEN'L'then 27-Discount
                WHEN'XL'then 30-Discount
            END PERSISTED,
    Discount DECIMAL(4,2) not NULL 
        CONSTRAINT DF_Costume_discount DEFAULT 0 
        CONSTRAINT CK_Costume_Discount_cannot_be_negative CHECK(Discount>=0),
    DateBought DATE  NOT NULL
        CONSTRAINT CK_Costume_date_bought_must_cannot_be_before_Jan_1_2020 CHECK(DateBought>='January 1, 2020'),
    DateSold DATE NOT NULL
        CONSTRAINT CK_Costume_date_bought_must_cannot_be_in_the_future CHECK(DateSold<=getdate()), 
    PurchasePricePerCostume AS
            CASE Size
                WHEN'XS'then 15
                WHEN'S'then 17
                WHEN'M'then 20
                WHEN'L'then 22
                WHEN'XL'then 25    
            END PERSISTED         ,
    PaidFullPrice AS
            CASE 
                WHEN Discount=0 then'yes'
                else 'no'
            END PERSISTED,
    TotalPricePaid AS 
            CASE Size
                WHEN'XS'then (20-Discount)*AmountBought
                WHEN'S'then (22-Discount)*AmountBought
                WHEN'M'then (25-Discount)*AmountBought
                WHEN'L'then (27-Discount)*AmountBought
                WHEN'XL'then (30-Discount)*AmountBought
            END PERSISTED,
    Profit AS 
           CASE Size
                WHEN'XS'then ((20-Discount)*AmountBought)-(15*AmountBought)
                WHEN'S'then (22-Discount)*AmountBought-(17*AmountBought)
                WHEN'M'then (25-Discount)*AmountBought-(20*AmountBought)
                WHEN'L'then (27-Discount)*AmountBought-(22*AmountBought)
                WHEN'XL'then (30-Discount)*AmountBought-(25*AmountBought)
            END,
--MULTI COLUMN CONSTRAINTS!
    CONSTRAINT CK_Date_Sold_cannot_be_before_date_bought CHECK(DateSold>=DateBought),
    CONSTRAINT CK_Sales_Price_Per_Costume_after_discount_cannot_be_less_than_Purchase_Price_Per_Costume CHECK(SalesPricePerCostume>=PurchasePricePerCostume)
)
