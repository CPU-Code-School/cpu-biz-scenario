--1)

select Branch, ProductType, BaseType, TotalAmount = sum(amount)
from Confectionery
group by Branch, ProductType, BaseType



--2)

select Season = 
    case  
        when month(OrderDate) in (07, 08) then 'Summer'
        when month(OrderDate) in (09, 10) then 'Holiday time'
        when month(OrderDate) between 11 and 04 then 'Winter'
        when month(OrderDate) in (05, 06) then 'Spring'
    end,
    occasion,
    branch,
    TotalOrders = count(*) 
from Confectionery
group by case  
        when month(OrderDate) in (7, 8) then 'Summer'
        when month(OrderDate) in (9, 10) then 'Holiday time'
        when month(OrderDate) between 11 and 4 then 'Winter'
        when month(OrderDate) in (5, 6) then 'Spring'
    end, 
    Occasion, Branch


--3)

select Branch, Month = month(OrderDate), MonthlyIncome = sum(TotalCost)
from Confectionery
group by Branch, month(OrderDate)


--4)

select Branch, Month = month(OrderDate), NumOfOrders = count(*)
from Confectionery
group by Branch, month(OrderDate)  