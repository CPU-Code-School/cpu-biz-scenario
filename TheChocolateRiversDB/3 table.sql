go
use ChocolateRiverDB
go
drop table if exists dbo.Chocolate
go
create table dbo.Chocolate(
    ChocolateID int not null identity primary key, 
   

ChocolateType varchar(20) not null 
    constraint ck_Chocolate_chocolate_type_must_be_solid_block_or_chocolate_troufles_or_chocolate_candy_bar check(ChocolateType in  ('Solid Block', 'Chocolate Trouffles', 'Chocolate Candy Bar')),
Flavor varchar(38) not null
--!!
  constraint ck_Chocolate_flavor_must_be_
  'Caramalized_white_chocolate',_'Milk Chocolate Hazelnut Esspresso', 'Dark 54 Chocolate Rasberry Pomegranate', 'Dark salted caramel', 'milk creme & Dark Creme' check (Flavor in  ('Caramalized white chocolate', 'Milk Chocolate Hazelnut Esspresso', 'Dark 54 Chocolate Rasberry Pomegranate', 'Dark salted caramel', 'milk creme & Dark Creme')),
  --!! what to do when constraint information would make it too big for a constraint name? 
Shape varchar(7) not null
constraint ck_Chocolate_Shape_must_be_heart_or_oval_or_square_or_oracle_or_ripple_or_thimble check (Shape in ('heart','oval','square','oracle','ripple','thimble')),
ChocolateName as concat(Shape, ' Shaped ', ChocolateType),
RecipeSource varchar(30) not null
  constraint ck_Chocolate_recipe_source_may_not_be_blank check(RecipeSource <> ''),
YearPutonMarket int not null
  constraint ck_Chocolate_year_put_on_market_must_be_from_1840_and_on check (YearPutonMarket >= 1840),
  --! end date of constraint get date
  --! this is int- how to constraint that must be 4 digits? without end date solved by above
ChocolateWeight decimal(3,2) not null
  constraint ck_Chocolate_chocolate_weight_must_be_between_1_point_00_and_6_point_00 check (ChocolateWeight between 1.00 and 6.00),
DateSold date not null,
--must be less than _________ gwt date
--! what date was the last date of sale for willy wonka? doesn't need start day constraint bc must be greateer than or equl to yearput on makret
ExpirationDate as dateadd(year, 5, DateSold), 
--!! date sold <= expiration date --! do we really need this if expiration date is computed? 
Constraint ck_Chocolate_date_sold_must_be_greater_or_equal_to_year_put_on_market check(year(DateSold) >= YearPutonMarket)
)
--!! do I need a unque constraint to block duplicates - but hypothetically there could be same situation happens twice 

select * 
from Chocolate c