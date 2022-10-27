/*
 Database ChocolateRiversDB

Table: Chocolate
ChocolateID int not null identity primary key
ChocolateName as concat(Shape, ' Shaped ', Type)
Type varchar(11)
not null not blank
must be 'solid block', 'troufles', 'candy bar'
Flavor varchar(38)
  not null not blank
  must be in  ('Caramalized white chocolate', 'Milk Chocolate Hazelnut Esspresso', 'Dark 54 Chocolate Rasberry Pomegranate', 'Dark salted caramel', 'milk creme & Dark Creme')
Shape varchar(7)
not null not blank  
must be 'heart','oval','square','oracle','ripple','thimble'
RecipeSource varchar(30)
not null not blank
YearPutonMarket int not null must be year (4 digits, not 0 neg) from 1840 to current --! end date of constraint
Weight(oz.) decimal(3.2) not null must be between 1 and 6
DateSold date not null
--! any start or end date constraints?
ExpirationDate not null computed to 5 years after datesold

multi column constraints





 */

--?? can i have a computed column based on columns that come after it? 
