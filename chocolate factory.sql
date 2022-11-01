  /*
  I am the proud owner of the most amazing, extarordinary, and largest Chocolate factory ,The Chocolate Rivers, that is just about to open its doors to the public.
  The ribbon cutting will be held at an authentic river of chocolate in the garden of the chocolate factory, in just a few short months on July 30 2022 (My 22nd Birthday!!)  
  But before we can do that I gathered a large sum of data from my granfathers Willy Wonka's chocolate factory to help me 
  study which chocolates are most common and flavors that are most desired by the human taste buds So time is of essence!
  Heard you guys could help me out and get my life in order. I have a lot of data and need to get my system running.
  Your boss has given the go ahead so....

  At Chocolate Rivers we will sell a very large variety of chocolate flavors.But before we can confirm on the recipes
   lets look at Mr. Willy Wonka's Favorites.The chocolates are one of three options:
   either a solid block of chocolate for the good old chocolate lovers,chocolate truffles,or chocolate candy bars.
   Each piece comes in one of five specialty flavors :

   1)Caramelized white chocolate
   2)Milk Chocolate Hazelnut Esspresso
   3)Dark 54 Chocolate Raspberry Pomegranate
   4)Dark salted caramel
   5)Milk creme & Dark Creme

   Each chocolate is also charachterized by its shape(:heart,oval,square,oracle,ripple,thimble),Country the recipe was gotten from, the year it was put on the market,
   and the amount of oz it weighs,each chocolate also gets an expiration date that it cannot be sold past.

   The name the chocolate recieves is the combination of the Shape, flavor,Chocolate type with the word "shaped" after the shape name i.e Heart Shaped Dark Salted Caramel Truffle. 
ummm... think thats it.Actually, how can I forget of course I would need to know the date the chocolate was sold so we can keep a nice record.

Questions:
Q:when was the first chocolate put on the market?
A: the very first chocolate was put on the shelf in 1840.My grandfather opened his bussiness then.

Q:Would I need to include the date of when the chocolate went on the market or only the year?
A: Only the year is neccesarry

Q:what was the biggest and smallest chocolate your grandfather ever made in his factory?
A:the biggest is 6 oz. and smallest is 1oz.

Q:Would you sell chocolates that are already expired?
A: No we do not sell expired chocolates



Reports:
1)In order to see which flavor is most popular, can you show me how long has each flavor been 
sitting on the shelf before it was sold (per chocolate flavor and chocolateType)? overall which flavor
was on the shelf the longest? which the shortest?

2)Can you print out a list as of January 1st 1917 which chocolates were put on the shelf but not yet sold.They got sold within the next 17 years.
show the pieces in this order: Chocolate Name,yearPutOnShelf,DateSold,#Yearsold(the year it got sold after this point)


3) Mix together some flavors by subtracting 2 ingredients from 3-5 and adding 2 from 1 and 2 
what number flavor comes out? present the Recipe as the chocolate type description colon the chocolate flavor description colon the chocolate flavor number and then
which operation it will get either plus 2 or minus 2 based on its flavor number i.e Chocolate Candy Bar:milk creme & Dark Creme: 5-2


Use the Medalist Table for sample data

Technical Note: To select from a table in a database other than the one you are working in, prefix the source table with the database name and dbo like this:
--select * from RecordKeeperDB.dbo.Medalist 

when inserting columns that can be represented with numbers insert as a number but show to the user as the text description.

Name:concatination of the shape,the word "shaped",Flavor,Chocolate Type
Chocolate Type: 1)Solid Block-Medalists with gold medals
                2)Chocolate Truffles-Medalists with silver
                3)Chocolate Candy Bar-Medalists with Bronze medals
Chocolate Flavor:
   1)Caramalized white chocolate-SportSubCategory has to do with Females
   2)Milk Chocolate Hazelnut Esspresso-when the sportsubcategory has to do with males
   3)Dark 54 Chocolate Rasberry Pomegranate-when the sportsubcategory has a measurement
   4)Dark salted caramel-when its other than the first 3 but only has 1 word
   5)milk creme & Dark Creme- all other sportsubcategory

Shape:
heart= Medlist who were 14-16 years old when they won their medal
oval= Medlist who were 17-27 years old when they won their medal
square= Medlist who were 29-41 years old when they won their medal
oracle= Medlist who were 48-58 years old when they won their medal
ripple= Medlist who were 59-60 years old when they won their medal
thimble= all other ages

Year It was Put on the market:Yearborn

Weight of Chocolate: the age the mealist was at the olypmpic divided by 10

Date The Chocolate was sold: the year=olympicYear,the months the ageAtOlympic divided by 6,day AgeAtOlympic divided by 4
Expiration Date:same as Date sold just add 5 years to OlympicYear
*/

