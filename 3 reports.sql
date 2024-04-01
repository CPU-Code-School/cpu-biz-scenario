
--I am going to need the following reports:
select * from Costume c

--1. I need to know which costume is the most popular.
select top(1) AmountSold = sum(c.AmountBought), c.Costume
from Costume c 
group by c.Costume
order by AmountSold desc
 
--2. I need to know which size is the most popular.
select top(1) AmountPerSize = sum(c.AmountBought), c.Size
from Costume c 
group by c.Size
order by AmountPerSize desc

 
--3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select concat(c.CustomerFirstName, ' ', c.CustomerLastName, ': ', c.AmountBought, ' - ', c.Costume, ' (', c.TotalPaid, ')')
from Costume c 
 
--4. I need to know the profit each sale.
select ProfitPerSale = (c.AmountBought*c.SoldPricePerCostume) - (c.AmountBought * c.BoughtPricePerCostume), *
from Costume c 