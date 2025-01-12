-- 1. I need to know which costume is the most popular.
select CostumeBought, TotalAmountPurchased = count(CostumeBought)
from Costume c
group by CostumeBought
order by count(*) desc 

 --2. I need to know which size is the most popular.
select CostumeSize, TotalAmountPurchasedInSize = count (CostumeSize)
from Costume c
group by CostumeSize
order by count(*) desc 



-- 3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select InfoPerPurchase = concat(CustomerFirstName, ' ', CustomerLastName, ': ', AmountBought, ' - ', CostumeBought, ' (', PricePaidByCustomer, ')') 
from costume c



 --4. I need to know the profit each sale.
select c.CustomerLastName, c.CustomerFirstName, c.CostumeBought, ProfitOfSale = TotalPaidByCustomer - CostPricePerCostume
from Costume c 




