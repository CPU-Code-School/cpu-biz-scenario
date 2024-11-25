use confectioneryDB
go
drop table if exists dbo.Baking
go
create table dbo.baking(
    BakingID int not null identity primary key,

    CustomerName varchar(100) not null 
        constraint ck_Baking_customer_name_cannot_be_blank check (CustomerName <> ''),

    StoreBranch varchar (20) not null
        constraint ck_Baking_store_branch_must_be_lakewood_or_brooklyn check (StoreBranch in ('lakewood', 'brooklyn')),

    OrderDate date not null 
        constraint ck_Baking_order_date_must_be_after_1_1_2021 check (OrderDate >= '1/1/2021'),

    BaseType varchar(50) not null 
        constraint ck_Baking_base_type_must_be_eithe_choc_vanilla_coconut_chocpeanutbutter_banana_strawberryshortcake_or_sugar
            check(BaseType in ('Chocolate', 'Vanilla', 'Coconut', 'Chocolate Peanut Butter', 'Banana', 'Strawberry shortcake', 'sugar')),

    ItemType varchar(30) not null
        constraint ck_Baking_item_type_must_be_either_cake_or_cookie_or_cupcake check(ItemType in ('cake', 'cookie', 'cupcake')),
    
    Topping varchar(50) not null
        constraint ck_Baking_topping_must_be_either_icing_fondant_choc_caramel_strawberry_coconut_peanut_butter_vanilla_or_no_topping
            check (Topping in ('Royal icing', 'fondant', 'frosting', 'chocolate', 'caramel', 'strawberry', 'coconut', 'peanut butter', 'vanilla', 'no topping')),

    Picture varchar(3) not null
        constraint ck_Baking_picture_must_be_either_yes_or_no check(picture in ('yes', 'no')),

    OrderSpecifics varchar(100) not null
        constraint ck_Baking_order_specifics_cannot_be_blank check (OrderSpecifics <> ''),
    
    OrderOccasion varchar(50) not null
        constraint ck_Baking_order_occasion_cannot_be_blank check (OrderOccasion <> ''),

    Amount INT NOT NULL,
 
    PricePerItem AS
        (CASE 
            WHEN BaseType = 'Strawberry shortcake' THEN 
            (55 + CASE WHEN Picture = 'yes' THEN 8 ELSE 0 END)  
            WHEN ItemType = 'cake' THEN 
            (50 + CASE WHEN Picture = 'yes' THEN 8 ELSE 0 END) 
            WHEN ItemType = 'cookie' THEN 
            (3.50 + CASE WHEN Picture = 'yes' THEN 1.50 ELSE 0 END)  
            WHEN ItemType = 'cupcake' THEN 
            (3 + CASE WHEN Picture = 'yes' THEN 0 ELSE 0 END) 
            ELSE 0 
            END) persisted,

     OrderPrice AS (Amount * 
            CASE
            WHEN ItemType = 'cookie' THEN
                (3.50 + CASE WHEN Picture = 'yes' THEN 1.50 ELSE 0 END)
            WHEN ItemType = 'cupcake' THEN
                (3 + CASE WHEN Picture = 'yes' THEN 0 ELSE 0 END)
            WHEN ItemType = 'cake' THEN
                (50 + CASE WHEN Picture = 'yes' THEN 8 ELSE 0 END)
            WHEN BaseType = 'Strawberry shortcake' THEN
                (55 + CASE WHEN Picture = 'yes' THEN 8 ELSE 0 END)
            ELSE 0
        END) persisted,

        CONSTRAINT c_Baking_amount_must_be_within_the_max_and_min 
            CHECK (
                (ItemType = 'cookie' AND Amount BETWEEN 24 AND 500) OR
                (ItemType = 'cupcake' AND Amount BETWEEN 12 AND 500) OR
                (ItemType = 'cake' AND Amount > 0)),
        
        CONSTRAINT ck_Baking_PricePerItem_non_negative CHECK (PricePerItem >= 0)

 
    )





    
      
