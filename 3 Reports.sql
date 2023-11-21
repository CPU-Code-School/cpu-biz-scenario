 use CostumesDB 
 go

 -- 1. I need to know which costume is the most popular.
 select AmountSold = sum(c.Amount), c.Costume
 from CostumeStore c 
 group by c.Costume
 order by AmountSold desc

 --2. I need to know which size is the most polpular.
 select AmountSold = sum(c.Amount), c.Size
 from CostumeStore c 
 group by c.Size
 order by AmountSold desc

 --3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
 select Customer = concat(c.CustomerName, ': ', c.Amount, ' - ', c.Costume, ' (', c.Total, ')')
 from CostumeStore c 

 --4. I need to know the profit each sale.
 select Profit = c.Total - (c.CostPrice * c.Amount), TotalCostPrice = c.CostPrice * c.Amount, c.Total
 from CostumeStore c