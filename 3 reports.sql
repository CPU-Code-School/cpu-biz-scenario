--1) I need to know if I have any repeat customers and what they rented.
select CustomerName = concat(m.CustomerFirstName, ' ', m.CustomerLastName)
 from MusicRental m
 group by concat(m.CustomerFirstName, ' ', m.CustomerLastName)
 having count(concat(m.CustomerFirstName, ' ', m.CustomerLastName)) > 1
 order by count(concat(m.CustomerFirstName, ' ', m.CustomerLastName))
--2) I need to know the most popular category of instrument that has ever been rented.
select top 1 m.Category
from MusicRental m
group by m.Category
order by COUNT(m.Category) desc
--3) I need to know which instrument (that is not being currently rented) made the most profit.
select top 1 *
from MusicRental m
where GETDATE() not between m.DateRented and m.DateReturned
order by m.TotalProfit desc
--4) I need to know which instruments were rented for only one month (so I could know if I should just sell them off).
select *
from MusicRental m
where DATEDIFF(month,m.DateRented,m.DateReturned) = 1