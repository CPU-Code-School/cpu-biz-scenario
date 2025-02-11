
--Reports:
--1) I would like to know how many local customers I have as oppose to out-of-town customers.
select LocalCustomers = count (*)
from sales s
where s.customerAddress like '%spring valley%'

select OutOfTownCustomers = count (*)
from sales s
where s.customerAddress not like '%spring valley%'


--2) The amount of bikes sold per season to know what is my busiest season.
select Sales = count(*), s. season
from sales s
group by s.season 
order by Sales desc

--3) I need a report with the average, minimum and maximum amount of time a bike was in my store before I sold it. Also show in this report my total profit so far.
select AvgMonthsInStore = avg(datediff(month, s.DatePurchased, s.DateSold)), MinMonthsInStore = min(datediff(month, s.DatePurchased, s.DateSold)),
MaxMonthsInStore = max(datediff(month, s.DatePurchased, s.DateSold)), TotalProfit = sum(s.SoldPrice - s.PurchasePrice)
from sales s

--4) I need a report with the profit for each sale and show the Customers name, BikeCompany, PurchasePrice, SoldPrice, New/Used.
select s.CustomerName, s.BikeCompany, s.PurchasePrice, s.SoldPrice, s.New, Profit = s.SoldPrice - s.PurchasePrice
from sales s
order by Profit desc

--5) Which is the most popular bike company I sell.
select top 1 s.bikecompany, Sales = count(*)
from Sales s
group by s.BikeCompany
order by Sales desc

