--1. I need to know which costume is the most popular.
select top 1 costumebought, TotalAmountBought = sum(AmountBought)
from costume c
group by c.CostumeBought
order by sum(AmountBought) desc

 --2. I need to know which size is the most polpular.
select top 1 Size, TotalAmountBought = sum(AmountBought)
from costume c
group by Size
order by sum(AmountBought) desc

 --3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select CustomerInfo = concat(c.CustomerFirstName, ' ', c.CustomerLastName, ': ', c.AmountBought, ' - ', c.CostumeBought, ' (', c.TotalPriceCustomerPaid, ')') 
from Costume c 

 --4. I need to know the profit each sale.
select c.CustomerFirstName, c.CustomerLastName, c.CostumeBought, c.AmountBought, Profit = c.TotalPriceCustomerPaid - (c.AmountBought * c.CostPricePerCostume)
from Costume c 
