/*
Costume
(
    -SaleID INT NOT NULL IDENTITY PRIMARY KEY,   

    -CustomerFirstName varchar(15) NOT NULL constraint [cannot be blank], 
    
    -CustomerLastName varchar(15) not NULL constraint [cannot be blank],

    -Costume varchar(20) not null ,  constraint must be in 
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

    -Size char(2) NOT NULL, constraint must be in(XS,S,M,L,XL)

    -AmountBought tinyint (tiny int does'nt let Negatives, and some one might buy 200 for a school, so this is better than a "DECIMAL") not NULL, constraint must be <0

    -SalesPricePerCostume,decimal (4,2) default = case when then 
        Size:         Price Sold:
        XS                 $20
        S                  $22
        M                  $25
        L                  $27
        XL                 $30

    -DateBought, date starting January 1, 2020.-getdate

    -DateSold. date starting January 1, 2020.-getdate

COMPUTED COLUMNS

    -PurchasePrice, case when then 
        Size:  Cost Price:  
        XS        $15          
        S         $17          
        M         $20          
        L         $22          
        XL        $25  

    -PayedFullPrice,case when then based on SALESPRICE and size ,either yes or no

    -TotalPricePaid, computed column = how much they paid per costume * how many they bought,

    -Profit computed column = how much they paid per costum * how many they bought - how much I paid per costume * how many they bought

MULTI COLUMN CONSTRAINTS

    DATE SOLD cannot be before DATE BOUGHT  
    SALESPRICE not less than Purchase Price
)
*/
