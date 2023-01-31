
--Test
--  CustomerName, CostumesBought, Size, AmountBought, SoldPricePerCostume, DateBought, DateSold
--	Chana Goldberg, Artist, XS, 2, 20, Feb 14, 2020, Apr 2, 2020

--Test CustomerFirstName constraints
/*
Insert Customer(CustomerFirstName)
select null
Insert Customer(CustomerFirstName)
select ''
*/

--TestCustomerLastName constraints
/*
Insert Customer(CustomerFirstName)
select 'Chana'
Insert Customer(CustomerFirstName, CustomerLastName)
select 'Chana', ''
*/

--Test CostumeBought constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName)
select 'Chana', 'Goldberg'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought)
select 'Chana', 'Goldberg', ''
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought)
select 'Chana', 'Goldberg', 'American Girl'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought)
select 'Chana', 'Goldberg', 'Clown'
*/

--Test CostumeSize constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought)
select 'Chana', 'Goldberg', 'Artist'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize)
select 'Chana', 'Goldberg', 'Artist', ''
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize)
select 'Chana', 'Goldberg', 'Artist', 'X'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize)
select 'Chana', 'Goldberg', 'Artist', '2'
*/

--Test AmountBought constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize)
select 'Chana', 'Goldberg', 'Artist', 'XS'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought)
select 'Chana', 'Goldberg', 'Artist', 'XS', 0
*/

--Test CostPricePerCostume constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 0 
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 21
*/

--Test SoldPricePerCostume constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15
*/

--Test FullPrice constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20
*/

--Test CustomerTotal constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1
*/

-- Test DateBought constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, CustomerTotal)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, 40
*/

--Test DateSold constraints 
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, CustomerTotal, DateBought)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, 40, '02/14/2020'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, CustomerTotal, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, 40, '02/14/2020', '12/29/2022'
*/

--Test Multi-Column Constraints
/*
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, '04/03/2020', '04/02/2020'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, '12/30/2019', '04/02/2020'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, '04/02/2020', '04/02/2020'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 31, 1, '02/14/2020', '04/02/2020'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 14, 1, '02/14/2020', '04/02/2020'
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 15, 1, '02/14/2020', '04/02/2020'
*/

--Test Correct Data
Insert Customer(CustomerFirstName, CustomerLastName, CostumeBought, CostumeSize, AmountBought, CostPricePerCostume, SoldPricePerCostume, FullPrice, DateBought, DateSold)
select 'Chana', 'Goldberg', 'Artist', 'XS', 2, 15, 20, 1, '02/14/2020', '04/02/2020'

select * from Customer c 
