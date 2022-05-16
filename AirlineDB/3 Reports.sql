--The reports I need is as following:
use AirlineDB
go
--1) How many people booked per flight, as flight number, departure airport, when the flight is departing, destination.
select PassengersBooked = count(PassengerFirstName), FlightInfo = concat(FlightNumber, ', ', DepartureCountry, ',', DepartureTime, ', ', ArrivalAirport)
from FlyAir
group by FlightNumber, DepartureCountry, DepartureTime, ArrivalAirport

--2) Who isn't checked in for flights departing in the next week, in order to send them reminders to check in.
select *
from FlyAir 
where PassengerStatus = 'Booked' 
and DepartureTime between getdate() and getdate() + 7

--3) How many flights are departing per day, and num of passengers we have on those flights.
select FlightsPerDay = count(FlightNumber), DepartureTime, Passengers = count(PassengerDOB), FlightNumber
from FlyAir f 
group by DepartureTime, FlightNumber

--4) How many flights are departing per destination, and num of passengers we have on those flights, to know what route is attracts most people.
select FlightsPerDestination = count(FlightNumber), ArrivalAirport, Passengers = count(PassengerDOB), FlightNumber
from FlyAir f 
group by ArrivalAirport, FlightNumber

--5) How many people booked but in the end they didn't travel.
--JD: not enought info to complete this
select * 
from FlyAir 
where PassengerStatus = 'booked'

--6) How many flights does each person have (to know for frequent flyer status), as last name, first name, number of flights.
select PassengerInfo = concat(PassengerLastName, ', ', PassengerFirstName, ', ', count(FlightNumber))
from FlyAir 
group by PassengerLastName, PassengerFirstName
