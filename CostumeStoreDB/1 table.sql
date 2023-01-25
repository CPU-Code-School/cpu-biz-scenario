use CostumeStoreDB
go

drop table if exists Costume
go

create table dbo.Costume(
    CostumeId int not null identity primary key,
    CustomerFirstName varchar(20) not null constraint ck_Costume_CustomerFirstName_cannot_be_blank check(CustomerFirstName <> ''),
    CustomerLastName varchar(20) not null constraint ck_Costume_CustomerLastName_cannot_be_blank check(CustomerLastName <> ''),
    Style varchar(20) not null constraint ck_Costume_Style_must_be_one_of_the_style_options check(Style in('American Girl Doll', 'Artist', 'Bumble Bee', 'Colonial Boy', 'Colonial Girl', 'Elephant', 'Fire Man', 'Police Man', 'Princess', 'Zebra')),
    Size varchar(2) not null constraint ck_Costume_Size_must_be_one_of_the_size_options check(Size in ('XS', 'S', 'M', 'L', 'XL')),
    SoldQuantity int not null constraint ck_Costume_SoldQuantity_must_be_greater_than_zero check(SoldQuantity > 0),
    PurchaseDate date not null constraint ck_Costume_PurchaseDate_must_be_after_Jan_1_2020 check(datefromparts(2020, 1, 1) < PurchaseDate),
    SoldDate date not null,
    PurchasePrice as case Size when 'XS' then 15.00 when 'S' then 17.00 when 'M' then 20.00 when 'L' then 22.00 when 'XL' then 25.00 end persisted,
    --BG I didnt do the SoldPrice as a case on size because she may sell to a friend or family member for cost price, as per the spec
    SoldPrice decimal(4,2) not null,
    CustomerTotalPrice as SoldPrice * SoldQuantity persisted,
    SoldPriceFull as case
    when Size = 'XS' and SoldPrice = 20.00 then 'Yes'
    when Size = 'S' and SoldPrice = 22.00 then 'Yes'
    when Size = 'M' and SoldPrice = 25.00 then 'Yes'
    when Size = 'L' and SoldPrice = 27.00 then 'Yes'
    when Size = 'XL' and SoldPrice = 30.00 then 'Yes'
    else 'No'
    end persisted,
    constraint ck_Costume_SoldDate_must_be_after_PurchaseDate check(SoldDate > PurchaseDate),
    constraint ck_Costume_SoldPrice_cannot_be_less_than_PurchasePrice check(SoldPrice >= PurchasePrice)
)