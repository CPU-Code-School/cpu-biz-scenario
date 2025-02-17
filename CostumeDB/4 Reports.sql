/*
I am going to need the following reports:
1. I need to know which costume is the most popular.
*/

select  top 1 c.CostumeBought, count(*) as NumberBought
from Customer c
group by c.CostumeBought
order by NumberBought desc

/*
2. I need to know which size is the most polpular.
*/

--RM: There are 2 sizes tied for most popular so I am showing all with the most popular at the top.
select c.CostumeSize, count(*) as NumberBought
from Customer c
group by c.CostumeSize
order by NumberBought desc

/*
3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
*/

select
concat(c.FirstName, ' ', c.LastName, ': ', c.AmountBought, ' - ', c.CostumeBought, ' ($', c.TotalPrice, ')') as CustomerList
from Customer c

/*
4. I need to know the profit each sale.
*/

select c.CostumeBought, c.AmountBought, c.CostPrice, c.SoldPricePerCostume,
c.TotalPrice - (c.CostPrice * c.AmountBought) as Profit
from Customer c
order by Profit desc
