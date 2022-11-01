/*
Reports:
1)Inorder to see which flavor is most popular, can you show me how long has each flavor been 
sitting on the shelf before it was sold (per chocolate flavor and chocolateType)? overall which flavor
was on the shelf the longest? which the shortest?
*/
select c.chocolateType, c.Flavor, AvgTimeonShelf = Avg(year(c.datesold) - c.YearPutonMarket),MaxTimeonShelf = Max(year(c.datesold) - c.YearPutonMarket), MinTimeonShelf = Min(year(c.datesold) - c.YearPutonMarket)
from Chocolate c
group by c.Flavor, c. ChocolateType
/*
2)Can you print out a list as of January first 1917 which chocolate were put on the shelf but not yet sold.They got sold within the next 17 years.
show the pieces in this order: Chocolate Name,yearPutOnShelf,DateSold,#Yearsold(the year it got sold after this point)
*/
select c.ChocolateName, c.YearPutonMarket, c.DateSold, NumYearSold = year(c.DateSold) - c.YearPutonMarket
from Chocolate c
where c.YearPutonMarket >= 1917
and year(c.DateSold) - c.YearPutonMarket <= 17
--!!??
/*
3) Mix together some flavors by subtracting 2 ingredients from 3-5 and adding 2 from 1 and 2 
what number flavor comes out? present the Recipe as the chocolate type description colon the chocolate flavor description colon the chocolate flavor numbernand then
which operation it will get iehther plus 2 or minus 2 based on its flavor number i.e Chocolate Candy Bar:milk creme & Dark Creme: 5-2
*/
--???????????????????????

