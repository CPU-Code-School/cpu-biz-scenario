
use FlyAirDB
go 
delete Booking
go


insert Booking
    (FlightNum, DepartureAirport, DepartureCountry, DepartureTime, ArrivalAirport, ArrivalCountry, ArrivalTime,
    PassengerName, PassengerDOB, PassengerAddress, 
    PassportNum, PassportIssueDate, PassportNationality, BookedDate, CheckedInTime)
select 'Fly001', 'LHR', 'UK', '2023-08-17 07:58AM', 'JFK', 'USA', '2023-12-10 12:00PM', 
    'John Major', '2000-12-31', '22 Queens Road', 
    null, null, null, '2023-04-25', null

union select 'Fly001', 'LHR', 'UK', '2023-12-10 08:00AM', 'JFK', 'USA', '2023-12-10 12:00PM', 
    'Passenger Two', '1990-05-15', '23 Queens Road', 
    '175478101', '2017-09-11', 'UK', '2023-11-11', '2023-11-29'
union select 'Fly001', 'LHR', 'UK', '2023-12-10 08:00AM', 'JFK', 'USA', '2023-12-10 12:00PM', 
    'Passenger Four', '1987-02-19', '27 Queens Road', 
    '175478103', '2015-07-09', 'UK', '2023-09-10', '2023-12-10'
union select 'Fly001', 'LHR', 'UK', '2023-12-10 08:00AM', 'JFK', 'USA', '2023-12-10 12:00PM', 
    'Passenger Five', '1983-03-21', '29 Queens Road', 
    '175478104', '2019-06-08', 'UK', '2023-08-10', '2023-12-10'
union select 'Fly002', 'JFK', 'USA', '2023-12-31 03:00AM', 'LHR', 'UK', '2024-01-01 02:30AM', 
    'James Brown', '1985-12-31', '22 Liberty Road', 
    '275478100', '2016-09-11', 'UK', '2023-11-30', '2023-12-20'
union select 'Fly002', 'JFK', 'USA', '2023-12-31 03:00AM', 'LHR', 'UK', '2024-01-01 02:30AM', 
    'Passenger Six', '1995-03-30', '21 Liberty Road', 
    '275478105', '2015-09-12', 'UK', '2023-11-29', '2023-12-19'
union select 'Fly002', 'JFK', 'USA', '2023-12-31 03:00AM', 'LHR', 'UK', '2024-01-01 02:30AM', 
    'Passenger Seven', '1994-04-29', '23 Liberty Road', 
    '275478106', '2015-08-13', 'UK', '2023-11-28', '2023-12-18'
union select 'Fly002', 'JFK', 'USA', '2023-12-31 03:00AM', 'LHR', 'UK', '2024-01-01 02:30AM', 
    'Passenger Eight', '1993-05-28', '25 Liberty Road', 
    '275478107', '2015-07-14', 'UK', '2023-11-27', '2023-12-17'
union select 'Fly002', 'JFK', 'USA', '2023-12-31 03:00AM', 'LHR', 'UK', '2024-01-01 02:30AM', 
    'Passenger Nine', '1992-06-27', '27 Liberty Road', 
    '275478108', '2015-06-15', 'UK', '2023-11-26', '2023-12-16'
union select 'Fly003', 'LHR', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Jill Johnson', '1997-03-12', '10 Downing Street', 
    '367654998', '2019-01-30', 'USA', '2023-11-01', '2023-11-20'
union select 'Fly003', 'LHR', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Passenger Ten', '1996-07-14', '12 Downing Street', 
    '367654997', '2018-12-30', 'USA', '2023-10-31', '2023-11-19'
union select 'Fly003', 'LHR', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Passenger Eleven', '1995-08-16', '14 Downing Street', 
    null, null, null, '2023-09-30', null
union select 'Fly003', 'LHR', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Passenger Twelve', '1994-09-18', '16 Downing Street', 
    '367654995', '2018-10-28', 'USA', '2023-08-29', '2023-12-01'
union select 'Fly003', 'KUB', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Passenger Thirteen', '1993-10-20', '18 Downing Street', 
    '367654994', '2018-09-27', 'USA', '2023-07-28', '2023-12-01'
union select 'Fly003', 'LHR', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Passenger Fourteen', '1992-11-22', '20 Downing Street', 
    null, null, null, '2023-06-07', null
union select 'Fly003', 'LHR', 'UK', '2023-12-01 08:00AM', 'JFK', 'USA', '2023-12-01 12:00PM', 
    'Passenger Fifteen', '1991-12-24', '22 Downing Street', 
    '367654992', '2018-07-25', 'USA', '2023-05-26', '2023-12-01'
union select 'Fly001', 'LHR', 'UK', '2023-12-10 08:00AM', 'JFK', 'USA', '2023-12-10 12:00PM', 
    'Passenger Three', '1995-06-22', '25 Queens Road', 
    '175478102', '2016-08-10', 'UK', '2023-10-10', '2023-12-09'

go 
select * from booking
