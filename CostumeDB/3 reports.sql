use CostumeDB
go

 
--I am going to need the following reports:

 --1. I need to know which costume is the most popular.
select top(1) Costume, MostPopular = sum(AmountSold)
from Costume
group by Costume
order by sum(AmountSold) desc

--2. I need to know which size is the most popular.
select top(1) CustomerSize, MostPopular = sum(AmountSold)
from Costume c
group by CustomerSize 
order by sum(AmountSold) desc

 --3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select CustomerInfo = concat(CustomerFirstName, ' ', CustomerLastName, ': ', AmountSold, ' - ', Costume, ' (', TotalPricePaid, ')')
from Costume c

 --4. I need to know the profit each sale.
select CostumeID, Profit = (PriceSold - CostPrice) * AmountSold
from Costume c
group by (PriceSold - CostPrice) * AmountSold, CostumeId
