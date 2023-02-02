use CostumeDB
go
drop table if exists Costume 
go 
create table dbo.Costume(
    CostumeId int not null identity primary key,
    CustomerFirstName varchar(30) not null
        constraint c_Costume_customer_first_name_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(30) not null
        constraint c_Costume_customer_last_name_cannot_be_blank check(CustomerLastName <> ''),
    CostumeBought varchar(30) not null
        constraint c_Costume_costume_bought_must_be_one_of_the_costumes_listed
            check(CostumeBought in('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    Size varchar(2) not null
        constraint c_Costume_size_must_be_XS_S_M_L_or_XL check(Size in('XS', 'S', 'M', 'L', 'XL')),
    AmountBought int not null
        constraint c_Costume_amount_bought_must_be_greater_than_zero check(AmountBought > 0),
    CostPricePerCostume decimal(4,2) not null
        constraint c_Costume_cost_price_per_costume_must_be_15_17_20_22_or_25 check(CostPricePerCostume in(15, 17, 20, 22, 25)), 
    SoldPricePerCostume decimal(4,2) not null,
    PaidFullPrice bit not null, 
    DateBought date not null
        constraint c_Costume_date_bought_cannot_be_earlier_than_2020_1_1 check(DateBought >= '2020/1/1'),
    DateSold date not null
        constraint c_Costume_date_sold_must_be_before_or_on_current_date check(DateSold <= getdate()), 
    TotalPriceCustomerPaid as SoldPricePerCostume * AmountBought persisted,
    constraint c_Costume_date_sold_must_be_later_than_or_on_date_bought check(DateSold >= DateBought ),
    constraint c_Costume_sold_price_per_costume_must_be_20_22_25_27_or_30_OR_equal_to_cost_price 
            check(SoldPricePerCostume in(20, 22, 25, 27, 30) or SoldPricePerCostume = CostPricePerCostume ),
    constraint c_Costume_cost_price_per_costume_matches_size 
         check(CostPricePerCostume = 
                case 
                    when Size = 'XS' then 15
                    when Size = 'S' then 17
                    when Size = 'M' then 20
                    when Size = 'L' then 22
                    else 25
                end),
    constraint c_Costume_paid_full_price_when_cost_price_equals_to_sold_price_then_0_else_1
        check(PaidFullPrice =  
                case 
                    when CostPricePerCostume = SoldPricePerCostume then 0
                    else 1
                end )
)

select * from Costume

