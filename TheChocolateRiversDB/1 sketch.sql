/*
 Database ChocolateRiversDB

Table: Chocolate
ChocolateID int not null identity primary key
ChocolateName as concat(Shape, ' Shaped ', Type)
ChocType varchar(20)
not null not blank
must be 'solid block', 'Chocolate Trouffles', 'Chocolate Candy Bar'
Chocolate Type: 1)Solid Block-Medalists with gold medals
                2)Chocolate Trouffles-Medalists with silver
                3)Chocolate Candy Bar-Medalists with Bronze medals
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
must be less than _________
--! what date was the last date of sale for willy wonka? doesn't need start day constraint bc must be greateer than or equl to yearput on makret
ExpirationDate not null computed to 5 years after datesold

multi column constraints
date sold <= expiration date --! do we really need this if expiration date is computed? 
date sold must be >= yearput on market

 */

--?? can i have a computed column based on columns that come after it? 
--when inserting columns that can be represented with numbers insert as a number but show to the user as the text description.
--! what columns are to be represented with numbers?? ex. flavor, shape, type ???? 