/*
1) Show list of all soldiers with al details sorted by IQ level from high to low.
2) I need a list of all soldiers sorted by age at enlistment from high to low, Do not include columns that are not relevant to this list.
3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022
    in the following format:Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
    (This shuold be done by using a union select and adding a literal column for year range.)
4) I need to know what the average IQ level is for soldiers per service unit.
*/

select * 
from Army a
order by a.iq DESC

select a.FirstName,a.LastName,a.dateofbirth,a.DateOfEnlistment, AgeAtenlistment = DATEDIFF(year,a.dateofbirth,a.DateOfEnlistment )
from Army a
order by AgeAtenlistment desc

--3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022
  --  in the following format:Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
   -- (This shuold be done by using a union select and adding a literal column for year range.)

select YearRange ='2017-2019',a.FirstName, a.LastName, a.SSN, a.DateofEnlistment, a.ServiceUnit
from army a
where YEAR (a.DateOfEnlistment) between 2017 and 2019 
union select YearRange ='2020-2022',a.Firstname, a.lastname, a.ssn, a.dateofenlistment, a.ServiceUnit
from army a
where YEAR (a.DateOfEnlistment) between 2020 and 2022

select AverageIQ= avg(a.iq), a.ServiceUnit
from army a 
GROUP by a.ServiceUnit