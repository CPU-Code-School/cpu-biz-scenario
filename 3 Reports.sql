--1)

select o.Branch, o.ProductType, o.BaseType, TotalAmount = sum(o.amount)
from Orders o
group by o.Branch, o.ProductType, o.BaseType



--2)

select Season = 
    case  
        when month(o.OrderDate) in (07, 08) then 'Summer'
        when month(o.OrderDate) in (09, 10) then 'Holiday time'
        when month(o.OrderDate) between 11 and 04 then 'Winter'
        when month(o.OrderDate) in (05, 06) then 'Spring'
    end,
    o.Occasion,
    o.Branch,
    TotalOrders = count(*) 
from Orders o
group by case  
        when month(OrderDate) in (7, 8) then 'Summer'
        when month(OrderDate) in (9, 10) then 'Holiday time'
        when month(OrderDate) between 11 and 4 then 'Winter'
        when month(OrderDate) in (5, 6) then 'Spring'
    end, 
    Occasion, Branch


--3)

select o.Branch, Month = month(o.OrderDate), MonthlyIncome = sum(o.TotalCost)
from Orders o
group by o.Branch, month(o.OrderDate)


--4)

select o.Branch, Month = month(o.OrderDate), NumOfOrders = count(*)
from Orders o
group by o.Branch, month(o.OrderDate)  