--1) I would like a list of all active members with their membership details. I would like each member to be listed as last name, first initial.
SELECT  Member = CONCAT(f.lastName, ' ', SUBSTRING(f.FirstName, 1, 1)  ), *
from FitPlex F
--2) I want a list of all active members whose memberships are due to expire within the next month so that I can text them a reminder to renew their subscription.
SELECT *
FROM FitPlex f 
WHERE DATEPART(month, EndDate) = DATEPART(month, getdate())
--3) I want to collect payments that are past due, but would first like to see how much I am owed. Please provide a count of all members per membership type and show how many paid and how many did not. 
    SELECT PaidStatus = COUNT(*), f.paymentstatus, f.MembershipType 
    from FitPlex f 
    GROUP BY PaymentStatus, MembershipType
--4) I would like to check in on the overall effectiveness of our gym's weight loss program. Please provide a list of all members and their progress, sorted by the amount of weight loss in desc order.    
SELECT f.WeightLoss
from Fitplex f 
--5) I would like to see the difference in progress made by members in different membership categories. Please show me the average weight loss per membership type.
SELECT AverageWeightLoss = avg(f.WeightLoss), f.MembershipType
from FitPlex f
GROUP by f.MembershipType