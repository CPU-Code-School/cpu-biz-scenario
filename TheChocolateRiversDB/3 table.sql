go
use ChocolateRiverDB
go
drop table if exists dbo.Chocolate
go
create table dbo.Chocolate(
    ChocolateID int not null identity primary key, 
ChocolateType int not null 
  constraint ck_Chocolate_chocolate_type_must_be_1_2_or_3 check (ChocolateType between 1 and 3),
ChocolateTypeDesc as case ChocolateType
when 1 then 'Solid Block'
when 2 then 'Chocolate Trouffles'
when 3 then 'Chocolate Candy Bar'
end,
Flavor int not null
  constraint ck_Chocolate_flavor_must_be_1_through_5 check (Flavor between 1 and 5),
FlavorDesc as case Flavor
when 1 then 'Caramalized white chocolate'
when 2 then 'Milk Chocolate Hazelnut Esspresso'
when 3 then 'Dark 54 Chocolate Rasberry Pomegranate'
when 4 then 'Dark salted caramel'
when 5 then 'milk creme & Dark Creme'
end,
Shape varchar(7) not null
constraint ck_Chocolate_Shape_must_be_heart_or_oval_or_square_or_oracle_or_ripple_or_thimble check (Shape in ('heart','oval','square','oracle','ripple','thimble')),
--ChocolateName as concat(Shape, ' Shaped ', ChocolateTypeDesc, ' ', FlavorDesc, '.'),
--!! big issue - desc columns are computed but choc name is also and can't reference computed column in another computed column
RecipeSource varchar(30) not null
  constraint ck_Chocolate_recipe_source_may_not_be_blank check(RecipeSource <> ''),
YearPutOnMarket int not null
  constraint ck_Chocolate_year_put_on_market_must_be_from_1840_to_current_date check (YearPutOnMarket between 1840 and getdate()),
ChocolateWeight decimal(3,2) not null
  constraint ck_Chocolate_chocolate_weight_must_be_between_1_point_00_and_6_point_00 check (ChocolateWeight between 1.00 and 6.00),
DateSold date 
  constraint ck_Chocolate_date_sold_cannot_be_future_date check (DateSold <= getdate()),
ExpirationDate as dateadd(year, 5, DateSold), 
Constraint ck_Chocolate_date_sold_must_be_greater_or_equal_to_year_put_on_market check(year(DateSold) >= YearPutOnMarket)
)

