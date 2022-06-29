/*
Note: Calculations are challenging therefore it requires an update after the insert as you cannot have a computed column based on a computed column.

Good Evening,
This is Sandra from the social services agency in Central Jersey.
Our Department processes applications for the Supplemental Nutritional Assistance Program(Snap), also known as food stamps.
We are looking to implement an automated system to evaluate the eligibility of the applicants. 

We collect the following information from each application:
    Family name, Phone number, Address, Family size, Earned income, Unearned income, Daycare expenses, Shelter expenses and Standardized utility expense. 
We also refer to some other fixed information based on the family size, including:
    Gross income limit, Standard deduction and a Maximum benefit amount. (this information is provided in the charts below).

In order for a family to be determined eligible there are two qualifications.

A: Their total income, earned + unearned, must be under the gross income limit for their family size.

B: Snap benefits are based on a calculation of various ratios of income and expensed. In order for a family to qualify the calculation must result in a benefit amount greater than $0.
The calculation is based on a series of intricate steps and we would like to have each step stored in an easy and accessable manner so that our eligibility determination system can run smoothly.
The calculation which determines each family's benefit amount is as follows:
    Step 1: we take 80% of the earned income plus all of the unearned income to determine the family's 'GROSS INCOME'
    Step 2: we deduct the standard deduction based on the family size as well as any daycare expenses from the gross income to determine the family's 'NET INCOME BEFORE SHELTER'
    Step 3: now we calculate the shelter expense plus the utility expense. 
            if it exceeds 50% of the 'net income before shelter' then we deduct the amount that it exceeds it by from the 'net income before shelter' to get the 'NET INCOME AFTER SHELTER'
            for example if someones net income before shelter is $100 and their shelter plus utilities is $65, it exceeds 50% of the net income before shelter by $15, so we would deduct $15 from the net income before shelter (which is $100) and get $85 as the 'Net income after shelter'
    Step 4: we now take 30% of the net income after shelter as '30% OF NET INCOME AFTER SHELTER'
    Step 5: we take the maximum benefit amount for the family size (chart provided below) and subtract 30% of net income after shelter to determine the family's 'BENEFIT AMOUNT'
The benefit amount is the amount of $ the family will get each month on their snap card to spend on groceries

We will need the following reports:
    1) We need a list of eligible families showing their Name, Address and Benefit amount.
    2) We need a list of all ineligible families showing their Name, Address and Benefit amount.
    3) We need a count of all applicants who were under the income limit for their familys size but found not eligible for benefits.
    4) We need a count of the number of applicants whose unearned income is greater than their earned income.
    5) During Covid eligible families are being given the maximum benefit for their family size every month regardless of their actual benefit amount as long as they are eligible for $1 or more. Can you give us a list of all eligible families, including their real benefit amount, the maximun benefit for their family size and the amount of extra benefits they recieve each month due to covid.


Question: Can a family apply with no income? no daycare expense? no shelter expense? no utility expense?
Answer:   Though most families have at least a bit of income, we do occaisionlly have families that are not earning any income at the time of application. 
          There are many families that do not have a daycare expense. 
          Occaisionally we have families who do not have a shelter expense, either because they are living rent free or because someone else is paying it for them.
          Yes some families do not pay for their utilities on their own.

Question: Can the net income before or after shelter be a negative number?
Answer:   No. If their expenses exceed their income enough that it would result in a negative number we count it as 0.

Question: Which places do you accept applications from?
Answer:   Our office is actually designated specifically towards residents of lakewood NJ, it is therefore not necessary to store the applicant's town, state and zip code

Question: What is the highest monthly income amount a family would apply with?
Answer:   Any application that has an income of greater than $25,000 monthly would be automatically rejected.

Question: What is the largest family size there is?
Answer:   Although the Lakewood families tend to be large we don't expect to have a family with more than 17 eligible members.



Sample Data: (Listed in the following order: Family name, Phone Number, Address, Family Size, Earned Income, Unearned Income, Daycare expenses, Shelter expenses, Standerdized utility expense)
Smith, 732-901-1234, 1 Happy Lane, 4, $2500, $500, $180, $900, $548 
Adams, 732-942-0987, 2 Joyous Drive, 8, $5400, $1200, $360, $1750, $548
Jackson, 848-226-8765, 3 Momentous Place, 2, $1500, $1000, $0, $1000, $29
Tyler, 732-886-6543, 4 Drake Road, 3, $3000, $1200, $400, $1800, $548
Buchanan, 732-994-2345, 5 Hickory Drive, 15, $10,000, $0, $810, $2250, $548
Arthur, 848-210-9843,  6 Misory Lane, 1, $9870, $0, $0, $670, $29
Wilson, 732-290-8764, 7 Smoke Lane, 3, $1500, $301, $230, $1000, $369
Hoover, 732-543-2109, 8 Justice Place, 7, $3434, $3434, $343, $1343, $548
Truman, 732-994-2210, 9 Yorktown Blvd, 5, $4500, $1200, $400, $1800, $548
Johnsohn, 732-998-7654, 10 Branchtown Road, 10, $10000, $500, $510, $1200, $548
Nixon, 732-886-4325, 11 Letsgo Place, 5, $400, $600, $300, $1150, $369
Carter, 732-990-9990, 12 Bored Town Road, 2, $2000, $500, $0, $1150, $369
Biden, 848-998-9876, 13 Icantthink Lane, 13, $9950, $100, $0, $1800, $548
Cohen, 732-765-4321 14 Winya Place, 9, $6000, $1300, $400, $275, $369

Thank you for collaborating in our efforts to find and create Solutions To End Poverty Soon.



Additional Information Bases on Family Size:
Family Size:     Monthly Income Limit:      Maximum Benefit Amount:     Standard Deduction Amount
1                $1986                      $250                        $177
2                $2686                      $459                        $177
3                $3386                      $658                        $177
4                $4086                      $835                        $184
5                $4786                      $992                        $215
6                $5486                      $119                        $246
7                $6186                      $131                        $246
8                $6886                      $150                        $246
9                $7586                      $169                        $246
10               $8286                      $188                        $246
11               $8986                      $206                        $246
12               $9686                      $225                        $246
13               $10386                     $244                        $246
14               $11086                     $263                        $246
15               $11786                     $282                        $246
16               $12486                     $281                        $246
17               $13186                     $299                        $246
*/
