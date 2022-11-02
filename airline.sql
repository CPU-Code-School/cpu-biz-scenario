/*
I have an airline called 'Fly Air'. Flights are getting booked, but I can't keep track of how many people I have on each flight and who's flying.

Each flight has a flight number on each route for each time they leave. 
I can have multiple flights a day on the same route, so I would need to keep track of how many people I have booked on each flight.
When you book the flight you would only need to provide your name, DOB and address, but in order to be checked in and travel, we need the passport details. 
The details should be provided as: passport number, date of issue, expiry date, and nationality.

The reports I need are as following:
    1) How many people are booked per flight as: count of people, flight number, departure airport, when the flight is departing and destination.
    2) Who isn't checked in for flights departing in the next week, in order to send them reminders to check in.
    3) How many flights are departing per day, and num of passengers we have on those flights.
    4) How many flights are departing per destination, and num of passengers we have on those flights, to know what route is attracts most people.
    5) How many people booked but didn't actually travel in the end.
    6) How many flights does each person have (to know for frequent flyer status), as: last name, first name, number of flights.

Question: What's the flight numbers you use?
Answer: We have three letters from our name 'FLY' and then 3 digits starting from 001.

Question: What age are your passengers?
Answer: The law requires that passengers on our flights must all be adults, so we require they should be at least 16 years old.
We would allow passengers who turned 16 that year. The oldest we allow is 90 for medical reasons.

Question: What type of passports do your passengers have?
Answer: All passengers that are traveling with us have passport numbers that have 9 digits in it and start with any digit except 0.

Question: Can you book 2 seats for 1 passenger?
Answer: No, you can only have 1 seat per passenger per flight.

Question: How old can a passport be in order to travel?
Answer: That depends. If the destination is in same country, the passport just needs to be valid. The same applies if the destination is to the passport's country. 
If it's an international flight and not to the passport's country, it can be used up until 9 years and 6 month after it was issued.
But bear in mind that a passport issued to someone before the age of 16 is only valid for 5 years.

Question: How long before a flight can you book?
Answer: Up to 1 year before the flight, check in opens 30 days before departure.

Sample data: 
    Flight number, Departure Airport, Country, Arrival Airport, Country, Time Departing, Time Arriving, Name, DOB (dd/mm/yyyy), Address, (Passport number, Issue date, Expiry date, Nationality) if provided
    FLY001, LHR, UK, JFK, USA, 10/12/2021 8:00AM, 10/12/2021 12:00PM, John Major, 31/12/2000, 22 Queens Road, 175478100, 10/09/2016, 10/09/2026, UK
    FLY002, JFK, USA, LHR, UK, 31/12/2021 3:00PM, 01/01/2022 2:30PM, John Major, 31/12/2000, 22 Queens Road
    FLY001, LHR, UK, JFK, USA, 12/01/2020 8:00AM, 12/01/2020 12:00PM, Jill Johnson, 12/03/1997, 10 Downing Street, 367654998, 30/01/2019, 25/03/2029, USA
    FLY003, LGW, UK, TLV, Israel, 20/01/2022 7:55PM, 21/01/2022 3:00AM, Mike Markowicz, 09/12/1970, 45 Baker Street
    FLY004, TLV, Israel, LGW, UK, 09/10/2020 6:40AM, 09/10/2020 9:30AM, Nick Smith, 27/03/1998, 29 London Avenue
    FLY004, TLV, Israel, LGW, UK, 09/10/2020 6:40AM, 09/10/2020 9:30AM, John, Smith, 20/10/2004, 29 London Avenue, 209989911, 10/09/2018, 10/09/2023, UK
    FLY101, EWR, USA, TLV, Israel, 05/01/2021 9:00AM, 06/01/2021 2:30AM, Jack, Marks, 27/03/1995, 12 Ross Street

*/
