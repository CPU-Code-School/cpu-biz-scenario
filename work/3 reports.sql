

--I am going to need the following reports:
-- 1. I need to know which costume is the most popular.     `|
select CostumesBought, totalamount = count(AmountBought)
from costumes c 
group by CostumesBought
order by totalamount desc 

-- 2. I need to know which size is the most polpular.
select size, totalamount = count(AmountBought)
from costumes c 
group by size
order by totalamount desc 

-- 3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select concat(c.CustomerName, ': ', c.AmountBought, ' - ', c.CostumesBought, '(', (c.SoldPricePerCostume * c.amountbought), ')')
from Costumes c

-- 4. I need to know the profit each sale.
 select *, profit = (c.AmountBought * c.SoldPricePerCostume) - (c.AmountBought * c.CostPricePerCostume ) 
 from Costumes c