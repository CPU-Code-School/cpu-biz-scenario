use BicycleShopDb
--Reports:
--1) I would like to know how many local customers I have as oppose to out-of-town customers.
select NumLocals = count(*)
from Shop s
where StreetAddress like '%Spring Valley NY%'

--2) The amount of bikes sold per season to know what is my busiest season.
select s.SeasonSold, NumSold = count(*)
from Shop s
group by SeasonSold
--3) I need a report with the average, minimum and maximum amount of time a bike was in my store before I sold it. Also show in this report my total profit so far.
select AvgTimeBikesInStore = Avg(datediff(day, s.DatePurchased, s.DateSold)), LeastTimeBikeInStore = min(datediff(day, s.DatePurchased, s.DateSold)),
    MaxTimeBikeInStore = max(datediff(day, s.DatePurchased, s.DateSold)), TotalProfit = Sum(s.SoldPrice - s.PurchasePrice)
from Shop s

--4) I need a report with the profit for each sale and show the Customers name, BikeCompany, PurchasePrice, SoldPrice, New/Used.
select ProfitFromSale = s.SoldPrice - s.PurchasePrice, s.FirstName, s.LastName, s.BikeCompany, s.PurchasePrice, s.SoldPrice, s.NewOrUsed
from Shop s
--5) Which is the most popular bike company I sell.
select top(1) s.BikeCompany , NumBikes = count(*)
from Shop s
group by s.BikeCompany
order by NumBikes desc
