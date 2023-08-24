Use PetDB
go

Reports:
--1)We need a list of how many of each pet we currently have.
SELECT p.PetType, Amount = count(*)
from Pet p 
Where p.active = 1
Group by p.PetType

--2)we need to see how many customers have multiple pets.
SELECT NumOfCustomers = Count(*) from (
    select p.OwnerName, AmountOfPets = count(p.OwnerName)
    from Pet p 
    group by p.OwnerName
    HAVING count(p.PetName) > 1
) x
--3)We need to know our top customer - the customer that is paying us the most.
SELECT top 1 TopPayingCustomer = p.OwnerName, TotalPays = SUM(case when p.Frequency = 'weekly' then p.Price *2 else p.Price end)
from Pet p 
group by p.OwnerName
ORDER by TotalPays desc

--4)We need to know the average amount we make per animal type 
select p.PetType, AverageIncome = avg(case when p.Frequency = 'weekly' then p.Price *2 else p.Price end)
from Pet p 
group by p.PetType