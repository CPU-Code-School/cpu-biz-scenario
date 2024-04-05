--1)
select CountOfPeople = count(*), f.FlightNumber, f.DepartureAirport, f.TimeDeparting, f.ArrivalAirport
from Flight f
group by f.FlightNumber, f.DepartureAirport, f.TimeDeparting, f.ArrivalAirport

--2)
select datediff(day,(getdate()),(TimeDeparting)), *
from Flight f 
where f.PassportNumber is null and datediff(day,(getdate()),(TimeDeparting)) between 0 and 7

--3)
select AmountDeparting = count(distinct f.FlightNumber), DepartureDate = datefromparts(year(TimeDeparting), month(TimeDeparting), day(TimeDeparting)), AmountOfPassengers = count(f.FlightNumber)
from Flight f 
group by datefromparts(year(f.TimeDeparting), month(f.TimeDeparting), day(f.TimeDeparting))

--4) 
select AmountPerDestination = count(distinct f.FlightNumber), f.ArrivalAirport, AmountOfPassengers = count(*)
from Flight f
group by f.ArrivalAirport

--5)
select *
from Flight f 
where f.PassportNumber is null and f.TimeDeparting < getdate()

--6)
select f.PassengerLastName, f.PassengerFirstName, AmountOfFlightsBooked = count(*)
from Flight f 
group by f.PassengerFirstName, f.PassengerLastName