--I am going to need the following reports:
 --1. I need to know which costume is the most popular.
 select top 1 CostumesBought, max(AmountBought) 
 from CostumeSales
group by AmountBought,CostumesBought
 order by max(AmountBought) DESC
 /*2. I need to know which size is the most polpular.
*/SELECT TOP 2 SIZE,MostPopular=COUNT(SIZE) 
FROM COSTUMESALES
GROUP BY SIZE
ORDER BY COUNT(SIZE) DESC
 --3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
 select concat(CustomerFirstName,' ',CustomerLastname, ' :',AmountBought, ' - ',CostumesBought,' ','(',SoldPricePerCostume,')') 
 from COSTUMESALES
 --4. I need to know the profit each sale.
 select Costumesbought,Profit=SoldPricePerCostume-PriceBoughtCostume 
 from COSTUMESALES