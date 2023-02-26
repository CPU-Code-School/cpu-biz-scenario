use RealEstateDb

--1) I want a report of all the houses sorted by the block and then by the town/city
select * 
from House h 
order by h.HouseAddress, h.HouseTown

--2) I want a report of all the houses sorted by realtor
select * 
from House h 
order by h.Realtor

--3) a report of how long it took for each house to sell
select TimeSoldInDays = datediff(day,h.DateOnMarket,h.DateSold), *
from House h 
where h.DateSold is not null

--4) the price difference from the asking price to the sold price
select DiffInPrice = h.SellingPrice - h.AskingPrice, *
from House h 
where h.SellingPrice is not null 
