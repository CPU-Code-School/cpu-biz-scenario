use ConfectionaryDB
go

insert confectionary (FullName, Branch, DateOrdered, TypeOfBase, Item, Topping, Picture, Specifics, Occasion, Amount)
select      'Chaim Green', 'Lakewood', '01/04/2022', 'Strawberry shortcake', 'Cake', 'none', 'no',  'Please make sure they both look the same', 'Baby', 2
union select 'Rivky Shapiro', 'Lakewood', '07/22/2021', 'Chocolate', 'Cake', 'Caramel', 'no', 'Write Happy birthday on cake', 'Birthday', 1
union select 'Leah Gross', 'Brooklyn', '06/11/2021', 'Sugar', 'Cookie', 'Royal icing', 'yes',  'Graduation cap shape of picture I emailed', 'Graduation', 70
union select 'Baruch Goldberg', 'Brooklyn', '09/12/2021', 'Sugar', 'Cookie', 'Royal icing', 'no', 'Shape of a mask and write thank you for keeping everyone safe and company logo', 'Company logo', 500
union select 'Binyamin Stein', 'Lakewood', '02/15/2021','Vanilla', 'Cake', 'Chocolate', 'yes',  'Write Happy 85th birthday on bottom of the attached photo','Birthday', 3
union select 'Batsheva Golden', 'Lakewood', '08/14/2021', 'Chocolate peanut butter', 'Cake', 'Peanut butter', 'yes', 'Write Shloimy and the number 3 on pic', 'Birthday', 1
union select 'Rena Stern', 'Brooklyn', '10/11/2021', 'Sugar', 'Cookie', 'Fondant', 'no', 'Pink background with glitter and shape of balloon with word Sori', 'Bas mitzvah', 75
union select 'Layala Katz', 'Lakewood', '09/05/2021', 'Vanilla', 'Cupcake', 'Strawberry', 'no', 'Make it look nice!', 'Birthday', 28
union select 'Sara Leah Levy', 'Brooklyn', '05/18/2021', 'Vanilla', 'Cupcake', 'Coconut', 'no', 'none', 'Engagement', 100
union select 'Devorah Friedman', 'Brooklyn', '07/04/2021', 'Strawberry shortcake', 'Cake', 'no topping', 'no', 'none', 'Wedding', 15
union select 'Kaufman', 'Lakewood', '11/09/2021', 'Chocolate peanut butter', 'Cake', 'Chocolate', 'no', 'none', 'Bar mitzvah', 3
union select 'Chana Cohen', 'Lakewood', '07/04/2021', 'Banana', 'Cake', 'Vanilla', 'yes', 'Attached photo', 'Anniversary', 1
union select 'Ahuva Licht', 'Lakewood', '06/22/2021', 'Sugar', 'Cookie', 'Royal icing', 'no', 'Write Chaim and Devorah', 'Engagement', 75
union select 'Tziporah Markowitz', 'Lakewood', '03/16/2021', 'Strawberry shortcake', 'Cake', 'no topping', 'no', 'none', 'Baby', 3
union select 'David Fried', 'Lakewood', '10/01/2021', 'Chocolate peanut butter', 'Cake', 'Chocolate', 'no', 'none', 'Bar mitzvah', 2
union select 'Moshe Abrams', 'Brooklyn', '08/23/2021', 'Vanilla', 'Cupcake', 'Peanut butter', 'no', 'Write 3 on it', 'Birthday', 150
union select 'Rachel Bernstein', 'Lakewood', '02/28/2021', 'Sugar', 'Cookie', 'Fondant', 'yes', 'Attached photo of daughter', 'Bas mitzvah', 80
union select 'Faiga Berg', 'Brooklyn', '10/12/2021', 'Chocolate', 'Cupcake', 'Chocolate', 'no', 'Add a pecan on each one', 'Event', 350
union select 'Dena Bergman', 'Brooklyn', '06/08/2021', 'Sugar', 'Cookie', 'Royal icing', 'no', 'Write Shimon and Leah', 'Engagement', 75
union select 'Asher Yechiel Eisen', 'Brooklyn', '12/31/2021', 'Sugar', 'Cookie', 'Royal icing', 'no', 'In shape of thirteen', 'Bar mitzvah', 175
union select 'Mendy Fischer', 'Lakewood', '07/04/2021', 'Banana', 'Cupcake', 'Vanilla', 'no', 'For new baby', 'Baby', 100
union select' Chaya Kaplan', 'Lakewood', '01/01/2021', 'Chocolate', 'Cupcake', 'Vanilla', 'no', 'Make it taste great please', 'Birthday', 100
union select 'Sarala Schwartz', 'Brooklyn', '06/09/2021', 'Chocolate', 'Cupcake', 'Vanilla', 'no', 'none', 'Baby', 50
union select 'Sarah Braunstein', 'Brooklyn',  '10/24/2021', 'Sugar', 'Cookie', 'Royal icing', 'yes', 'See attached picture of my house', 'Family party', 110
select * from confectionary 
