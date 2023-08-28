Use PetDB
go

Reports:
--1)We need a list of how many of each pet we currently have.
SELECT p.PetType, Amount = count(*)
from Customer p 
Where p.active = 1
Group by p.PetType

--2)we need to see how many customers have multiple pets.
select p.OwnerName, NumOfCustomers = count(p.OwnerName)
from Customer p
group by p.OwnerName
Having count(p.OwnerName) > 1

--3)We need to know our top customer - the customer that is paying us the most.
SELECT top 1 TopPayingCustomer = p.OwnerName, TotalPays = SUM(case when p.Frequency = 'weekly' then p.Price *2 else p.Price end)
from Customer p 
group by p.OwnerName
ORDER by TotalPays desc

--4)We need to know the average amount we make per animal type 
select p.PetType, AverageIncome = avg(case when p.Frequency = 'weekly' then p.Price *2 else p.Price end)
from Customer p 
group by p.PetType
