use CostumeDB 
go 

--1. I need to know which costume is the most popular.
select top 1 AmountPerCostume = count (*), c.CostumesBought
from Costume c 
group by c.CostumesBought
order by AmountPerCostume desc

--2. I need to know which size is the most polpular.
select top 1 AmountPerSize = count (*), c.CostumeSize
from Costume c 
group by c.CostumeSize
order by AmountPerSize desc

--3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
select NewFormat = concat(c.CustomerFirstName, ' ', c.CustomerLastName, ': ', c.CostumeAmount, ' - ', c.CostumesBought, ' (', c.TotalPrice, ')') 
from Costume c 

--4. I need to know the profit each sale.
select Profit = c.TotalPrice - (c.CostumeCostPrice * c.CostumeAmount) ,*
from Costume c 
--added to table

select * from Costume c