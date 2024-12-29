use BikeShopDB
go

--1) I would like to know how many local customers I have as oppose to out-of-town customers.
select
count(case when b.CustomerAddress like '%Spring Valley%' then 1 end) as LoalCustomers,
count(case when b.CustomerAddress not like '%Spring Valley%' then 1 end) as OutOfTownCustomers
from bike b 

--2) The amount of bikes sold per season to know what is my busiest season.
select b.Season, count(*) as AmountSold
from bike b 
group by b.season
order by AmountSold desc 

--3) I need a report with the average, minimum and maximum amount of time a bike was in my store before I sold it. Also show in this report my total profit so far.
select
 avg(datediff(day,DatePurchased,dateSold)) as AvgTimeInStore,
 min(datediff(day,DatePurchased,dateSold)) as MinTimeInStore,
 max(datediff(day,DatePurchased,dateSold)) as MaxTimeInStore,
 sum(SalePrice) - sum(PurchasePrice) as TotalProfit
from bike b 

--4) I need a report with the profit for each sale and show the Customers name, BikeCompany, PurchasePrice, SoldPrice, New/Used.
select b.CustomerName, b.BikeCompany, b.PurchasePrice, b.SalePrice, b.New, b.SalePrice - b.PurchasePrice as Profit
from bike b 

--5) Which is the most popular bike company I sell.
select top 1 b.BikeCompany, count(*) as AmountSold
from bike b 
group by b.BikeCompany
order by AmountSold desc 