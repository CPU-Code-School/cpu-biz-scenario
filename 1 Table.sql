use ConfectioneryDB
go 

drop table if exists Confectionery
go 

create table dbo.Confectionery(
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
        constraint c_confectionery_base_must_be_either_chocolate_vanilla_coconut_chocolate_peanut_butter_banana_strawberry_shortcake_or_sugar 
        check (BaseType in ('chocolate', 'vanilla', 'coconut', 'chocolate_peanut_butter', 'banana', 'strawberry shortcake', 'sugar')),
    Topping varchar (50) not null 
        constraint c_confectionery_topping_must_be_either_royal_icing_fondant_chocolate_caramel_strawberry_coconut_peanut_butter_or_no_topping check 
        (Topping in ('royal icing', 'fondant', 'chocolate', 'caramel', 'strawberry', 'coconut', 'peanut butter', 'no topping')) ,
    CustomSpecification varchar (350) not null 
        default '',
    Photo varchar (3) not null
        constraint c_confectionery_photo_must_be_either_yes_or_no check (Photo in ('yes', 'no')),
    Amount int not null,
    CostPerItem decimal (4,2) not null,
    TotalCost decimal (6,2) not null, 
    Occasion varchar (50) not null
        default '',

constraint c_confectionery_when_product_type_is_cookie_base_must_be_sugar check ((ProductType = 'cookie' and BaseType ='sugar') or (ProductType in ('cake', 'cupcake'))),
constraint c_confectionery_amount_must_be_between_twelve_and_five_hundred_when_the_product_type_is_cupcake check ((ProductType = 'cupcake' and Amount between 12 and 500)
or (ProductType = 'cookie' and Amount between 24 and 500) or (ProductType = 'cake' and Amount > 0)),
constraint c_confectionery_no_photos_on_cupcakes check ((ProductType = 'cupcake' and Photo = 'no') or (ProductType in ('cake', 'cookie') and Photo in ('yes', 'no'))),
constraint c_confectionery_cost_must_include_price_of_picture check (
    (ProductType = 'cake' and BaseType = 'Strawberry shortcake' and CostPerItem = (case when photo = 'yes' then 63.00 else 55.00 end)) or 
    (ProductType = 'cake' and BaseType <> 'Strawberry shortcake' and CostPerItem = (case when photo = 'yes' then 58.00 else 50.00 end)) or 
    (ProductType = 'cookie' and BaseType = 'Sugar' and CostPerItem = (case when photo = 'yes' then 5.00 else 3.50 end)) or 
    (ProductType = 'cupcake' and CostPerItem = 3.00))  

        
)

go     

