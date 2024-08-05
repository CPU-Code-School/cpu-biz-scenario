delete Orders
go 

insert orders (CustomerFirstName, CustomerLastName, Branch, OrderDate, BaseType, ProductType, Topping, Photo, CustomSpecification, Occasion, Amount)
select 'Chaim', 'Green', 'Lakewood', 2022-04-01, 'Strawberry shortcake', 'Cake', 'no topping', 0,  'Please make sure they both look the same', 'Baby', 2
union select 'Rivky', 'Shapiro', 'Lakewood', 2021-07-22, 'Chocolate', 'Cake', 'Caramel', 0, 'Write Happy birthday on cake', 'Birthday', 1
union select 'Leah', 'Gross', 'Brooklyn', 2021-06-11, 'Sugar', 'Cookie', 'royal icing', 1,  'Graduation cap shape of picture I emailed', 'Graduation', 24
union select 'Baruch', 'Goldberg', 'Brooklyn', 2021-09-12, 'Sugar', 'Cookie', 'royal icing', 0, 'Shape of a mask and write thank you for keeping everyone safe and company logo', 'Company logo', 500
union select 'Binyamin', 'Stein', 'Lakewood', 2021-02-15, 'Vanilla', 'Cake', 'Chocolate', 1,  'Write Happy 85th birthday on bottom of the attached photo', 'Birthday', 3 
union select 'Batsheva', 'Golden', 'Lakewood', 2021-08-14, 'Chocolate', 'Cake', 'Peanut butter', 1, 'Write Shloimy and the number 3 on pic', 'Birthday', 1
union select 'Rena', 'Stern', 'Brooklyn', 2021-10-11, 'Sugar', 'Cookie', 'Fondant', 0, 'Pink background with glitter and shape of balloon with word Sori', 'Bas mitzvah', 75
union select 'Layala', 'Katz', 'Lakewood', 2021-09-05, 'Vanilla', 'Cupcake', 'Strawberry', 0, 'Make it look nice!', 'Birthday', 28
union select 'Sara Leah', 'Levy', 'Brooklyn', 2021-05-18, 'Vanilla', 'Cupcake', 'Coconut', 0, '', 'Engagement', 100
union select 'Devorah', 'Friedman', 'Brooklyn', 2021-07-04, 'Strawberry shortcake', 'Cake', 'no topping', 0, '', 'Wedding', 15
union select 'D', 'Kaufman', 'Lakewood', 2021-11-09, 'Chocolate peanut butter', 'Cake', 'Chocolate', 0, '', 'Bar mitzvah', 3
union select 'Chana', 'Cohen', 'Lakewood', 2021-07-04, 'Banana', 'Cake', 'chocolate', 1, 'Attached photo', 'Anniversary', 1
union select 'Ahuva', 'Licht', 'Lakewood', 2021-06-22, 'Sugar', 'Cookie', 'Royal icing', 0, 'Write Chaim and Devorah', 'Engagement', 75
union select 'Tziporah', 'Markowitz', 'Lakewood', 2021-03-16, 'Strawberry shortcake', 'Cake', 'no topping', 0, '', 'Baby', 3
union select 'David', 'Fried', 'Lakewood', 2021-10-01, 'Chocolate peanut butter', 'Cake', 'Chocolate', 0, '', 'Bar mitzvah', 2
union select 'Moshe', 'Abrams', 'Brooklyn', 2021-08-23, 'Vanilla', 'Cupcake', 'Peanut butter', 0, 'Write 3 on it', 'Birthday', 150
union select 'Rachel', 'Bernstein', 'Lakewood', 2021-02-28, 'Sugar', 'Cookie', 'Fondant', 1, 'Attached photo of daughter', 'Bas mitzvah', 80
union select 'Faiga', 'Berg', 'Brooklyn', 2021-10-12, 'Chocolate', 'Cupcake', 'Chocolate', 0, 'Add a pecan on each one', 'Event', 350
union select 'Dena', 'Bergman', 'Brooklyn', 2021-06-08, 'Sugar', 'Cookie', 'Royal icing', 0, 'Write Shimon and Leah', 'Engagement', 75
union select 'Asher Yechiel', 'Eisen', 'Brooklyn', 2021-12-31, 'Sugar', 'Cookie', 'Royal icing', 0, 'In shape of thirteen', 'Bar mitzvah', 175
union select 'Mendy', 'Fischer', 'Lakewood', 2021-07-04, 'Banana', 'Cupcake', 'Vanilla', 0, 'For new baby', 'Baby', 100
union select 'Chaya', 'Kaplan', 'Lakewood', 2021-01-01, 'Chocolate', 'Cupcake', 'Vanilla', 0, 'Make it taste great please', 'Birthday', 100
union select 'Sarala', 'Schwartz', 'Brooklyn', 2021-06-09, 'Chocolate', 'Cupcake', 'Vanilla', 0, '', 'Baby', 50
union select 'Sarah', 'Braunstein', 'Brooklyn',  2021-10-24, 'Sugar', 'Cookie', 'Royal icing', 1, 'See attached picture of my house', 'Family party', 110
