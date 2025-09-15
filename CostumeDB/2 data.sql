use CostumeDB
GO

insert Costume(CustomerFirstName, CustomerLastName, Costume, CustomerSize, PriceSold, AmountSold, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 20, 2, 'Feb 14, 2020', 'Apr 2, 2020' 
union select 'Aliza', 'Duetch', 'Fire Man', 'L', 27, 1, 'Mar 9, 2021', 'Jan 4, 2022'
union select 'Dovid', 'Rosen', 'Zebra', 'S', 22, 1, 'Aug 23, 2020', 'Aug 25, 2020' 
union select 'Shira', 'Pent', 'Colonial Boy', 'XS', 20, 1, 'Sep 17, 2021', 'Dec 4 2021'
union select 'Miriam', 'Gruen', 'Princess', 'M', 25, 3, 'Jul 6, 2022', 'Oct 19, 2022'  
union select 'Shoshana', 'Victor', 'Elephant', 'XL', 30, 1, 'Nov 28, 2020', 'Feb 2, 2021'
union select 'Mendy', 'First', 'Colonial Girl', 'XS', 20, 1, 'May 24, 2021', 'July 17, 2021'
union select 'Yisroel', 'Horowitz', 'Police Man', 'XL', 30, 1, 'Jan 16, 2022', 'Jan 19, 2022'
union select 'Aliza', 'Duetch', 'American Girl Doll', 'S', 22, 2, 'Mar 12, 2021', 'June 21, 2021'
union select 'Rochel', 'Rubin', 'Bumble Bee', 'S', 22, 1, 'Sep 11, 2020', 'Jan 2, 2021'
union select 'Bracha', 'Ganz', 'Princess', 'M', 25, 4, 'Nov 3, 2020', 'Dec 12, 2021'
union select 'Yaakov', 'Cohen', 'Princess', 'XS', 20, 1, 'Dec 4, 2021', 'July 25, 2022'
union select 'Rina', 'Rosen', 'Artist', 'M', 25, 1, 'Feb 18, 2022', 'May 28, 2022'
union select 'Rivkah', 'Goldberger', 'zebra', 'S', 22, 1, 'Sep 14, 2022', 'Dec 29, 2022'

--FirstName blank
--union select ''
--LastName null
--union select 'Nesanel', null
--Costume blank
--union select 'Nesanel', 'Beer', ''
--CustomerSize between xs and xl
--union select 'Nesanel', 'Beer', 'Artist', 'nj'
--PriceSold not 20,22,25,27,30
--union select 'Nesanel', 'Beer', 'Artist', 'xs', 31
--DateBought null
--union select 'Nesanel', 'Beer', 'Artist', 'xs', 30, 1, null
--DateSold before DateBought
--union select 'Nesanel', 'Beer', 'Artist', 'xs', 30, 1, 'February 5, 2023', 'February 4, 2023'
--DateBought before January 1, 2020
--union select 'Nesanel', 'Beer', 'Artist', 'xs', 30, 1, 'December 30, 2019', 'February 4, 2023'
--SoldPrice and DateSold some null and some value
--union select 'Nesanel', 'Beer', 'Artist', 'xs', null, 2, 'December 30, 2021', 'February 4, 2023'
select * from Costume 