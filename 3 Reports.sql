--1.
select * from BikeShop where CustomerAddress like '%Spring Valley%' or CustomerAddress like '%Monsey%'
select * from BikeShop where CustomerAddress not like '%Spring Valley%' and CustomerAddress not like '%Monsey%'

--2.
select BikesSold = count(*), SeasonSold from BikeShop group by SeasonSold

--3.
select AvgDaysInShop = avg(Datediff(day,datepurchased, datesold)), 
MinDaysInShop = min(Datediff(day,datepurchased, datesold)), 
MaxDaysInShop = max(Datediff(day,datepurchased, datesold)),
Profit = sum(soldprice) - sum(purchaseprice)
from BikeShop

--4.
select ProfitForEachSale = soldprice - purchaseprice, customername, bikecompany, purchaseprice, soldprice, new from BikeShop

--5.
select top 1 BikesPerCompany = count(*), BikeCompany from BikeShop group by BikeCompany order by BikesPerCompany desc