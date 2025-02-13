use CostumeDB
go
delete Customer
go
insert Customer(FirstName, LastName, CostumeBought, CostumeSize, AmountBought, SoldPricePerCostume, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 20, '02-14-2020', '4-2-2020'
union select 'Aliza', 'Duetch', 'Fire Man', 'L', 1, 22, '3-9-2021', '1-4-2022'
union select 'Dovid', 'Rosen', 'Zebra', 'S', 1, 22, '8-23-2020', '8-25-2020' 
union select 'Shira', 'Pent', 'Colonial Boy', 'XS', 1, 20, '9-17-2021', '12-4-2021'
union select 'Miriam', 'Gruen', 'Princess', 'M', 3, 25, '7-6-2022', '10-19-2022'  
union select 'Shoshana', 'Victor', 'Elephant', 'XL', 1, 30, '11-28-2020', '2-2-2021'
union select 'Mendy', 'First', 'Colonial Girl', 'XS', 1, 20, '5-24-2021', '7-17-2021'
union select 'Yisroel', 'Horowitz', 'Police Man', 'XL', 1, 30, '1-16-2022', '1-19-2022'
union select 'Aliza', 'Duetch', 'American Girl Doll', 'S', 2, 22, '3-12-2021', '6-21-2021'
union select 'Rochel', 'Rubin', 'Bumble Bee', 'S', 1, 22, '9-11-2020', '1-2-2021'
union select 'Bracha', 'Ganz', 'Princess', 'M', 4, 25, '11-3-2020', '12-12-2021'
union select 'Yaakov', 'Cohen', 'Princess', 'XS', 1, 20, '12-4-2021', '7-25-2022'
union select 'Rina', 'Rosen', 'Artist', 'M', 1, 25, '2-18-2022', '5-28-2022'
union select 'Rivkah', 'Goldberger', 'zebra', 'S', 1, 22, '9-14-2022', '12-29-2022' 


--select *
--from Customer