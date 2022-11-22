go
use ChocolateRiverDB
go
delete Chocolate
go

insert Chocolate (ChocolateType, Flavor, Shape, RecipeSource, YearPutOnMarket, ChocolateWeight, DateSold)
select 
--ChocolateType
case  m.Medal 
when 'gold' then 'Solid Block'
when 'silver' then 'Chocolate Trouffles'
when 'bronze' then 'Chocolate Candy Bar'
end,
--Flavor
case
when m.SportSubCategory like '%ladies%' or m.SportSubCategory like '%women%' then 'Caramalized white chocolate'
when m.SportSubCategory like '%men%' then 'Milk Chocolate Hazelnut Esspresso'
when m.SportSubcategory like '%[0-9]%' then 'Dark 54 Chocolate Rasberry Pomegranate'
when m.SportSubcategory like '% %' then 'milk creme & Dark Creme'
else 'Dark salted caramel'
end,

--Shape
case  
when m.AgeatMedal between  14 and 16 then 'heart'
when m.AgeatMedal between 17 and 27 then 'oval'
when m.AgeatMedal between 29 and 41 then 'square'
when m.AgeatMedal between 48 and 58 then 'oracle'
when m.AgeatMedal between 59 and 60 then 'ripple'
else 'thimble'
end,
--RecipeSource
m.Country,
-- !! spec doesn't give source, assumed country 
--YearPutOnMarket
m.YearBorn,
--ChocolateWeight
m.AgeatMedal/10,
--!! why am i only getting whole numbers? am i supposed to be getting floats? convert to decimal int > decimal, decimal can't be converted to int
--DateSold
datefromparts(m.OlympicYear, (m.AgeatMedal/6), (m.AgeatMedal/4))

from RecordKeeperDB.dbo.Medalist m


--test constraints (bad data)
--ChocolateType not null / ck_Chocolate_type_must_be_solid_block_or_chocolate_troufles_or_chocolate_candy_bar
--union select null
--union select 'troufles'
--Flavor must be 'Caramalized white chocolate', 'Milk Chocolate Hazelnut Esspresso', 'Dark 54 Chocolate Rasberry Pomegranate', 'Dark salted caramel', or 'milk creme & Dark Creme'
--union select 'Solid Block', 'Milk White Chocolate'
--shape must be ('heart','oval','square','oracle','ripple','thimble')
--union select 'Solid Block', 'Dark Salted Caramel', 'diamond'
--RecipeSource may not be blank
--union select 'Solid Block', 'Dark Salted Caramel', 'ripple', ''
-- test YearPutonMarket must be from 1840 and on
--union select 'Solid Block', 'Dark Salted Caramel', 'ripple', 'USA', 1799
-- (ChocolateWeight between 1.00 and 6.00)
--union select 'Solid Block', 'Dark Salted Caramel', 'ripple', 'USA', 1900, 0
--union select 'Solid Block', 'Dark Salted Caramel', 'ripple', 'USA', 1900, 7
--datesold ck_Chocolate_date_sold_cannot_be_future_date
--union select 'Solid Block', 'Dark Salted Caramel', 'ripple', 'USA', 1900, 6, '05/04/2030'
--date_sold_must_be_greater_or_equal_to_year_put_on_market
--union select 'Solid Block', 'Dark Salted Caramel', 'ripple', 'USA', 1900, 6, '05/04/1899'


select * from Chocolate c
