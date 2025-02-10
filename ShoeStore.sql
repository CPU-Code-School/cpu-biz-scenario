/*
I own a mens' shoe store with the name Shoe Place. I used to be quite organized with keeping track of my business, but since 
June 16 2012, when we expanded into a much bigger store with a much larger selection, things spiraled out of control and the business got
all messed up. To get back on track I will need a precise database of all the transactions, in order to get a clear picture, and also, for
the future to get the knowledge of which brands sell better than others, to stock up well based on previous sales. 

I will need to record the name and age of the customer, the date I got the shoes and the date they were sold, the prices in and out,
and of course I will need the company name of the shoes sold.

The reports I will need are as follows:
1) Per season which shoes sold the least, most and average
    Seasons divided as follows: Mar - May = Spring, Jun - Aug = Summer, Sep - Nov = Fall, Dec - Feb = Winter
2) for marketing information, which age group (divided by tens 1-10, 11-20 etc.) brought in the most profit
3) To get the financial status, I will need a list of the annual total number of sales, and the total income
4) What is the average time we had the shoes in stock based on the company  

Questions: 
Q. Do you accept returns for a full refund?
A. If it is within a short period of time and for a good reason we do give a full refund

Q. Will this database also include transactions from before the expansion?
A. no, I have that info stored away in good order

Q. Would you accept payments in advance and then place the order to be delivered directly to the customer?
A. no, I only sell from what I have in stock

Q. Should we include the customers' personal information, such as his telephone number and address
A. oh sure! but the phone number is enough, the address is not important   


Use the Invention table for the sample data.

customer name should be in this format last name, first name ex. Smith, John.
age - age at the time of the invention.
telephone number - year invented - 1000 , first 3 digits from reversed year died, year born. format: (123)456-7890
Company - there are 8 countries in the invention table, change each one for one of the following brands: SAS, Nike, Adidas, Florsheim, Puma, New Balance, Rockport, Reebok
    you can pick the order (If Gerrmany is not yet corrected make sure to incude that with Germany or add another brand).
date we got it - Jan 1, 20 connected to first 2 digits of year born.
date sold - Month, based on first letter of invention name:
    a-d Feb, e-h Apr, i-l Jun, m-p Aug, q-u Oct, v-z Dec,
    day, the number 1 connected to the last digit of year died,
    year, 20 connected to first 2 digits of year died.
Price we paid - first 3 digits of year born.
price sold - add the age at the invention to the first 3 digits of year died.
returns - those of age (at time of invention) 29, 31, 40 were refunded their purchases 

Enjoy!
*/
