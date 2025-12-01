USE CostumeStoreDB
GO
--I am going to need the following reports:
--1. I need to know which costume is the most popular.
SELECT top(1) amount_sold=COUNT(*),C.costume
from Costume C
GROUP BY C.costume
order BY amount_sold DESC
--2. I need to know which size is the most polpular.
SELECT top(2) amount_sold=COUNT(*),C.size
from Costume C
GROUP BY C.size
ORDER BY amount_sold DESC
--3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
    --(YB I am supposing that "(how much they paid)" means -for each costume, (and not the total amount) since the "Amount Bought" is included in the report.)
SELECT [format]=CONCAT(c.CustomerFirstName,' ',c.CustomerLastName,': ',c.amountbought,' - ',c.costume,' (',C.TotalPricePaid,')')
from Costume C
--4. I need to know the profit each sale.
SELECT c.profit,C.CustomerFirstName,c.customerlastname,c.costume,c.Size,c.amountbought,c.SalesPricePerCostume,c.Discount,c.DateSold,c.PurchasePricePerCostume,c.PaidFullPrice,c.TotalPricePaid
FROM Costume C
