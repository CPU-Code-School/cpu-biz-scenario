
-- 1)We need a list of how many of each pet we currently have.

select HowManyPetsPerType = count(*), p.petType
from petGroomerData p
group by petType

-- 2)We need a list of those who have multiple pets, include how many pets they have.

select p.firstName, p.lastName, count(*) as PetsOwned
from petGroomerData p 
group by p.firstName, p.lastName
having count(*) > 1

-- 3)We need to know our top customer - the customer that is paying us the most.

select top(1) p.firstName, sum(p.pricePerGrooming) as TopCustomer
from petGroomerData p
group by p.firstName
order by TopCustomer desc

-- 4)We need to know the average amount we make per animal type 

select p.petType, avg(p.pricePerGrooming) as AveragePerAnimalType
from petGroomerData p
group by p.petType