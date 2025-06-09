use RealEstateDB
GO

--1) I want a report of all the houses sorted by the block and then by the town/city
SELECT * 
from House h 
order by h.Street, h.Town

--2) I want a report of all the houses sorted by realtor
SELECT *
from House h 
order by h.RealtorName

--3) a report of how long it took for each house to sell


SELECT h.DateClosed, h.dateonmarket, DATEDIFF(day, h.dateonmarket, h.DateClosed)
from House h

--4) the price difference from the asking price to the sold price
select h.PriceAsked, h.PriceSold, h.PriceSold - h.PriceAsked
from House h 



