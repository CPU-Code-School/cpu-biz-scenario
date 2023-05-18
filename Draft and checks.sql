/* 
--NOTES:
 
starting January 1, 2020.
 Size:  Cost Price:  Price Sold:
 XS        $15           $20
 S         $17           $22
 M         $20           $25
 L         $22           $27
 XL        $25           $30

costumes:
 American Girl Doll
 Artist
 Bumble Bee
 Colonial Boy
 Colonial Girl
 Elephant
 Fire Man
 Police Man
 Princess
 Zebra

--DRAFT:

Costume
    CustomerName var not null not blank  
    CostumesBought var not null not blank within list
    CostumeSize  var not null not blank within list sizes
    Quantity int not null >1
    PriceSoldPerCostume int not null within list prices also cost prices, 15,17,20,22,25,27,30
    DateBought date not null 
    DateSold date not null after 1 jan 20, 
     Multi column Constraints
    DateSold after datebought
    make name and year bought unique
    pricesold can be same but not less than costprice

computedcolumns:
    CostPricePerCostume based on soldprice
    FullPricePaid y/n
    TotalPricePerCustomer times quantity

--CHECKS

insert Costume(CustomerName)
select 'Chana Goldberg'
union select ''

insert Costume(CustomerName, CostumesBought)
select 'Chana Goldberg', 'Artist'
union select 'Sam', 'Ladybird'
union select 'Sa', ''

insert Costume(CustomerName, CostumesBought, CostumeSize)
select 'Chana Goldberg', 'Artist', 'XS'
union select 'Sam', 'Fire Man', ''
union select 'Ann', 'Artist', 'X'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity)
select 'Chana Goldberg', 'Artist', 'XS', 1
union select 'Sam', 'Fire Man', 'L', -2

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15
union select 'Sam', 'Fire Man', 'L', 2, 16

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Feb 14 2020'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Feb 14 2024'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Feb 14 2020', 'Mar 6 2021'
union select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Feb 14 2020', 'Mar 6 2019'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Mar 6 2021', 'Feb 14 2020'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Mar 6 2021', 'Feb 14 2024' 

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Mar 6 2021', 'Feb 14 2022' 
union select 'Chana Goldberg', 'Artist', 'S', 1, 15, 'Mar 6 2021', 'Feb 14 2022'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Mar 6 2021', 'Feb 14 2022' 
union select 'Chana Goldberg', 'Artist', 'XS', 1, 15, 'Mar 6 2021', 'Feb 14 2022'

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'L', 1, 20, 'Mar 6 2021', 'Feb 14 2022' 

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 20, 'Mar 6 2021', 'Feb 14 2022'
union select 'Chan Goldberg', 'Artist', 'M', 1, 20, 'Mar 6 2021', 'Feb 14 2022'

select * from Costume

insert Costume(CustomerName, CostumesBought, CostumeSize, Quantity, PriceSoldPerCostume, DateBought, DateSold)
select 'Chana Goldberg', 'Artist', 'XS', 1, 20, 'Mar 6 2021', 'Feb 14 2022'
union select 'Chan Goldberg', 'Artist', 'M', 2, 20, 'Mar 6 2021', 'Feb 14 2022'

