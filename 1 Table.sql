use ConfectioneryDB
go 

drop table if exists Orders
go 

create table dbo.Orders(
    OrderId int not null identity primary key,
    CustomerFirstName varchar (20) not null
        constraint c_customer_first_name_cannot_be_blank check (CustomerFirstName <> ''),
    CustomerLastName varchar (30) not null
        constraint c_customer_last_name_cannot_be_blank check (CustomerLastName <> ''),
    Branch char (8) not null
        constraint c_confectionery_branch_is_either_Lakewood_or_Brooklyn check (Branch in ('Lakewood', 'Brooklyn')),
    OrderDate smalldatetime not null
        constraint c_order_date_must_be_on_or_after_January_twenty_first_twenty_twenty_one check (OrderDate > = 01/21/2021),
    ProductType varchar (10) not null 
        constraint c_confectionery_product_type_is_cake_or_cookie_or_cupcake check (ProductType in ('cake', 'cookie', 'cupcake')),
    BaseType varchar (50) not null 
        constraint c_confectionery_base_must_be_chocolate_vanilla_coconut_chocolate_peanut_butter_banana_strawberry_shortcake_or_sugar 
        check (BaseType in ('chocolate', 'vanilla', 'coconut', 'chocolate peanut butter', 'banana', 'strawberry shortcake', 'sugar')),
    Topping varchar (50) not null 
        constraint c_confectionery_topping_must_be_royal_icing_fondant_chocolate_caramel_strawberry_coconut_peanut_butter_vanilla_or_no_topping check 
        (Topping in ('royal icing', 'fondant', 'chocolate', 'caramel', 'strawberry', 'coconut', 'peanut butter', 'vanilla', 'no topping')) ,
    CustomSpecification varchar (350) not null
        default '',
    Photo bit not null,
    Amount int not null,
    CostPerItem as (case
        when ProductType = 'cake' and BaseType = 'Strawberry shortcake' and photo = 0 then 55.00
        when ProductType = 'cake' and BaseType = 'Strawberry shortcake' and photo = 1 then 63.00 
        when ProductType = 'cake' and BaseType <> 'Strawberry shortcake' and photo = 0 then 50.00
        when ProductType = 'cake' and BaseType <> 'Strawberry shortcake' and photo = 1 then 58.00
        when ProductType = 'cookie' and photo = 0 then 3.50 
        when ProductType = 'cookie' and photo = 1 then 5.00 
        else 3.00
        end) persisted,
    TotalCost as (case
        when ProductType = 'cake' and BaseType = 'Strawberry shortcake' and photo = 0 then 55.00
        when ProductType = 'cake' and BaseType = 'Strawberry shortcake' and photo = 1 then 63.00 
        when ProductType = 'cake' and BaseType <> 'Strawberry shortcake' and photo = 0 then 50.00
        when ProductType = 'cake' and BaseType <> 'Strawberry shortcake' and photo = 1 then 58.00
        when ProductType = 'cookie' and photo = 0 then 3.50 
        when ProductType = 'cookie' and photo = 1 then 5.00 
        else 3.00
        end) * Amount persisted, 
    Occasion varchar (50) not null
        constraint c_occasion_cannot_be_blank check (Occasion <> ''),

constraint c_confectionery_amount_must_be_between_12_and_500_for_cupcake_and_between_24_and_500_for_cookie_and_greater_than_zero_for_cake 
check ((ProductType = 'cupcake' and Amount between 12 and 500)
or (ProductType = 'cookie' and Amount between 24 and 500)
or (ProductType = 'cake' and Amount > 0)),
constraint c_confectionery_no_photos_on_cupcakes check ((ProductType = 'cupcake' and Photo = '0') or (ProductType in ('cake', 'cookie') and Photo in (1, 0))),

)

go    