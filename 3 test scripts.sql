USE CostumeStoreDB
GO
--CONSTRAINT CK_Costume_Customer_First_Name_cannot_be_blank CHECK(CustomerFirstName>''),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select '','Goldberg','Artist', 'XS', 2, 0, 'Feb 14, 2020', 'Apr 2, 2020'
--costumer first name not null 
        INSERT into dbo.Costume(CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Goldberg','Artist', 'XS', 2, 0, 'Feb 14, 2020', 'Apr 2, 2020'
--CONSTRAINT CK_Costume_Customer_Last_Name_cannot_be_blank CHECK(CustomerLastName>''),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','','Artist', 'XS', 2, 0, 'Feb 14, 2020', 'Apr 2, 2020'
--costumer last name not null 
        INSERT into dbo.Costume(CustomerFirstName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Artist', 'XS', 2, 0, 'Feb 14, 2020', 'Apr 2, 2020'
--CONSTRAINT [(CK) Costume must be American Girl Doll,Artist,Bumble Bee,Colonial Boy,Colonial Girl,Elephant,Fire Man,Police Man,Princess,Zebra]
--CHECK(Costume in('American Girl Doll','Artist','Bumble Bee','Colonial Boy','Colonial Girl','Elephant','Fire Man','Police Man','Princess','Zebra')),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Clown', 'XS', 2, 0, 'Feb 14, 2020', 'Apr 2, 2020'
--constraint CK_Costume_must_be_in_XS_S_M_L_XL CHECK(Size in('XS','S','M','L','XL')),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Artist', 'LL', 2, 0, 'Feb 14, 2020', 'Apr 2, 2020'
--constraint CK_Costume_Amount_Bought_must_be_greater_than_0 CHECK(AmountBought>0),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Artist', 'XS', 0, 22, 'Feb 14, 2020', 'Apr 2, 2020'
--CONSTRAINT CK_Costume_Discount_cannot_be_negative CHECK(Discount>=0),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Artist', 'XS', 2, -1, 'Feb 14, 2020', 'Apr 2, 2020'
--CONSTRAINT CK_Costume_date_bought_must_cannot_be_before_Jan_1_2020 CHECK(DateBought>='January 1, 2020'),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Artist', 'XS', 2, 0, 'Dec 30, 2019', 'Apr 2, 2020'
--CONSTRAINT CK_Costume_date_bought_must_cannot_be_in_the_future CHECK(DateSold<=getdate()), 
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Artist', 'XS', 2, 0, 'Dec 1, 2025','Dec 1, 2025'
--CONSTRAINT CK_Date_Sold_cannot_be_before_date_bought CHECK(DateSold>=DateBought),
        INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
        select 'Chana','Goldberg','Artist', 'XS', 2, 0, 'Apr 3, 2020', 'Apr 2, 2020'
--CONSTRAINT CK_Sales_Price_Per_Costume_after_discount_cannot_be_less_than_Purchase_Price_Per_Costume CHECK(SalesPricePerCostume>=PurchasePricePerCostume)
    --permitted by constraint
            INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
            select 'Chana','Goldberg','Artist', 'XS', 2, 5, 'Feb 14, 2020', 'Apr 2, 2020'
    --not permitted by constraint
            INSERT into dbo.Costume(CustomerFirstName,CustomerLastName,Costume,Size,AmountBought,Discount,DateBought,DateSold)
            select 'Chana','Goldberg','Artist', 'XS', 2, 6, 'Feb 14, 2020', 'Apr 2, 2020'