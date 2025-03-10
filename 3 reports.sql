use flyairDB
go

-- 1) How many people are booked per flight as: count of people, flight number, departure airport, when the flight is departing and destination.

select PassengersOnFlight= count(f.FlightNumber) , f.FlightNumber, f.DepartureAirport, f.DepartureCountry ,f.TimeDeparting, f.ArrivalAirport, f.ArrivalCountry
from flyair f 
group by f.FlightNumber, f.DepartureAirport, f.DepartureCountry  , f.TimeDeparting, f.ArrivalAirport, f.ArrivalCountry


--2) Who isn't checked in for flights departing in the next week, in order to send them reminders to check in.

select *
from flyair f 
where f.CheckedIn = 0 
and DATEDIFF(day, GETDATE(), f.DateDeparting)<=7
and f.DateDeparting > getdate()

--3) How many flights are departing per day, and num of passengers we have on those flights.

select AmountOfFlights= count(distinct(f.FlightNumber)), AmountOfPassenger= count(distinct(concat(f.PassengerFirstName,f.PassengerLastName))), f.DateDeparting
from flyair f 
group by f.DateDeparting 
order by f.DateDeparting  


-- 4) How many flights are departing per destination, and num of passengers we have on those flights, to know what route is attracts most people.

select f.ArrivalAirport, AmountOfFlights= count(distinct(f.FlightNumber)), AmountOfPassenger= count(distinct(concat(f.PassengerFirstName,f.PassengerLastName)))
from flyair f
group by f.ArrivalAirport
order by AmountOfPassenger desc 


--5) How many people booked but didn't actually travel in the end.

select AmountBookedThatDidntFly= count(f.CheckedIn) 
from flyair f
where f.CheckedIn = 0
and f.DateDeparting < getdate()



--6) How many flights does each person have (to know for frequent flyer status), as: last name, first name, number of flights.

select  f.PassengerLastName, f.PassengerFirstName, NumberOfFlights= count(f.FlightNumber)
from flyair f
group by f.PassengerLastName, f.PassengerFirstName
order by NumberOfFlights desc 

--SH or is it meant to be like this?
select  FFS= concat(f.PassengerLastName,', ', f.PassengerFirstName , ', ', count(f.FlightNumber))
from flyair f
group by f.PassengerLastName, f.PassengerFirstName
order by count(f.FlightNumber) desc 




