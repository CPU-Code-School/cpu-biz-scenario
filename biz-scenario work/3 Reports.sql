use CostumeDB
GO

--1) I want a report of all the houses sorted by the block and then by the town/city
SELECT * 
from costume c 
order by c.Street, c.Town

--2) I want a report of all the houses sorted by realtor
SELECT *
from Costume c 
order by c.RealtorName

--3) a report of how long it took for each house to sell
--chang to date on market

SELECT c.DateClosed, c.dateonmarket, DATEDIFF(day, dateonmarket, DateClosed)
from costume c 

--4) the price difference from the asking price to the sold price
select c.PriceAsked, c.PriceSold, c.PriceSold - c.PriceAsked
from Costume c 




