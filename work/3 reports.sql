use CostumeDB
go
--I am going to need the following reports:
-- 1. I need to know which costume is the most popular.     `|
select top(1) c.CostumesDesc, totalamount = count(c.AmountBought)
from costumes c 
group by c.CostumesDesc
order by totalamount desc 

-- 2. I need to know which size is the most polpular.
select top(1) c.size, totalamount = count(c.AmountBought)
from costumes c 
group by c.size
order by totalamount desc 

-- 3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select CustomerDetails = concat(c.CustomerName, ': ', c.AmountBought, ' - ', c.CostumesDesc, '(', (c.SoldPricePerCostume * c.amountbought), ')')
from Costumes c

-- 4. I need to know the profit each sale.
 select *, profit = (c.AmountBought * c.SoldPricePerCostume) - (c.AmountBought * c.CostPricePerCostume ) 
 from Costumes c