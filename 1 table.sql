use costumedb
go 
drop table if exists dbo.Costume
go 
create table dbo.Costume (
    CostumeId int not null identity primary key,
    CustomerLastName varchar (25) not null constraint ck_customer_last_name_cannot_be_blank check (CustomerLastName <> ''),
    CustomerFirstName varchar (25) not null constraint ck_customer_first_name_cannot_be_blank check (CustomerFirstName <> ''),
    CostumeBought varchar (50) not null constraint ck_costume_bought_cannot_be_blank check (CostumeBought <> ''),
    CostumeSize varchar (2) not null constraint ck_costume_size_can_only_be_xs_s_m_l_or_xl check (CostumeSize in ('xs','s','m','l','xl')),
    AmountBought int not null,
    CostPricePerCostume as case CostumeSize 
        when 'xs' then 15
        when 's' then 17
        when 'm' then 20
        when 'l' then 22
        when 'xl' then 25
        end persisted,
    SoldPricePerCostume as case CostumeSize
        when 'xs' then 20
        when 's' then 22
        when 'm' then 25
        when 'l' then 27
        when 'xl' then 30
        end persisted,
    PricePaidByCustomer int not null constraint ck_price_paid_by_costomer_must_be_between_15_and_30 check(PricePaidByCustomer between 15 and 30),
    TotalPaidByCustomer as PricePaidbyCustomer * AmountBought persisted,
    FullPricePaid bit,
    FullPricePaidDesc as case FullPricePaid
        when 0 then 'false'
        when 1 then 'true'
        end persisted,
    DateBought date not null constraint ck_date_bought_cannot_be_earlier_than_january_1_2020 check(DateBought >= '2020-1-1'),
        constraint ck_date_bought_cannot_be_a_future_date check (DateBought <= getdate()),
    DateSold date not null constraint ck_date_sold_cannot_be_earlier_than_january_1_2020 check (DateSold >= '2020-1-1'),
        constraint ck_date_sold_cannot_be_a_future_date check (DateSold <= getdate())
)


