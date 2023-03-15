

--1) Show a list of all soldiers with all details sorted by IQ level from high to low.
select * 
from soldiers s 
order by IQLevel desc 

--2) I need a list of all soldiers sorted by age at enlistment from high to low. Do not include columns that are not relevant to this list.
select LastName, FirstName, Age= year(DateOfEnlistment)-year(DOB)
from soldiers s 
order by Age desc 

--3) Following an upward trend in recruitment since the outbreak of Covid, 
--I need data on recruitment between the years 2017-2019 compared to the years 2020-2022.
--The format should be as follows :Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
select Recruitment =concat(YearRange, ', ', FirstName, ' ', LastName, ' - ', SSN, ' ', '(',  DateOfEnlistment, ')', ', ',  ServiceUnit) 
from Soldiers s 
where YearRange = '2017-2019'
union select Recruitment =concat(YearRange, ', ', FirstName, ' ', LastName, ' - ', SSN, ' ', '(',  DateOfEnlistment, ')', ', ',  ServiceUnit)
from soldiers s 
where YearRange = '2020-2022'


--4) I need to know what the average IQ level is for soldiers per service unit.
select AverageIQ=avg(IQLevel), serviceunit 
from soldiers s 
group by serviceunit 



