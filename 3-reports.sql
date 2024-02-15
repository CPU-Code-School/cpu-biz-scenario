--1) Show a list of all soldiers with all details sorted by IQ level from high to low.
select * 
from Soldier s
order by s.IQ desc

--2) I need a list of all soldiers sorted by age at enlistment from high to low. Do not include columns that are not relevant to this list.
select s.SoldierID, s.FirstName, s.LastName, s.DateOfBirth, s.DateEnlisted, AgeEnlisted = datediff(year, s.DateOfBirth, s.DateEnlisted)
from Soldier s
order by AgeEnlisted desc

--3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022.
   --The format should be as follows :Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
   --(This should be done by using a union select and adding a literal column for year range.)
select  RecruitmentData = concat('Year Range (2017-2019), ', s.FirstName, ' ', s.LastName, ' - ', s.SSN, 
				' (', s.DateEnlisted, '), ', s.ServiceUnit, '.')
from Soldier s
where year(s.DateEnlisted) between 2017 and 2019
union select concat('Year Range (2020-2022), ', s.FirstName, ' ', s.LastName, ' - ', s.SSN, 
				' (', s.DateEnlisted, '), ', s.ServiceUnit, '.')
from Soldier s
where year(s.DateEnlisted) between 2020 and 2022

--4) I need to know what the average IQ level is for soldiers per service unit.
select s.ServiceUnit, AvgIQ = avg(s.IQ)
from Soldier s
group by s.ServiceUnit
