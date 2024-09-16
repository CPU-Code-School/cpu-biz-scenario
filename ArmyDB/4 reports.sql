--1) Show list of all soldiers with all details sorted by IQ level from high to low.

select * 
from soldier s 
order by s.IQLevel desc

--2) I need a list of all soldiers sorted by age at enlistment from high to low, Do not include columns that are not relevant to this list.

select s.FirstName, s.LastName, AgeAtEnlistment = datediff(year,s.DateOfBirth, s.DateOfEnlistment)
from soldier s 
order by AgeAtEnlistment desc

--3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022
   -- in the following format:Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
   -- (This should be done by using a union select and adding a literal column for year range.)
select RecruitmentComparison = concat('2017-2019', ', ', s.FirstName, ' ', s.LastName, ' - ', s.SSN, ' (', s.DateOfEnlistment, '), ', s.ServiceUnit ) 
from soldier s 
where year(s.DateOfEnlistment) between 2017 and 2019 
union select concat('2020-2022', ', ', s.FirstName, ' ', s.LastName, ' - ', s.SSN, ' (', s.DateOfEnlistment, '), ', s.ServiceUnit ) 
from soldier s 
where year(s.DateOfEnlistment) between 2020 and 2022 



--4) I need to know what the average IQ level is for soldiers per service unit.
select AvgIQLevel = avg(s.IQLevel), s.ServiceUnit
from soldier s 
group by s.ServiceUnit



