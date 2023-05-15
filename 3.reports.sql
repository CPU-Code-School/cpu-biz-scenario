use CostumeDB
go

-- 1. I need to know which costume is the most popular.
select TotalCostumeSold = sum(s.Quantity), s.CostumesBought
from sales s
group by s.CostumesBought
order by TotalCostumeSold desc

-- 2. I need to know which size is the most polpular.
select TotalSizeSold= sum(s.Quantity), s.CostumeSize
from sales s
group by s.CostumeSize
order by TotalSizeSold desc

-- 3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select Customers = concat(s.CustomerName, ': ', s.Quantity, ' - ', s.CostumesBought,' (', s.PriceSoldPerCostume, ')')
from Sales s

-- 4. I need to know the profit each sale.
select *, Profit = (s.PriceSoldPerCostume - s.CostPricePerCostume)* s.Quantity
from Sales s

 