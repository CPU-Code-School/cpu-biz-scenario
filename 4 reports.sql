use ShoeSalesDB  
go
/*1. Per season which shoes sold the least and which sold the least Seasons divided as follows: Mar - May = Spring, Jun - Aug = Summer, Sep - Nov = Fall, Dec - Feb = Winter*/
select
    Company,
    Season,
    MinSold = min(TotalSold),
    MaxSold = max(TotalSold)
from (
    select
        Company, Season =
        case 
            when month(DateSold) in (3,4,5) then 'Spring'
            when month(DateSold) in (6,7,8) then 'Summer'
            when month(DateSold) in (9,10,11) then 'Fall'
            else 'Winter'
        end,
        TotalSold = count(*)
    from sales
    group by Company, 
        case 
            when month(DateSold) in (3,4,5) then 'Spring'
            when month(DateSold) in (6,7,8) then 'Summer'
            when month(DateSold) in (9,10,11) then 'Fall'
            else 'Winter'
        end
) as SalesBySeasonCompany
group by Company, Season
/*2. for marketing information, which age group (divided by tens 1-10, 11-20 etc.) brought in the most profit*/
    
select top 1
    case 
        when Age between 1 and 10 then '1-10'
        when Age between 11 and 20 then '11-20'
        when Age between 21 and 30 then '21-30'
        when Age between 31 and 40 then '31-40'
        when Age between 41 and 50 then '41-50'
        when Age between 51 and 60 then '51-60'
        when Age between 61 and 70 then '61-70'
        when Age between 71 and 80 then '71-80'
        else '81+'
    end as AgeGroup,
    sum(PriceSold - PricePaid) as TotalProfit
from sales
group by 
    case 
        when Age between 1 and 10 then '1-10'
        when Age between 11 and 20 then '11-20'
        when Age between 21 and 30 then '21-30'
        when Age between 31 and 40 then '31-40'
        when Age between 41 and 50 then '41-50'
        when Age between 51 and 60 then '51-60'
        when Age between 61 and 70 then '61-70'
        when Age between 71 and 80 then '71-80'
        else '81+'
    end
order by TotalProfit desc

/*3) To get the financial status, I will need a list of the annual total number of sales, and the total income*/
    
select SaleYear = year(DateSold),TotalSales = count(*), TotalIncome = sum(PriceSold - PricePaid)
from sales
where OrderReturns = ''
group by year(DateSold)
order by SaleYear

/* 4) What is the average time we had the shoes in stock based on the company*/

select Company,AvgDaysInStock = avg(datediff(day, DateRecieved, DateSold))
from Sales
where DateRecieved is not null 
  and DateSold is not null
  and OrderReturns = ''
group by Company
order by AvgDaysInStock desc
