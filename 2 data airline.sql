use FlyAirDB
go 

delete Flight 

insert Flight (FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, TimeDeparting, TimeArriving, PassengerFirstName, PassengerLastName, DOB, PassengerAddress, PassportNumber, PassportIssueDate, PassportExpiryDate, PassportNationality)
select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '2021-12-10 8:00AM', '2021-12-10 12:00PM', 'John', 'Major', '2000-12-31', '22 Queens Road', '175478100', '2016-09-10', '2026-10-09', 'UK'
union select 'FLY002', 'JFK', 'USA', 'LHR', 'UK', '2021-12-31 3:00PM', '2022-01-01 2:30PM', 'John', 'Major', '2000-12-31', '22 Queens Road', null, null, null, null
union select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '2020-01-12 8:00AM', '2020-01-12 12:00PM', 'Jill', 'Johnson', '1997-03-12', '10 Downing Street', '367654998', '2019-01-30', '2029-03-25', 'USA'
union select 'FLY003', 'LGW', 'UK', 'TLV', 'Israel', '2022-01-20 7:55PM', '2022-01-21 3:00AM', 'Mike', 'Markowicz', '1970-12-09', '45 Baker Street', null, null, null, null
union select 'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '2020-10-09 6:40AM', '2020-10-09 9:30AM', 'Nick', 'Smith', '1998-03-27', '29 London Avenue', null, null, null, null
union select 'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '2020-10-09 6:40AM', '2020-10-09 9:30AM', 'John', 'Smith', '2004-10-20', '29 London Avenue', '209989911', '2018-09-10', '2023-09-10', 'UK'
union select 'FLY101', 'EWR', 'USA', 'TLV', 'Israel', '2021-01-05 9:00AM', '2021-01-06 2:30AM', 'Jack', 'Marks', '1995-03-27', '12 Ross Street', null, null, null, null