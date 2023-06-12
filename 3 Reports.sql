
--1)We need a list of how many of each pet we currently have.
select g.pettype, PetCount = count(*)
from grooming g
group by g.pettype

--2)we need to see how many customers have multiple pets.
select g.OwnersName ,PetCount = count(*)
from grooming g
group by g.OwnersName
having count(*) > 1

--3)We need a list of the number of each kind of animal we have, for advertising and hiring purposes
--How is this question different than question #1?
select g.pettype, PetCount = count(*)
from grooming g
group by g.pettype

--4)We need to know the average amount we make per animal type 
select AvgAmountOfMoney = avg(g.groomprice), g.pettype
from grooming g
group by g.pettype
