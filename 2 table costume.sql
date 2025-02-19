use CostumeDB
drop table if exists dbo.Costume
go 
create table dbo.Costume (
    CostumeId int not null identity primary key,
    CustomerFirstName varchar(25) not null,
        constraint c_Costume_customer_first_name_cannot_be_blank check(CustomerFirstName > ''),
    CustomerLastName varchar(25) not null,
        constraint c_Costume_customer_last_name_cannot_be_blank check(CustomerLastName > ''),
    CostumesBought varchar(100) not null,
        constraint c_Costume_costumes_bought_must_be_one_of_the_costume_choices 
            check(CostumesBought in ('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    CostumeSize varchar(2) not null,
        constraint c_Costume_costume_size_cannot_be_blank check(CostumeSize > ''),
    CostumeAmount int not null,
        constraint c_Costume_costume_amount_must_be_greater_than_zero check (CostumeAmount > 0),
    CostumeCostPrice int not null, 
        constraint c_Costume_costume_cost_price_must_be_one_of_the_choices check (CostumeCostPrice in (15, 17, 20, 22, 25)),
    CostumeSoldPrice int not null,
        constraint c_Costume_costume_sold_price_must_be_15_or_greater check(CostumeSoldPrice >= 15),
    DateBought date not null, 
        constraint c_Costume_date_bought_cannot_be_a_future_date check(DateBought <= getdate()),
    DateSold date not null,
        constraint c_Costume_date_sold_cannot_be_a_future_date check(DateSold <= getdate()),
    TotalPrice as CostumeSoldPrice * CostumeAmount persisted,
    constraint c_Costume_sold_price_must_be_more_than_or_equal_to_cost_price check(CostumeSoldPrice >= CostumeCostPrice),
    constraint c_Costume_date_sold_must_be_on_or_after_date_bought check(DateSold >= DateBought),
    constraint c_Costume_total_price_must_be_greater_than_or_equal_to_sold_price check(TotalPrice >= CostumeSoldPrice)
)
go

alter table costume drop column if exists Profit 
go 
alter table costume add Profit as (CostumeSoldPrice * CostumeAmount) - (CostumeCostPrice * CostumeAmount) persisted 
go 

 --TotalPrice int  not null,
        --constraint c_Costume_total_price_must_be_15_or_greater check(TotalPrice >= 15),