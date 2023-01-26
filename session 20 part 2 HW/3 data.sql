use CostumeDB
go
delete Costume

insert costume(CustomerFirstName, CustomerLastName, CostumeBought, Size, AmountBought, CostPricePerCostume, SoldPricePerCostume, PaidFullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, '2020/2/14', '2020/4/2'
union select 'Aliza', 'Duetch', 'Fire Man', 'L', 1, 22, 22, 0, '2021/3/9', '2022/1/4'
union select 'Dovid', 'Rosen', 'Zebra', 'S', 1, 17, 22, 1, '2020/8/23', '2020/8/25' 
union select 'Shira', 'Pent', 'Colonial Boy', 'XS', 1, 15, 20, 1, '2021/9/17', '2021/12/4'
union select 'Miriam', 'Gruen', 'Princess', 'M', 3, 20, 25, 1, '2022/7/6', '2022/10/19'  
union select 'Shoshana', 'Victor', 'Elephant', 'XL', 1, 25, 30, 1, '2020/11/28', '2021/2/2'
union select 'Mendy', 'First', 'Colonial Girl', 'XS', 1, 15, 20, 1, '2021/5/24', '2021/7/17'
union select 'Yisroel', 'Horowitz', 'Police Man', 'XL', 1, 25, 30, 1, '2022/1/16', '2022/1/19'
union select 'Aliza', 'Duetch', 'American Girl Doll', 'S', 2, 17, 22, 1, '2021/3/12', '2021/6/21'
union select 'Rochel', 'Rubin', 'Bumble Bee', 'S', 1, 17, 22, 1, '2020/9/11', '2021/1/2'
union select 'Bracha', 'Ganz', 'Princess', 'M', 4, 20, 25, 1, '2020/11/3', '2021/12/12'
union select 'Yaakov', 'Cohen', 'Princess', 'XS', 1, 15, 20, 1, '2021/12/4', '2022/7/25'
union select 'Rina', 'Rosen', 'Artist', 'M', 1, 20, 25, 1, '2022/2/18', '2022/5/28'
union select 'Rivkah', 'Goldberger', 'zebra', 'S', 1, 17, 22, 1, '2022/7/14', '2022/12/29' 

select * from Costume