use InstrumentDB 
go

/*
1) I need to know if I have any repeat customers and what they rented
2)I need to know the most popular category of instrument that has ever been rented
3) I need to know which instrument (that is not being currently rented) made the most profit
4) I need to know which instruments were rented for only one month (so I could know if I should just sell
them off)
*/

--1
select i.CustomerName, i.InstrumentName
from Instrument I
group by i.CustomerName, i.InstrumentName
having COUNT(i.CustomerName)>2

--2
select top 1 NumOfRentals =count(i.InstrumentName), i.InstrumentName
from Instrument i
group by i.InstrumentName
order by NumOfRentals

--3
select top 1 SumOfProfit=sum(i.TotalProfit), i.InstrumentName
from Instrument i
where i.TotalProfit is not null
group by i.InstrumentName
order by SumOfProfit desc

--4
select i.InstrumentName, RentalMonths =avg(datediff(month, DateRented ,DateReturned))
from Instrument i
group by i.InstrumentName
having avg(datediff(month, DateRented ,DateReturned)) =1