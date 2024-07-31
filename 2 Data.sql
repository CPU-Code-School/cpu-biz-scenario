delete confectionery
go 

insert Confectionery (CustomerFirstName, CustomerLastName, Branch, OrderDate, BaseType, ProductType, Topping, Photo, CustomSpecification, Occasion, Amount, CostPerItem, TotalCost)
select 'Chaim', 'Green', 'Lakewood', 2022-04-01, 'Strawberry shortcake', 'Cake', 'no topping', 'no',  'Please make sure they both look the same', 'Baby', 2, 55.00, 110.00
union select 'Rivky', 'Shapiro', 'Lakewood', 2021-07-22, 'Chocolate', 'Cake', 'Caramel', 'no', 'Write Happy birthday on cake', 'Birthday', 1, 50.00, 50.00
union select 'Leah', 'Gross', 'Brooklyn', 2021-06-11, 'Sugar', 'Cookie', 'Royal icing', 'yes',  'Graduation cap shape of picture I emailed', 'Graduation', 70, 5.00, 350.00
union select 'Baruch', 'Goldberg', 'Brooklyn', 2021-09-12, 'Sugar', 'Cookie', 'Royal icing', 'no', 'Shape of a mask and write thank you for keeping everyone safe and company logo', 'Company logo', 500, 3.50, 1750.00

