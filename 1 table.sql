use CostumeDB
go


drop table if exists dbo.Costume
go 
create table dbo.Costume(
    CostumeId int not null identity primary key,
    CustomerFirstName varchar(30) not null
        constraint c_Costume_Customer_First_Name_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(30) not null
        constraint c_Costume_Customer_Last_Name_cannot_be_blank check(CustomerLastName <> ''),
    Costume varchar(30) not null 
        constraint c_Costume_Costume_can_be_AmericanGirlDoll_Artist_BumbleBee_ColonialBoy_ColonialGirl_Elephant_FireMan_PoliceMan_Princess_or_Zebra
         check(Costume in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    Size varchar(2) not null
        constraint c_Costume_Size_can_be_XS_S_M_L_or_XL check(Size in ('XS', 'S', 'M', 'L', 'XL')),
    AmountBought int not null 
        constraint c_Costume_Amount_bought_must_be_1_or_more check(AmountBought >= 1),
    SoldPricePerCostume int not null
        constraint c_Costume_Sold_Price_must_be_between_15_and_30 check(SoldPricePerCostume between 15 and 30), 
    DateBought date not null
        constraint c_Costume_Date_bought_must_be_after_January_1_2020_and_cannnot_be_future_date check(DateBought between 'January 1 2020' and getdate()),
    DateSold date not null,
        --constraint c_Costume_Date_Sold_can_be_after_January_1_2020_and_cannot_be_future_date check(DateSold between 'January 1 2020' and getdate()),
    BoughtPricePerCostume as case 
                                when Size = 'XS' then 15
                                when Size = 'S' then 17
                                when Size = 'M' then 20
                                when Size = 'L' then 22
                                when Size = 'XL' then 25
                            end persisted,
    TotalPaid as AmountBought*SoldPricePerCostume persisted,
    --PaidFullPrice bit 
    /*              case 
                        when  (Size = 'XS' and SoldPricePerCostume = 20)
                            or (Size = 'S' and SoldPricePerCostume = 22)
                            or (Size = 'M' and SoldPricePerCostume = 25)
                            or (Size = 'L' and SoldPricePerCostume = 27)
                            or (Size = 'XL' and SoldPricePerCostume = 30)
                        then 'Yes'
                        else 'No'
                        end persisted,
                        */
    constraint c_Costume_Sold_Price_must_be_greater_than_or_equal_to_Bought_Price_per_costume check(SoldPricePerCostume >= BoughtPricePerCostume),
    constraint c_Costume_Date_Bought_must_be_before_or_same_as_Date_Sold check(DateBought <= DateSold) 
    
)


select * from Costume c 