/*
I'll need these reports:
1) Sum of how many of each type of cake/cupcake/cookie is sold per branch.
   Include the type of product and base but not the frosting or topping , and the sum of amount sold altogether.
2) How many orders per season, event, and branch (Ex: Summer, Engagement, Lakewood, 6)
    Summer: July and August
    Holiday time: September and October
    Winter: November - April
    Spring: May and June
3) How much money came in each month per branch
4) How many orders came in each month per branch
*/
use ConfectionaryDB
go
--report#1
select c.item, c.TypeOfBase, c.branch, TotalAmountSold = sum(Amount)
from confectionary c
group by item, TypeOfBase, Branch

--report#2
select Season = 
case
    when month(DateOrdered) in (7, 8) then 'Summer'
    when month(DateOrdered) in (9, 10) then 'Holiday Time'
    when month(DateOrdered) in (11, 12, 1, 2, 3, 4) then 'Winter'
    when month(DateOrdered) in (5, 6) then 'Spring'
end, c.Occasion, c.Branch, 
Orders = count(*)
from confectionary c
group by case
    when month(DateOrdered) in (7, 8) then 'Summer'
    when month(DateOrdered) in (9, 10) then 'Holiday Time'
    when month(DateOrdered) in (11, 12, 1, 2, 3, 4) then 'Winter'
    when month(DateOrdered) in (5, 6) then 'Spring'
end, Occasion, Branch

--report#3
select c.Branch, Monthly = DATEPART(month, DateOrdered), Amount =sum(PriceOfOrder)
from confectionary c
group by DATEPART(month, DateOrdered), Branch
order by Monthly

--report#4
select Monthly = DATEPART(month, DateOrdered), c.branch, Orders = count(*)
from confectionary c
group by DATEPART(month, DateOrdered), Branch
order by Monthly