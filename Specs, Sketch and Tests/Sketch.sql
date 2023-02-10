/*
dbo.Flights
    FlightsID
    Flight number char(6) not null [must be fly000], 
    Departure Airport char(3) not null not like % %, 
    Country Departing varchar(25) not null, 
    Arrival Airport char(3) not null not like % %, 
    Country Arriving varchar(25) not null, 
    DateTime Departing not null not more then year from current date, 
    DateTime Arriving not null must be after departing within 35 hours from depart, 
    FirstName varchar(35) not null, 
    LastName varchar(35) not null, 
    DOB date (dd/mm/yyyy) not null, 
    Address varchar(150) not null, 
    CheckedIn bit can only be yes if less then 30 days from departing and has passport info, 
   (Passport number null 9digit not 0 start, 
    Issue date null,
    Expiry date null, 
    Nationality null) if provided

Constraint
Name and flight num unique
DOB must be between 16 and 90 by departure date
If country departing and arrival = or Nationality and arrival =, then passport valid on day of travel, else if issued before 16 must be less then 5 years at travel, above 16 9.5 years

*/
