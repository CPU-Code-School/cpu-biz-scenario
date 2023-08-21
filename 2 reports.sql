use FlyAirDB

--1) How many people are booked per flight as: count of people, flight number, departure airport, when the flight is departing and destination.
select Passengers = count(*), b.FlightNum, b.DepartureAirport, b.DepartureTime, b.ArrivalAirport
from Booking b 
group by b.FlightNum, b.DepartureAirport, b.DepartureTime, b.ArrivalAirport

--2) Who isn't checked in for flights departing in the next week, in order to send them reminders to check in.
select *
from Booking b 
where b.CheckedInTime is null
and datediff(day, getdate(), b.DepartureTime) between 0 and 7

--3) How many flights are departing per day, and num of passengers we have on those flights.
select Passengers = count(*), DepartureDate = convert(date, b.DepartureTime, 23)
from Booking b 
group by convert(date, b.DepartureTime, 23)

--4) How many flights are departing per destination, and num of passengers we have on those flights, to know what route is attracts most people.
select b.DepartureAirport, Passengers = count(*)
from Booking b 
group by b.DepartureAirport

--5) How many people booked but didn't actually travel in the end.
select PassengersMissedFlights =  count(*)
from Booking b 
where b.CheckedInTime is null
and getdate() > b.DepartureTime

--6) How many flights does each person have (to know for frequent flyer status), as: last name, first name, number of flights.
select LastName = substring(b.PassengerName,charindex(' ', b.PassengerName)+1, len(b.PassengerName)),
	FirstName = substring(b.PassengerName, 1, charindex(' ', b.PassengerName)-1), 
	NumberOfFlights = count(*)
from Booking b 
group by b.PassengerName, b.PassengerDOB