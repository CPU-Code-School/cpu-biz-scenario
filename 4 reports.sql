select * from ShoeInventory

/*
1) Per season which shoes sold the least, most and average
    Seasons divided as follows: Mar - May = Spring, Jun - Aug = Summer, Sep - Nov = Fall, Dec - Feb = Winter
*/

select SeasonSold, LeastSold= min(Company), MostSold= max(Company)
from ShoeInventory
group by SeasonSold

/* 2) for marketing information, which age group (divided by tens 1-10, 11-20 etc.) brought in the most profit*/
select top 1
MaxProfit = sum(PriceSold-PriceBought),
        AgeGroup = case
            when Age between 20 and 30 then '20-30'
            when Age between 30 and 40 then '30-40'
            when Age between 40 and 50 then '40-50'
            when Age between 50 and 60 then '50-60'
            when Age between 60 and 70 then '60-70'
            end
from ShoeInventory
group by
    case
            when Age between 20 and 30 then '20-30'
            when Age between 30 and 40 then '30-40'
            when Age between 40 and 50 then '40-50'
            when Age between 50 and 60 then '50-60'
            when Age between 60 and 70 then '60-70'
            end
order by MaxProfit desc


/*3) To get the financial status, I will need a list of the annual total number of sales, and the total income*/
select TotalSales = count(*), TotalIncome = sum(PriceSold-PriceBought), SaleYear = year(DateSold)
from ShoeInventory
group by year(DateSold)
order by SaleYear

/*4) What is the average time we had the shoes in stock based on the company */
select AverageTimeInStock = avg(datediff(day, DateReceived,DateSold)), Company
from ShoeInventory
group by Company