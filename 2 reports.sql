use PetGroomingDB

--1)We need a list of how many of each pet we currently have.
select PetCount = count(*), c.PetType
from client c 
group by PetType

--2)We need a list of those who have multiple pets, include how many pets they have.
select c.FirstName , c.LastName, PetCount = count(*)
from client c 
group by c.FirstName, c.LastName
having  count(*) > 1

--3)We need to know our top customer - the customer that is paying us the most.
select top 1 * 
from Client c 
where GroomingFrequency = 'Biweekly'
order by c.GroomingPrice desc

--4)We need to know the average amount we make per animal type 

select c.PetType, AvgTotalSales = avg(c.GroomingPrice)
from client c 
group by PetType