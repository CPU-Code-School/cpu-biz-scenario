/*1) I offer deep cleans for each customer on request. Deep cleans take twice as long as normal cleans.
   I charge 50% more than a regular clean in that house. 
   For this I need to see the customers phone number, last name and the amount of money they will have to pay.
   Please do it in this format:  last name, first name (phone number) - price of service.
*/
SELECT DeepCleanCustomers= CONCAT(c.LastName, ' ', c.FirstName, ' (',c.PhoneNumber, ') - ', (c.PricePerHour*c.TimeinHours)  )
FROM Customer C
where c.PricePerHour >=35 


/*
2) I would like to know how many months I have been working for each current customer. 
   If you could show the customers I have worked for for the longest time at the top, I would appreciate that.
   Please include a column formatted like this: last name - weekly/bi weekly and a column for number of months
*/
SELECT Customer= concat(c.LastName, ' - ', c.Frequency), NumberOfMonths= DATEDIFF(month, c.StartDate, isnull(c.EndDate, CURRENT_TIMESTAMP))
FROM Customer c
ORDER BY NumberOfMonths desc

--3) What is the average price I ask per hour for regular cleans and what is the average price per hour for deep cleans?
SELECT AvergaePricePerHourRegularClean = avg(c.PricePerHour)
FROM Customer c
where c.PricePerHour between 0 and 35

SELECT AvergaePricePerHourDeepClean = avg(c.PricePerHour)
FROM Customer c
where c.PricePerHour >=35 


--4) Which customer do I earn the most money from in a year? (not counting deep cleans) 
--And how much do I get from them?
SELECT top(1) AmountPerYear= 
    case
        when c.frequency = 'biweekly' then PricePerHour * TimeinHours*26
        when c.frequency = 'weekly' then PricePerHour * TimeinHours*52
    end,* 
FROM Customer c 
WHERE c.PricePerHour < 35
ORDER by AmountPerYear desc


--5) How many customers did I gain in the year 2020 and how many did I lose?
SELECT CustomersGained2020= count(*) 
FROM Customer c 
WHERE DATEPART(year, c.StartDate) = 2020

SELECT CustomersLosr2020= count(*) 
FROM Customer c 
WHERE DATEPART(year, c.EndDate) = 2020