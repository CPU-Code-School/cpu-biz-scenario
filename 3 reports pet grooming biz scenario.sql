--Reports:

--1)We need a list of how many of each pet we currently have.
SELECT Amountofpettype = Count(p.PetType), p.PetType
from Petgroom p
group by p.PetType

--2)We need a list of those who have multiple pets, include how many pets they have.
SELECT Petcount = COUNT(p.PetType), p.PetOwnerFirstName, p.PetOwnerLastName
from Petgroom p
group by p.PetOwnerFirstName, p.PetOwnerLastName
HAVING COUNT(p.PetType) > 1

--3)We need to know our top customer - the customer that is paying us the most.
SELECT top 1 
Customerpayment = Sum(case
when p.GroomingFrequency = 'weekly' then p.PricePerGrooming * 2
else p.PricePerGrooming
END), p.PetOwnerLastName
from petgroom p
group by p.PetOwnerLastName
order by Customerpayment DESC
--**RF i did the case statment so that the biweekly are weekly payments are compatible- payment per the same amount of time...
--4)We need to know the average amount we make per animal type 
SELECT AvgProfit = Avg(p.PricePerGrooming), p.PetType
from Petgroom p
group by p.PetType
