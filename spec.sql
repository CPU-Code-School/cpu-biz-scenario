/*Hi, I have a small home-run business selling costumes. Until now I've only been selling to family and friends, but I recently decided to open my business 
to the public starting January 1, 2020.
I am now going to need a database to keep track all the costumes that are sold.
I want the name of the customer, which costumes they bought, which size, how much I paid per costume, how much they paid per costume, 
how many they bought, did they pay full price, date I bought, date I sold.
I also want the total price that the customer paid.

There are only 5 options of prices in my store. The prices go according to the size:
 Size:  Cost Price:  Price Sold:
 XS        $15           $20
 S         $17           $22
 M         $20           $25
 L         $22           $27
 XL        $25           $30
 
So far I only sell the following costumes:
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
 
I am going to need the following reports:
 1. I need to know which costume is the most popular.
 2. I need to know which size is the most polpular.
 3. I need you to show me all of my customers in the following format: name: amountbought - costume customer bought (how much they paid)
 4. I need to know the profit each sale.

Questions:
Q: Do you need the first name of the customer?
A: Yes, because sometimes I have 2 cusotmers with same last name.

Q: Do you ever sell anything for less than cost price? Do you ever go on sale?
A: No, I never sell anything for less than cost price. I don't either go on sale, but sometimes (like for family) I will give a costume for exactly cost price.

Q: Do you ever sell something in advance (before you have it in the store)?
A: no


Sample Data:
CustomerName, CostumesBought, Size, AmountBought, SoldPricePerCostume, DateBought, DateSold
Chana Goldberg, Artist, XS, 2, 20, Feb 14, 2020, Apr 2, 2020
Aliza Duetch, Fire Man, L, 1, 22, Mar 9, 2021, Jan 4, 2022
Dovid Rosen, Zebra, S, 1, 22, Aug 23, 2020, Aug 25, 2020 
Shira Pent, Colonial Boy, XS, 1, 20, Sep 17, 2021, Dec 4 2021
Miriam Gruen, Princess, M, 3, 25, Jul 6, 2022, Oct 19, 2022  
Shoshana Victor, Elephant, XL, 1, 30, Nov 28, 2020, Feb 2, 2021
Mendy First, Colonial Girl, XS, 1, 20, May 24, 2021, July 17, 2021
Yisroel Horowitz, Police Man, XL, 1, 30, Jan 16, 2022, Jan 19, 2022
Aliza Duetch, American Girl Doll, S, 2, 22, Mar 12, 2021, June 21, 2021
Rochel Rubin, Bumble Bee, S, 1, 22, Sep 11, 2020, Jan 2, 2021
Bracha Ganz, Princess, M, 4, 25, Nov 3, 2020, Dec 12, 2021
Yaakov Cohen, Princess, XS, 1, 20, Dec 4, 2021, July 25, 2022
Rina Rosen, Artist, M, 1, 25, Feb 18, 2022, May 28, 2022
Rivkah Goldberger, zebra, S, 1, 22, Sep 14, 2022, Dec 29, 2022 
*/