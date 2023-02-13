use FlyAirDB
go
--1) How many people are booked per flight as: count of people, flight number, departure airport, when the flight is departing and destination.

select count(*) as CountOfPeople, f.FlightNum, f.DepartureAirport, f.DepartingDateTime, f.ArrivingCountry
from FlightInfo f 
group by f.FlightNum, f.DepartureAirport, f.DepartingDateTime, f.ArrivingCountry

--2) Who isn't checked in for flights departing in the next week, in order to send them reminders to check in.

select *
from FlightInfo f 
where CheckedIn = 0 and datediff(day, getdate(), DepartingDateTime) between 0 and 7 -- I don't want to include flights already departed

--3) How many flights are departing per day, and num of passengers we have on those flights.

select count(*) as FlightsPerDay, f.DepartingDateTime
from flightinfo f 
group by f.DepartingDateTime
order by count(*) desc

select count(*) as PassengersPerFlight, f.FlightNum, f.DepartingDateTime
from FlightInfo f 
group by f.FlightNum, f.DepartingDateTime

--4) How many flights are departing per destination, and num of passengers we have on those flights, to know what route is attracts most people.

select count(*) as FlightsPerDestination, f.ArrivingCountry
from flightinfo f 
group by f.ArrivingCountry
order by count(*) desc

select count(*) as PassengersPerDestination, f.ArrivingCountry
from FlightInfo f 
group by f.ArrivingCountry, f.PassportNum

--5) How many people booked but didn't actually travel in the end.

select count(*) as BookedAndMissedFlight
from FlightInfo f 
where f.DepartingDateTime < getdate() and f.CheckedIn = 0 --Doesn't account for people that checked in and didn't fly

--6) How many flights does each person have (to know for frequent flyer status), as: last name, first name, number of flights.

select f.LastName, f.FirstName, count(*) as NumOfFlights
from FlightInfo f 
group by f.LastName, f.FirstName
order by NumOfFlights desc