select * 
from Soldier s
order by s.IQ desc

select s.SoldierFirstName, s.SoldierLastName, s.DOB, s.EnlistmentDate, AgeAtEnlistment = (datediff(year,s.DOB,s.EnlistmentDate))
from Soldier s
order by AgeAtEnlistment desc

select 'Year Range' = '2017-2019', SoldierData = concat(' ', s.SoldierFirstName, ' ', s.SoldierLastName, ' - ', s.SSN, ' (', s.EnlistmentDate, '), ', s.ServiceUnit, '.')
from Soldier s
where year(s.EnlistmentDate) between 2017 and 2019
union select 'Year Range' = '2020-2022', SoldierData = concat(' ', s.SoldierFirstName, ' ', s.SoldierLastName, ' - ', s.SSN, ' (', s.EnlistmentDate, '), ', s.ServiceUnit, '.')
from Soldier s
where year(s.EnlistmentDate) between 2020 and 2022

select s.ServiceUnit, AverageIQ = avg(IQ)
from Soldier s
group by s.ServiceUnit
