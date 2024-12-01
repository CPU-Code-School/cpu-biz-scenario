use confectioneryDB
go
/*I'll need these reports:
1) Sum of how many of each type of cake/cupcake/cookie is sold per branch.
   Include the type of product and base but not the frosting or topping , and the sum of amount sold altogether.*/
select b.ItemType, AmountOfItmesSold = sum(amount), b.StoreBranch
from baking b
where b.ItemType in ('cake', 'cookie', 'cupcake')
group by b.StoreBranch, b.ItemType





/*2) How many orders per season, event, and branch (Ex: Summer, Engagement, Lakewood, 6)
    Summer: July and August
    Holiday time: September and October
    Winter: November - April
    Spring: May and June*/

select Season = case
                when datepart(month,b.OrderDate) in (7, 8) then 'Summer'
                when datepart(month,b.OrderDate) in (9, 10) then 'Holiday time'
                when datepart(month,b.OrderDate) in (11, 12, 1, 2, 3, 4) then 'Winter'
                when datepart(month,b.OrderDate) in (5, 6) then 'Spring'
                end,
b.StoreBranch, b.OrderOccasion , NumOfOrders = count(ItemType)
from baking b
group by case
                when datepart(month,b.OrderDate) in (7, 8) then 'Summer'
                when datepart(month,b.OrderDate) in (9, 10) then 'Holiday time'
                when datepart(month,b.OrderDate) in (11, 12, 1, 2, 3, 4) then 'Winter'
                when datepart(month,b.OrderDate) in (5, 6) then 'Spring'
                end, b.OrderOccasion, b.StoreBranch
order by Season, b.StoreBranch, b.OrderOccasion

--3) How much money came in each month per branch
select b.StoreBranch, MonthOfOrderDate = datename(month, b.OrderDate), Money = sum(b.OrderPrice)
from baking b
group by datename(month,b.OrderDate),b.StoreBranch
order by b.StoreBranch, Money


--4) How many orders came in each month per branch
select MonthOfOrderDate = datename(month, b.OrderDate), b.StoreBranch, AmountOfOrders = count(b.ItemType)
from baking b
group by datename(month,b.OrderDate),b.StoreBranch
order by  b.StoreBranch, MonthOfOrderDate