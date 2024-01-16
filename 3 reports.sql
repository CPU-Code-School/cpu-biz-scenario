select * 
from Soldier 
order by IQ desc

select SoldierFirstName, SoldierLastName, DOB, EnlistmentDate, AgeAtEnlistment = (datediff(year,DOB,EnlistmentDate))
from Soldier
order by AgeAtEnlistment desc

select 'Year Range' = '2017-2019', SoldierData = concat(' ', SoldierFirstName, ' ', SoldierLastName, ' - ', SSN, ' (', EnlistmentDate, '), ', ServiceUnit, '.')
from Soldier
where year(EnlistmentDate) between 2017 and 2019
union select 'Year Range' = '2020-2022', SoldierData = concat(' ', SoldierFirstName, ' ', SoldierLastName, ' - ', SSN, ' (', EnlistmentDate, '), ', ServiceUnit, '.')
from Soldier
where year(EnlistmentDate) between 2020 and 2022

select ServiceUnit, AverageIQ = avg(IQ)
from Soldier
group by ServiceUnit
