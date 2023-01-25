use CostumeStoreDB

--1. I need to know which costume is the most popular.
select top(1)c.Style
from Costume c
group by c.Style
order by sum(c.SoldQuantity) desc

--2. I need to know which size is the most polpular.
select top(1)c.Size
from Costume c
group by c.Size
order by sum(c.SoldQuantity) desc

--3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select concat(c.CustomerFirstName, ' ', c.CustomerLastName, ': ', c.SoldQuantity, ' - ', c.Style, ' (', c.CustomerTotalPrice, ')')
from Costume c

--4. I need to know the profit each sale.
select c.CostumeId, c.SoldQuantity, c.PurchasePrice, c.SoldPrice, c.CustomerTotalPrice, Profit = c.CustomerTotalPrice - PurchasePrice*SoldQuantity
from Costume c