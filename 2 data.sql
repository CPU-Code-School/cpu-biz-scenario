use FlyAirDB
go 
delete Flyair 
go 

set dateformat dmy
insert Flyair (FlightNumber, DepartureAirport, DepartureCountry, ArrivalAirport, ArrivalCountry, DateDeparting, TimeDeparting, DateArriving, TimeArriving, PassengerFirstName, PassengerLastName, DOB, PassengerAdress, PassportNumber, PassportIssueDate, PassportExpiryDate, Nationality)

select          'FLY001', 'LHR', 'UK', 'JFK', 'USA',    '10/12/2021' ,'8:00', '10/12/2021' ,'12:00', 'John' , 'Major', '31/12/2000', '22 Queens Road', '175478100', '10/09/2016', '10/09/2026', 'UK'
union select    'FLY002', 'JFK', 'USA', 'LHR', 'UK',    '31/12/2021' , '15:00', '01/01/2022' , '14:30', 'John' , 'Major', '31/12/2000', '22 Queens Road', null , null , null, null
union select    'FLY001', 'LHR', 'UK', 'JFK', 'USA',    '12/01/2020' , '8:00', '12/01/2020' , '12:00', 'Jill' , 'Johnson', '12/03/1997', '10 Downing Street', '367654998', '30/01/2019', '25/03/2029', 'USA'
union select    'FLY003', 'LGW', 'UK', 'TLV', 'Israel', '20/01/2022' , '19:55', '21/01/2022' , '3:00', 'Mike' , 'Markowicz', '09/12/1970', '45 Baker Street' , null , null , null, null
union select    'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '09/10/2020' , '6:40', '09/10/2020' , '9:30', 'Nick' , 'Smith', '27/03/1998', '29 London Avenue' , null , null , null, null
--SH bad data. John Smith is under 16. According to the spec all passenger must be above 16.   
--union select    'FLY004', 'TLV', 'Israel', 'LGW', 'UK', '09/10/2020' , '6:40', '09/10/2020' , '9:30', 'John' , 'Smith', '20/10/2004', '29 London Avenue', '209989911', '10/09/2018', '10/09/2023', 'UK'
union select    'FLY101', 'EWR', 'USA', 'TLV', 'Israel', '05/01/2021' , '9:00', '06/01/2021' , '2:30', 'Jack' , 'Marks', '27/03/1995', '12 Ross Street' , null , null , null, null
--SH I added the following two to check if my codes in the reports is actually correct. 
union select    'FLY102', 'FRA', 'DE', 'TLV', 'Israel', '05/01/2021' , '9:20', '06/01/2021' , '2:30', 'Jack' , 'Frenkel', '27/03/1992', '11 Ross Street' , null , null , null, null
union select    'FLY102', 'FRA', 'DE', 'TLV', 'Israel', '05/01/2021' , '9:20', '06/01/2021' , '2:30', 'Abraham' , 'Lincoln', '27/03/1995', '10 Ross Street' , null , null , null, null



select *
from flyair

