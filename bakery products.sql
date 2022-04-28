/*
I recently started a home based baking business, together with my cousin. She works from her home in Lakewood and I work in Brooklyn.
I sell cakes, cookies, and cupcakes for various events.
I want to keep a database of all orders.
I need to know whether they order cookies, cake/s, or cupcakes.
I need to know the base of cookie/cake, what topping to decorate it with, and space to put in their custom order specifications.
I also want to know if they want a photo on the cake/cookie.
Please calculates the price of order when entered.
I need the name of the Customer, branch they ordered from, date of order, amount they bought, how much they cost is per item and how much the whole order was.
I also want to keep track of the occasion they bought it for.
These are the only options of cakes and cupcakes we make (so far):
Chocolate 
Vanilla 
Coconut 
Chocolate Peanut Butter 
Banana
Strawberry shortcake
Toppings:
Royal icing or fondant or frosting - chocolate, caramel, strawberry, coconut, peanut butter
All cakes are $50, strawberry shortcake is extra $5
All cupcakes are $3, 
All cookies are $3.50, 
Picture adds on $8 for a cake and $1.50 for a cookie. We don't offer pictures on cupcakes.
I'll need these reports:
1) Sum of how many of each type of cake/cupcake/cookie is sold per branch 
        Include the type of product and base but not the frosting or topping , and sum of amount sold all together
2) How many orders per season, event, and branch (Ex: Summer, Upsherin, Lakewood, 6)
    Summer: July and August
    Yom Tov time: September and October
    Winter: November - April
    Spring: May and June
3) How much money came in each month per branch
4) How many orders came in each month per branch
Question: When is the earliest order?
Answer: I opened shop January 1, 2021.
Question: Do you have a minimum or maxmimum
Answer: Cookies have minimum order of 24 and maximum order of 500.
        Cupcakes have a minimum of 12 and maximum of 500.
Question: Do you need to know the time it is entered?
Answer: No need to.
Sample data:
Name, Branch, Date, Type of base, Item, Topping, Picture?, Specifics, Occasion, Amount, (Price per, Order price)
Chaim Green, Lakewood, 01/04/2022, Strawberry shortcake, Cake, (no topping), (no picture),  Please make sure they both look the same for a kiddush, Baby, 2, ($55, $110)
Rivky Shapiro, Lakewood, 07/22/2021, Chocolate, Cake, Caramel, no, Write Happy birthday on cake, Birthday, 1
Leah Gross, Brooklyn, 06/11/2021, Sugar, Cookie, Royal icing, yes,  Graduation cap shape of picture I emailed, Graduation, 70
Baruch Goldberg, Brooklyn, 09/12/2021, Sugar, Cookie, Royal icing, no, Shape of a mask and write thank you for keeping everyone safe and company logo, Company logo, 500
Binyamin Stein, Lakewood, 02/15/2021, Vanilla, Cake, Chocolate, yes,  Write Happy 85th birthday on bottom of the attached photo, Birthday, 3
Batsheva Golden, Lakewood, 08/14/2021, Chocolate peanut butter, Cake, Peanut butter, yes, no, Write Shloimy and the number 3 on pic, Upsherin, 1
Rena Stern, Brooklyn, 10/11/2021, Sugar, Cookie, Fondant, no, Pink background with glitter and shape of balloon with word Sori, Bas mitzvah, 75
Layala Katz, Lakewood, 09/05/2021, Vanilla, Cupcake, Strawberry, no, Make it look nice!, Birthday, 28
Sara Leah Levy, Brooklyn, 05/18/2021, Vanilla, Cupcake, Coconut, no, none, Engagement, 100
Devorah Friedman, Brooklyn, 07/04/2021, Strawberry shortcake, Cake, no topping, no, none, Wedding, 15
Kaufman, Lakewood, 11/09/2021, Chocolate peanut butter, Cake, Chocolate, no, none, Bar mitzvah, 3
Chana Cohen, Lakewood, 07/04/2021, Banana, Cake, Vanilla, yes, Attached photo, Anniversary, 1
Ahuva Licht, Lakewood, 06/22/2021, Sugar, Cookie, Royal icing, no, Write Chaim and Devorah, Engagement, 75
Tziporah Markowitz, Lakewood, 03/16/2021, Strawberry shortcake, Cake, no topping, no, no, none, Baby, 3
David Fried, Lakewood, 10/01/2021, Chocolate peanut butter, Cake, Chocolate, no, no, none, Bar mitzvah, 2
Moshe Abrams, Brooklyn, 08/23/2021, Vanilla, Cupcake, Peanut butter, no, Write 3 on it, Upsherin, 150
Rachel Bernstein, Lakewood, 02/28/2021, Sugar, Cookie, Fondant, yes, Attached photo of daughter, Bas mitzvah, 80
Faiga Berg, Brooklyn, 10/12/2021, Chocolate, Cupcake, Chocolate, no, Add a pecan on each one, Event, 350
Dena Bergman, Brooklyn, 06/08/2021, Sugar, Cookie, Royal icing, no, Write Shimon and Leah, Engagement, 75
Asher Yechiel Eisen, Brooklyn, 12/31/2021, Sugar, Cookie, Royal icing, no, In shape of tefillin, Bar mitzvah, 175
Mendy Fischer, Lakewood, 07/04/2021, Banana, Cupcake, Vanilla, no, For bris, Baby, 100
Chaya Kaplan, Lakewood, 01/01/2021, Chocolate, Cupcake, Vanilla, no, Make it taste great please, Birthday, 100
Sarala Schwartz, Brooklyn, 06/09/2021, Chocolate, Cupcake, Vanilla, no, none, Baby, 50
Sarah Braunstein, Brooklyn,  10/24/2021, Sugar, Cookie, Royal icing, yes, See attached picture of my sukkah, Family party, 110
*/

