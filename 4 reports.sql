--1) Show a list of all soldiers with all details sorted by IQ level from high to low.

select *
from Soldiers s
order by s.SoldierIQ desc

--2) I need a list of all soldiers sorted by age at enlistment from high to low. Do not include columns that are not relevant to this list.

select s.SoldierFirstName, s.SoldierLastName,s.SoldierAgeAtEnlistment
from Soldiers s
order by s.SoldierAgeAtEnlistment desc

/*3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022.
   The format should be as follows :Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
   (This should be done by using a union select and adding a literal column for year range.)
*/

select concat('2017-2019', ' ', s.SoldierFirstName, ' ', s.SoldierLastName, ' - ', s.SoldierSSN, ' (', s.SoldierDateOfEnlistment, ')', ', ', s.ServiceUnit)
from Soldiers s
where datepart(year, s.SoldierDateOfEnlistment) between 2017 and 2019
union select  concat('2020-2022', ' ', s.SoldierFirstName, ' ', s.SoldierLastName, ' - ', s.SoldierSSN, ' (', s.SoldierDateOfEnlistment, ')', ', ', s.ServiceUnit)
from Soldiers s
where datepart(year, s.SoldierDateOfEnlistment) between 2020 and 2022

-- 4) I need to know what the average IQ level is for soldiers per service unit.

select AvgSoldierIQ = avg(s.SoldierIQ), s.ServiceUnit
from soldiers s
group by s.ServiceUnit