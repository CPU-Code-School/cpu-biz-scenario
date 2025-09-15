use CostumeDB
go


--I am going to need the following reports:

 --1. I need to know which costume is the most popular.
select top(1) Costume, MostPopular = sum(AmountSold)
from Costume
group by Costume
order by sum(AmountSold) desc

select * from Costume
order by CustomerSize

--2. I need to know which size is the most popular.
select top(1) count(CustomerSize), AmountSold
from Costume c
group by AmountSold, CustomerSize
order by CustomerSize desc


 
 --3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
 --4. I need to know the profit each sale.

select * from Costume c
order by CustomerSize