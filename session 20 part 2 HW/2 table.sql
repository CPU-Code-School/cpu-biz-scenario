use CostumeDB
go
drop table if exists Costume 
go 
create table dbo.Costume(
    CostumeID int not null identity primary key,
    CustomerFirstName varchar(30) not null
        constraint c_Costume_customer_first_name_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(30) not null
        constraint c_Costume_customer_last_name_cannot_be_blank check(CustomerLastName <> ''),
    CostumeBought varchar(30) not null
        constraint c_Costume_costumes_bought_cannot_be_blank check(CostumeBought <> ''),
    Size varchar(2) not null
        constraint c_Costume_size_must_be_XS_S_M_L_or_XL check(Size in('XS', 'S', 'M', 'L', 'XL')),
    AmountBought int not null
        constraint c_Costume_amount_bought_must_be_greater_than_zero check(AmountBought > 0),
    CostPricePerCostume decimal(4,2) not null
        constraint c_Costume_cost_price_per_costume_must_be_15_17_20_22_or_25 check(CostPricePerCostume in(15, 17, 20, 22, 25)), 
    SoldPricePerCostume decimal(4,2) not null,
    PaidFullPrice bit,
    DateBought date not null
        constraint c_Costume_date_bought_cannot_be_earlier_than_2020_1_1 check(DateBought >= '2020/1/1'),
    DateSold date not null, 
    TotalPriceCustomerPaid as SoldPricePerCostume * AmountBought persisted,
    constraint c_Costume_date_sold_must_be_later_than_or_on_date_bought check(DateSold >= DateBought ),
    constraint c_Costume_sold_price_per_costume_must_be_20_22_25_27_or_30_OR_equal_to_cost_price 
            check(SoldPricePerCostume in(20, 22, 25, 27, 30) or SoldPricePerCostume = CostPricePerCostume )
)

select * from Costume