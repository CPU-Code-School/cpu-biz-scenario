use ConfectioneryDB
go
delete baking
go
insert into baking(CustomerName, StoreBranch, OrderDate, BaseType, ItemType, Topping, Picture, OrderSpecifics, OrderOccasion, Amount)
select 'Chaim Green', 'Lakewood', '01/04/2022', 'Strawberry shortcake', 'Cake', 'no topping', 0,  'Please make sure they both look the same', 'Baby', 2
union select 'Rivky Shapiro', 'Lakewood', '07/22/2021', 'Chocolate', 'Cake', 'Caramel', 0, 'Write Happy birthday on cake', 'Birthday', 1
union select 'Leah Gross', 'Brooklyn', '06/11/2021', 'Sugar', 'Cookie', 'Royal icing', 1,  'Graduation cap shape of picture I emailed', 'Graduation', 70
union select 'Baruch Goldberg', 'Brooklyn', '09/12/2021', 'Sugar', 'Cookie', 'Royal icing', 0, 'Shape of a mask and write thank you for keeping everyone safe and company logo', 'Company logo', 500
union select 'Binyamin Stein', 'Lakewood', '02/15/2021', 'Vanilla', 'Cake', 'Chocolate', 1,  'Write Happy 85th birthday on bottom of the attached photo', 'Birthday', 3
union select 'Batsheva Golden', 'Lakewood', '08/14/2021', 'Chocolate peanut butter', 'Cake', 'Peanut butter', 1,  'Write Shloimy and the number 3 on pic', 'Birthday', 1
union select 'Rena Stern', 'Brooklyn', '10/11/2021', 'Sugar', 'Cookie', 'Fondant', 0, 'Pink background with glitter and shape of balloon with word Sori', 'Bas mitzvah', 75
union select 'Layala Katz', 'Lakewood', '09/05/2021', 'Vanilla', 'Cupcake', 'Strawberry', 0, 'Make it look nice!', 'Birthday', 28
union select 'Sara Leah Levy', 'Brooklyn', '05/18/2021', 'Vanilla', 'Cupcake', 'Coconut', 0, 'none', 'Engagement', 100
union select 'Devorah Friedman', 'Brooklyn', '07/04/2021', 'Strawberry shortcake', 'Cake', 'no topping', 0, 'none', 'Wedding', 15
union select 'Kaufman', 'Lakewood', '11/09/2021', 'Chocolate peanut butter', 'Cake', 'Chocolate', 0, 'none', 'Bar mitzvah', 3
union select 'Chana Cohen', 'Lakewood', '07/04/2021', 'Banana', 'Cake', 'Royal icing', 1, 'Attached photo', 'Anniversary', 1
union select 'Ahuva Licht', 'Lakewood', '06/22/2021', 'Sugar', 'Cookie', 'Royal icing', 0, 'Write Chaim and Devorah', 'Engagement', 75
union select 'Tziporah Markowitz', 'Lakewood', '03/16/2021', 'Strawberry shortcake', 'Cake', 'no topping', 0, 'none', 'Baby', 3
union select 'David Fried', 'Lakewood', '10/01/2021', 'Chocolate peanut butter', 'Cake', 'Chocolate', 0, 'none', 'Bar mitzvah', 2
union select 'Moshe Abrams', 'Brooklyn', '08/23/2021', 'Vanilla', 'Cupcake', 'Peanut butter', 0, 'Write 3 on it', 'Birthday', 150
union select 'Rachel Bernstein', 'Lakewood', '02/28/2021', 'Sugar', 'Cookie', 'Fondant', 0, 'Attached photo of daughter', 'Bas mitzvah', 80
union select 'Faiga Berg', 'Brooklyn', '10/12/2021', 'Chocolate', 'Cupcake', 'Chocolate', 0, 'Add a pecan on each one', 'Event', 350
union select 'Dena Bergman', 'Brooklyn', '06/08/2021', 'Sugar', 'Cookie', 'Royal icing', 0, 'Write Shimon and Leah', 'Engagement', 75
union select 'Asher Yechiel Eisen', 'Brooklyn', '12/31/2021', 'Sugar', 'Cookie', 'Royal icing', 0, 'In shape of thirteen', 'Bar mitzvah', 175
union select 'Mendy Fischer', 'Lakewood', '07/04/2021', 'Banana', 'Cupcake', 'vanilla', 0, 'For new baby', 'Baby', 100
union select 'Chaya Kaplan', 'Lakewood', '01/01/2021', 'Chocolate', 'Cupcake', 'Vanilla', 0, 'Make it taste great please', 'Birthday', 100
union select 'Sarala Schwartz', 'Brooklyn', '06/09/2021', 'Chocolate', 'Cupcake', 'Vanilla', 0, 'none', 'Baby', 50
union select 'Sarah Braunstein', 'Brooklyn',  '10/24/2021', 'Sugar', 'Cookie', 'Royal icing', 1, 'See attached picture of my house', 'Family party', 110

select * from Baking