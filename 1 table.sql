--Name, Branch, Date, Type of base, Item, Topping, Picture?, Specifics, Occasion, Amount, (Price per, Order price)
use ConfectionaryDB
go
drop table if exists Confectionary
go

create table dbo.confectionary(
    confectionaryID int not null identity primary key,
    FullName varchar(30) not null,
    Branch varchar(8) not null
        constraint ck_confectionary_branch_can_only_be_lakewood_or_brooklyn check(branch in ('Lakewood', 'Brooklyn')),
    DateOrdered date not null
        constraint ck_confectionary_DateOrdered_cant_be_before_january_1_2021 check(DateOrdered >= '01/01/2021'),
    TypeOfBase varchar(25) not null,
    Item varchar(8) not null
        constraint ck_confectionary_item_can_only_be_cake_cupcake_or_cookie check (item in ('cake', 'cupcake', 'cookie')),
    Topping varchar(15) not null, 
    Picture varchar(3) not null
        constraint ck_confectionary_picture_must_eitehr_be_yes_or_no check(picture in ('yes', 'no')),
    Specifics varchar(100) null,
    Occasion varchar(35) not null,
    Amount int not null 
        constraint ck_confectionary_amount_cannot_be_more_than_Five_hundred check(amount <= 500),
    PricePerItem as
        case
            when item = 'Cookie' then 3.50
            when Item = 'cake' and TypeOfBase <> 'Strawberry Shortcake' then 50.00
            when item = 'cake' and TypeOfBase = 'Strawberry Shortcake' then 55.00
            when item = 'cupcake' then 3.00
        end,

    PriceOfOrder as
        case 
            when picture ='yes'  and item = 'cookie' then (amount *3.50) +1.50
            when picture = 'yes' and item = 'cake' and typeOfBase = 'Strawberry Shortcake' then (amount*55.00)+8.00
            when picture = 'yes' and item = 'cake' and typeOfBase <> 'Strawberry Shortcake' then (amount*50.00)+8.00
            when picture = 'no' and item = 'cookie' then amount * 3.50
            when picture = 'no' and item = 'cake' and typeOfBase = 'Strawberry Shortcake' then amount * 55.00
            when picture = 'no' and item = 'cake' and typeOfBase <> 'Strawberry Shortcake' then amount * 50.00
            when picture = 'no' and item = 'cupcake' then amount * 3.00
        end,
constraint ck_confectionary_min_amount_for_cookies_is_24 check((item = 'Cookie' and amount >=24) or (item = 'Cupcake' and amount >=12)or (item = 'cake')),
)