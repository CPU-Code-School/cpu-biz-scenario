use CleaningDB 
go

select DeepCleans = 
    concat(c.LastName, ', ', c.FirstName, ' (', c.PhoneNum, ') - ', ((c.RatePerHour * 1.5) * (c.AvgTime * 2))) 
from Customer c

select CustomerInfo = concat(c.LastName, ' - ', c.Frequency), NumOfMonths = datediff(month, c.StartDate, getdate())
from Customer c 
where c.EndDate is null
order by NumOfMonths desc

select AvgRatePerHourRegClean = avg(c.RatePerHour), AvgRatePerHourDeepClean = avg(c.RatePerHour * 1.5)
from Customer c

select PricePerYear =(c.RatePerHour * 52), * 
from Customer c 
where (c.RatePerHour = 35) and (c.AvgTime = 7) and (c.Frequency = 'weekly')
order by PricePerYear desc


select sum(case when c.StartDate like '2020%' then 1 else 0 end) as NewCustomers, 
       sum(case when c.Enddate like '2020%' then 1 else 0 end) as DroppedCustomers
from Customer c 
