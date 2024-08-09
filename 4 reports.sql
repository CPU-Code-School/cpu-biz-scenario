--The reports I need are as following:
-- 1) How many people are booked per flight as: count of people, flight number, departure airport, when the flight is departing and destination.
select p.FlightNumber, P.DepartureAirport, p.TimeDeparting, p.ArrivalAirport, AmountOfPassengers = count(*)
from Passenger p 
group by p.FlightNumber, P.DepartureAirport, p.TimeDeparting, p.

-- 2) Who isn't checked in for flights departing in the next week, in order to send them reminders to check in.
select * 
from Passenger p 
where PassportIssueDate is null 
and TimeDeparting < dateadd(week, 1, getdate())

-- 3) How many flights are departing per day, and num of passengers we have on those flights.
--was it possible to do this in one report?
select DepartureDate = convert(varchar, p.TimeDeparting, 103), p.FlightNumber, NumPassengers = Count(*)
from Passenger p 
group by convert(varchar, p.TimeDeparting, 103), p.FlightNumber

select DepartureDate = convert(varchar, p.TimeDeparting, 103), FlightsDeparting = count(distinct p.FlightNumber)
from Passenger p
group by convert(varchar, p.TimeDeparting, 103)

-- 4) How many flights are departing per destination, and num of passengers we have on those flights, to know what route is attracts most people.
--not sure how to do this in one report
select p.ArrivalAirport, p.FlightNumber, NumPassengers = Count(*)
from Passenger p 
group by p.ArrivalAirport, p.FlightNumber

select p.ArrivalAirport, NumberOfFlights = count(distinct p.FlightNumber)
from Passenger p
group by p.ArrivalAirport

-- 5) How many people booked but didn't actually travel in the end.
select * 
from Passenger p 
where p.PassportIssueDate is null and p.TimeDeparting < getdate()

-- 6) How many flights does each person have (to know for frequent flyer status), as: last name, first name, number of flights.
select AmountOfFlightsBooked = concat(p.PassengerFirstName, ', ', p.PassengerLastName, ', ', count(*))
from Passenger p 
group by p.PassengerFirstName, p.PassengerLastName, p.PassengerDateOfBirth, p.PassengerAddress
order by count(*) desc 