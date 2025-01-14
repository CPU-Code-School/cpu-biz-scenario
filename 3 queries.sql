-- 1. I need to know which costume is the most popular.
select top 1 CostumeBought, TotalAmountPurchased = count(CostumeBought)
from Costume c
group by CostumeBought
order by TotalAmountPurchased desc 

 --2. I need to know which size is the most popular.
select top 1 CostumeSize, TotalAmountPurchasedInSize = count (CostumeSize)
from Costume c
group by CostumeSize
order by TotalAmountPurchasedInSize desc 



-- 3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select InfoPerPurchase = concat(c.CustomerFirstName, ' ', c.CustomerLastName, ': ', c.AmountBought, ' - ', c.CostumeBought, ' (', c.TotalPaidByCustomer, ')') 
from costume c



 --4. I need to know the profit each sale.
select c.CustomerLastName, c.CustomerFirstName, c.CostumeBought, ProfitOfSale = c.TotalPaidByCustomer - c.CostPricePerCostume * c.AmountBought
from Costume c 



