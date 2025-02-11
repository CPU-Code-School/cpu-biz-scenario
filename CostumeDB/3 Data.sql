use CostumeDB
go
delete Customer
go
insert Customer(FirstName, LastName, CostumeBought, CostumeSize, AmountBought, SoldPricePerCostume, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 20, 'Feb 14, 2020', 'Apr 2, 2020'
union select 'Aliza', 'Duetch', 'Fire Man', 'L', 1, 22, 'Mar 9, 2021', 'Jan 4, 2022'
union select 'Dovid', 'Rosen', 'Zebra', 'S', 1, 22, 'Aug 23, 2020', 'Aug 25, 2020' 
union select 'Shira', 'Pent', 'Colonial Boy', 'XS', 1, 20, 'Sep 17, 2021', 'Dec 4 2021'
union select 'Miriam', 'Gruen', 'Princess', 'M', 3, 25, 'Jul 6, 2022', 'Oct 19, 2022'  
union select 'Shoshana', 'Victor', 'Elephant', 'XL', 1, 30, 'Nov 28, 2020', 'Feb 2, 2021'
union select 'Mendy', 'First', 'Colonial Girl', 'XS', 1, 20, 'May 24, 2021', 'July 17, 2021'
union select 'Yisroel', 'Horowitz', 'Police Man', 'XL', 1, 30, 'Jan 16, 2022', 'Jan 19, 2022'
union select 'Aliza', 'Duetch', 'American Girl Doll', 'S', 2, 22, 'Mar 12, 2021', 'June 21, 2021'
union select 'Rochel', 'Rubin', 'Bumble Bee', 'S', 1, 22, 'Sep 11, 2020', 'Jan 2, 2021'
union select 'Bracha', 'Ganz', 'Princess', 'M', 4, 25, 'Nov 3, 2020', 'Dec 12, 2021'
union select 'Yaakov', 'Cohen', 'Princess', 'XS', 1, 20, 'Dec 4, 2021', 'July 25, 2022'
union select 'Rina', 'Rosen', 'Artist', 'M', 1, 25, 'Feb 18, 2022', 'May 28, 2022'
union select 'Rivkah', 'Goldberger', 'zebra', 'S', 1, 22, 'Sep 14, 2022', 'Dec 29, 2022' 


--select *
--from Customer