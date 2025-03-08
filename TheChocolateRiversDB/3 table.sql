go
use ChocolateRiverDB
go
drop table if exists dbo.Chocolate
go
create table dbo.Chocolate(
    ChocolateID int not null identity primary key, 
ChocolateType varchar(20)
   constraint ck_Chocolate_chocolate_type_must_be_SolidBlock_ChocTrouffles_or_ChocCandyBar check (ChocolateType in ('Solid Block',  'Chocolate Trouffles', 'Chocolate Candy Bar')), 
Flavor varchar(45)
constraint ck_Chocolate_flavor_must_be_verified_flavor check (Flavor in ('Caramalized white chocolate', 'Milk Chocolate Hazelnut Esspresso', 'Dark 54 Chocolate Rasberry Pomegranate', 'Dark salted caramel', 'milk creme & Dark Creme')), 
Shape varchar(7) not null
constraint ck_Chocolate_Shape_must_be_heart_or_oval_or_square_or_oracle_or_ripple_or_thimble check (Shape in ('heart','oval','square','oracle','ripple','thimble')),
ChocolateName as concat(Shape, ' Shaped ', Flavor, ' ', ChocolateType,  '.'),
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

