--reports

--1) I would like to know how many local customers I have as oppose to out-of-town customers.
select IsLocal = case 
when b.CustomerAddress like '%Spring Valley%' then 'Local'
when b.CustomerAddress not like '%Spring Valley%' then 'Not local'
end, Customers = count(*)
from Bike b
group by case 
when b.CustomerAddress like '%Spring Valley%' then 'Local'
when b.CustomerAddress not like '%Spring Valley%' then 'Not local'
end

--2) The amount of bikes sold per season to know what is my busiest season.
select BikesSold = count(*), b.Season
from Bike b 
group by b.Season
order by BikesSold desc 

--3) I need a report with the average, minimum and maximum amount of time a bike was in my store before I sold it. Also show in this report my total profit so far.
select AvgDaysInStore = avg(datediff(day, b.DatePurchased, b.DateSold)), 
MinimumDaysInStore = min(datediff(day, b.DatePurchased, b.DateSold)), 
MaximumDaysInStore = max(datediff(day, b.DatePurchased, b.DateSold)),
ProfitSoFar = sum(b.SoldPrice - b.PurchasePrice)
from Bike b

--4) I need a report with the profit for each sale and show the Customers name, BikeCompany, PurchasePrice, SoldPrice, New/Used.
select Profit = b.SoldPrice - b.PurchasePrice, b.CustomerName, b.BikeCompany, b.PurchasePrice, b.SoldPrice, 
[New/Used]  = case  b.IsNew
when 1 then 'New'
else 'Used'
end
from Bike b 

--5) Which is the most popular bike company I sell.
select top 1 BikeCompany
from Bike
group by BikeCompany
order by count(BikeCompany) desc

