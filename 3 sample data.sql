
 set dateformat dmy

 Use AirlineDB
 go
 delete Passenger
 go
 Insert passenger(FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, TimeDeparting, TimeArriving, PassengerFirstName, PassengerLastName, PassengerDateOfBirth, PassengerAddress, PassportNumber, PassportIssueDate, PassportExpiryDate, Nationality)
    select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '2021-12-10 8:00:00', '2021-12-10 12:00:00', 'John', 'Major', '2000-12-31', '22 Queens Road', '175478100', '2016-09-10', '2026-09-10', 'UK'
    union select 'FLY002', 'JFK', 'USA', 'LHR', 'UK', '31/12/2021 3:00PM', '01/01/2022 2:30PM', 'John', 'Major', '31/12/2000', '22 Queens Road', null, null, null,null
    union select 'FLY001', 'LHR', 'UK', 'JFK', 'USA', '12/01/2020 8:00AM', '12/01/2020 12:00PM', 'Jill', 'Johnson', '12/03/1997', '10 Downing Street', '367654998', '30/01/2019', '25/03/2029','USA'
    union select 'FLY003', 'LGW', 'UK', 'TLV', 'Israel', '20/01/2022 7:55PM', '21/01/2022 3:00AM', 'Mike', 'Markowicz', '09/12/1970', '45 Baker Street', null, null, null,null
    union select 'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '09/10/2020 6:40AM', '09/10/2020 9:30AM', 'Nick', 'Smith', '27/03/1998', '29 London Avenue', null, null, null,null
    union select 'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '09/10/2020 6:40AM', '09/10/2020 9:30AM', 'John', 'Smith', '20/10/2004', '29 London Avenue', '209989911', '10/09/2018', '10/09/2023', 'UK'
    union select 'FLY101', 'EWR', 'USA', 'TLV', 'Israel', '05/01/2021 9:00AM', '06/01/2021 2:30AM', 'Jack', 'Marks', '27/03/1995', '12 Ross Street',  null, null, null,null



select * from Passenger p