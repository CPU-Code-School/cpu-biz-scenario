Use CostumeBusinessDB
go
/*
I am going to need the following reports:
	1. I need to know which costume is the most popular.
	2. I need to know which size is the most polpular.
	3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
	4. I need to know the profit each sale.
*/

--1)
select top(1) c.CostumeBought, NumOfCostumesBought = sum(c.AmountBought)
from customer c 
group by c.CostumeBought
order by NumOfCostumesBought desc 

--2)
select top(1) c.CostumeSize, NumOfSizesBought = sum(c.AmountBought)
from customer c 
group by c.CostumeSize
order by NumOfSizesBought desc

--3)
select CustomerSummary = concat(c.CustomerFirstName, ' ', c.CustomerLastName, ': ', c.AmountBought, ' - ', c.CostumeBought, ' (', c.CustomerTotal, ')')
from Customer c
order by c.CustomerFirstName

--4)
select c.CustomerFirstName, c.CustomerLastName, c.TotalProfit
from Customer c 
order by c.TotalProfit desc 