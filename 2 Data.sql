use CostumesDB 
go
delete CostumeStore
go 

insert CostumeStore(FirstName, LastName, Costume, Size, Amount, PricePaid, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 20, '2020-02-14', '2020-04-2'
union select 'Aliza', 'Duetch', 'Fire Man', 'L', 1, 22, '2021-03-09', '2022-01-04'
union select 'Dovid', 'Rosen', 'Zebra', 'S', 1, 22, '2020-08-23', '2020-08-25'
union select 'Shira', 'Pent', 'Colonial Boy', 'XS', 1, 20, '2021-09-17', '2021-12-04'
union select 'Miriam', 'Gruen', 'Princess', 'M', 3, 25, '2022-07-06', '2022-10-19' 
union select 'Shoshana', 'Victor', 'Elephant', 'XL', 1, 30, '2020-11-28', '2021-02-02'
union select 'Mendy', 'First', 'Colonial Girl', 'XS', 1, 20, '2021-05-24', '2021-07-17'
union select 'Yisroel', 'Horowitz', 'Police Man', 'XL', 1, 30, '2022-01-16', '2022-01-19'
union select 'Aliza', 'Duetch', 'American Girl Doll', 'S', 2, 22, '2021-03-12', '2021-06-21'
union select 'Rochel', 'Rubin', 'Bumble Bee', 'S', 1, 22, '2020-09-11', '2021-01-02'
union select 'Bracha', 'Ganz', 'Princess', 'M', 4, 25, '2020-11-03', '2021-12-12'
union select 'Yaakov', 'Cohen', 'Princess', 'XS', 1, 20, '2021-12-04', '2022-07-25'
union select 'Rina', 'Rosen', 'Artist', 'M', 1, 25, '2022-02-18', '2022-05-28'
union select 'Rivkah', 'Goldberger', 'Zebra', 'S', 1, 22, '2022-09-14', '2022-12-29'

select * from CostumeStore