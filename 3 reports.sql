use MusicNoteDB

--1) I need to know if I have any repeat customers and what they rented.
select RepeatedCustomer = count(*), m.CustomerLastName, m.CustomerFirstName, m.Instrument
from MusicRental m 
group by m.CustomerLastName, m.CustomerFirstName, m.Instrument
having count(*) >= 2
order by count(*) desc

--2) I need to know the most popular category of instrument that has ever been rented.
select top 1 CategoryTimesRented = count(*), m.Category 
from MusicRental m 
group by m.Category 
order by CategoryTimesRented desc

--3) I need to know which instrument (that is not being currently rented) made the most profit.
select top 1 m.TotalProfit, m.Instrument 
from MusicRental m 
where m.DateReturned is not null
order by m.TotalProfit desc

--4) I need to know which instruments were rented for only one month (so I could know if I should just sell them off).
select m.Instrument
from MusicRental m 
where DATEDIFF(month, DateRented, DateReturned) = 1