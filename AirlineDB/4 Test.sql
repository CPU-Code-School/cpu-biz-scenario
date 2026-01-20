use AirlineDB 
go

delete FlyAir
go

set dateformat dmy
go

----NULL
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select null, 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', null, 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', null, 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', null, 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', null, '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', null, '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', null, 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', null, 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', null, '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', null, '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', null, 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', null, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, null, '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', null, 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', null


----NOT BLANK OR 0
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select '', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', '', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', '', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', '', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', '', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', '', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', '', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 0, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', '', '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', null



----FLIGHT NUMBER
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FL0001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLYY01', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY000', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY0011', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'SLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'



----DOB BETWEEN 16 AND 90
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2006', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2007', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/1932', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/1931', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'



----PASSPORT NUMBER 9 DIGITS NOT STARTING WITH 0
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 075478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 1754781000, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 17547810, '10/09/2016', '10/09/2026', 'UK'



----PASSENGER STATUS MUST HAVE NO NULLS IF CHECKED IN
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, null, null, null

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', null, '10/09/2016', null, null

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', null, null, '10/09/2026', null

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', null, null, null, 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', null, null, null, null



----DEPARTURE AIRPORT NOT THE SAME AS ARRIVAL AIRPORT
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'LHR', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'JFK', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'


----DEPARTURE BEFORE ARRIVAL
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 8:00AM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 7:00AM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 8:01AM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '9/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'



----ISSUE DATE BEFORE EXPIR

----ISSUE DATE BEFORE EXPIRY DATE AND LESS THAN/GREATER THAN GETDATE()
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2016', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2006', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, getdate(), '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/05/2022', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', getdate(), 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '08/05/2022', 'UK'



----PASSPORT IS VALID: <16 = 5 YEARS, >16 = 10 YEARS, ARRIVAL = DEPARTURE, ARRIVAL = NATIONALITY
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2015', '10/09/2026', 'USA'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'USA', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2015', '10/09/2026', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '09/05/2022', 'USA'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2027', 'UK'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2015', '10/09/2021', 'UK'

----ONE SEAT PER PASSENGER PER FLIGHT
--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'
--union select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2015', '10/09/2026', 'USA'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'
--union select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Majore', '31/12/2000', '22 Queens Road', 175478100, '10/09/2015', '10/09/2026', 'USA'

--insert FlyAir(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DepartureTime, ArrivalTime, PassengerFirstName, PassengerLastName, PassengerDOB, PassengerAddress, PassportNumber, IssueDate, ExpiryDate, Nationality)
--select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 175478100, '10/09/2016', '10/09/2026', 'UK'
--union select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '10/12/2021 12:00PM', 'John', 'Major', '30/12/2000', '22 Queens Road', 175478100, '10/09/2015', '10/09/2026', 'USA'



select * from FlyAir



