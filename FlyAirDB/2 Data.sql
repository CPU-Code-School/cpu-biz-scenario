use FlyAirDB
go
delete FlightInfo
go
set dateformat dmy
go

insert FlightInfo (FlightNum, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivingCountry, DepartingDateTime, ArrivingDateTime, FirstName, LastName, DOB, PassAddress, CheckedIn, PassportNum, IssueDate, ExpiryDate, Nationality)
    select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '10/12/2021 8:00AM', '11/12/2021 12:00PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 1, 175478100, '10/09/2016', '10/09/2026', 'UK'
    union select 'FLY002', 'JFK', 'USA', 'LHR', 'UK', '31/12/2021 3:00PM', '01/01/2022 2:30PM', 'John', 'Major', '31/12/2000', '22 Queens Road', 0, null, null, null, null
    union select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '12/01/2020 8:00AM', '12/01/2020 12:00PM', 'Jill', 'Johnson', '12/03/1997', '10 Downing Street', 1, 367654998, '30/01/2019', '25/03/2029', 'USA'
    union select 'FLY003', 'LGW', 'UK', 'TLV', 'Israel', '20/01/2022 7:55PM', '21/01/2022 3:00AM', 'Mike', 'Markowicz', '09/12/1970', '45 Baker Street', 0, null, null, null, null
    union select 'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '09/10/2020 6:40AM', '09/10/2020 9:30AM', 'Nick', 'Smith', '27/03/1998', '29 London Avenue', 0, null, null, null, null
    union select 'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '09/10/2020 6:40AM', '09/10/2020 9:30AM', 'John', 'Smith', '20/10/2003', '29 London Avenue', 1, 209989911, '10/09/2018', '10/09/2023', 'UK' --changed dob
    union select 'FLY101', 'EWR', 'USA', 'TLV', 'Israel', '05/01/2021 9:00AM', '06/01/2021 2:30AM', 'Jack', 'Marks', '27/03/1995', '12 Ross Street', 0 , null, null, null, null

select * from FlightInfo