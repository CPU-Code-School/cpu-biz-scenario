/*
Hi, I run a weight loss gym called FitPlex Gym, and I need a single table to track all relative data about members, their progress, workout sessions, and memberships. This will help us monitor individual progress, manage workout sessions, and keep track of memberships.
I heard that you can help!
I need to record the name of all members, their contact details (7 digit phone number with a dash after the first three digits), initial weight, goal weight, current weight, BMI.
I also need the membership start and end dates, membership type, and  payment status. I would also like to have a record of each session date and session time.

Reports:
	1) I would like a list of all active members with their membership details. I would like each member to be listed as last name, first initial.

	2) I want a list of all active members whose memberships are due to expire within the next month so that I can text them a 	reminder to renew their subscription.

	3) I want to collect payments that are past due, but would first like to see how much I am owed. Please provide a count of all members per membership type and show how many paid and how many did not. 

	4) I would like to check in on the overall effectiveness of our gym's weight loss program. Please provide a list of all members and their progress, sorted by the amount of weight loss in desc order. 
	
	5) I would like to see the difference in progress made by members in different membership categories. Please show me the average weight loss per membership type.

Questions:

Q: When did the first member join your gym?
A: Our gym opened on 12/01/2022 with a few members joining on opening day.

Q: Would you like to include additional member info such as emergency contact info and/or medical health conditions? 
A: An emergency contact number sounds like a great idea. However, it is unnecessary to record medical health conditions since all members are
   required to sign that they do not have any existing medical concerns prior to being admitted as a member. 

Q: How frequently do you plan to record weight loss progress updates and who is responsible for entering this data?
A: With every record entered I want to see the progress. I want this information to be auto generated into the table.

Q: How do you want to handle multiple sessions per day for the same member?
A: Each session should be entered as a separate record. It does not make a difference if the sessions happen to be on the same day.

Q: What are the membership types?
A: Annual, Semi-annual, monthly, quarterly


Sample data:
	Member, Contact number, Initial weight, Goal weight, Current weight, BMI, Start date, End date, Session date, Session time, Membership type, Payment status
 Dorothy Dow, 540-1236, 180 lb., 150 lb., 165 lb., 28.0, 04/01/2024, 07/01/2024, 07/01/2024, 9:00 A.M., Semi-annual, Paid, 
    John Smith, 540-9338, 230 lb., 180 lb., 180 lb., 26.9, 02/24/2022, 02/24/2023, 02/24/2023,  3:00 P.M., annual, Paid
    Elsy Johnson, 826-6940, 130 lb., 120 lb., 125 lb., 28.2, 07/15/2024, 08/15/2024, 07/30/2024, 10:15 A.M., monthly, Not Paid
    Alice McCormick, 362-3286, 150 lb., 110 lb., 120 lb.,  27.6, 09/15/2023, 09/15/2024,  07/28/2024, 1:30 P.M., annual, Paid
	
*/