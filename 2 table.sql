/*
Flight number, Departure Airport, Country, Arrival Airport, Country, Time Departing, 
Time Arriving, Name, DOB (dd/mm/yyyy), Address, (Passport number, Issue date, Expiry date, Nationality) if provided



use airlineDB
go 
drop table if exists dbo.Passenger
go 
create table dbo.Passenger(
	PassengerID int not null identity primary key,
	FlightNumber char(6) constraint flightnumber must be FLY[0-9][0-9][1-9]
	DepartureAirport char(3) not null must be [a-z][a-z][a-z]
	DepartureCountry varchar(30) not null not blank
	ArrivalAirport char(3) not null must be [a-z][a-z][a-z]
	ArrivalCountry varchar(30) not null not blank
	TimeDeparting can't be more than one year past current date
	TimeArriving 
	PassengerFirstName varchar(30) not null not blank
	PassengerLastName varchar(30) not null not blank
	PassengerDateOfBirth date not null 16-90
	PassengerAddress varchar(150) not null not blank
	PassportNumber char(9) not null default " must be  [1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] unique- test if could enter null
	PassportIssueDate date not null default " when international and to passports country, can't be more than 9 yrs and 6 mo old 
		when age < 16, can't be more than 5 years old
	PassportExpiryDate date not null default " 
	Nationality not null default "
	multi- column constraints
		name, dob, address and flight # must be unique
		time arriving must be greater than time departing
		passport info must be all entered or all blank
)

*/

use airlineDB
go 
drop table if exists dbo.Passenger
go 
create table dbo.Passenger(
	PassengerID int not null identity primary key,
	FlightNumber  char(6) not null 
		constraint ck_Passenger_FlightNumber_must_be_FLY_followed_by_3_numbers check (FlightNumber like 'FLY[0-9][0-9][1-9]'),
	DepartureAirport char(3) not null 
		constraint ck_Passenger_DepartureAirport_must_be_3_letters check (DepartureAirport like '[a-z][a-z][a-z]'),
	DepartureCountry varchar(30) not null 
		constraint ck_Passenger_DepartureCountry_cannot_be_blank check (DepartureCountry > ''),
	ArrivalAirport char(3) not null
		constraint ck_Passenger_ArrivalAirport_must_be_3_letters check (ArrivalAirport like '[a-z][a-z][a-z]'),
	ArrivalCountry varchar(30) not null
		constraint ck_Passenger_ArrivalCountry_cannot_be_blank check (ArrivalCountry > ''),
	TimeDeparting datetime not null
		constraint ck_Passenger_TimeDeparting_cannot_be_more_than_one_year_past_current_date check (getdate() - TimeDeparting <= 00/00/0001),
	TimeArriving datetime not null,
	PassengerFirstName varchar(30) not null
		constraint ck_Passenger_PassengerFirstName_cannot_be_blank check (PassengerFirstName > ''),
	PassengerLastName varchar(30) not null 
		constraint ck_Passenger_PassengerLastName_cannot_be_blank check (PassengerLastName > ''),
	PassengerDateOfBirth date not null, 
	PassengerAddress varchar(150) not null 
		constraint ck_Passenger_PassengerAddress_cannot_be_blank check (PassengerAddress > ''),
	PassportNumber char(9) not null
		constraint ck_PassportNumber_must_be_9_numbers check (PassportNumber like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
		constraint u_Passenger_PassportNumber_must_be_unique unique
		default '',
	PassportIssueDate date not null 
		default '',
	PassportExpiryDate date not null 
		default '', 
	Nationality varchar(30) not null 
		default '',
	constraint u_Passenger_PassengerFirstName_PassengerLastName_PassengerDateOfBirth_PassengerAddress_and_FlightNumber_must_be_unique 
		unique (PassengerFirstName, PassengerLastName, PassengerDateOfBirth, PassengerAddress, FlightNumber),
	constraint ck_Passenger_TimeArriving_must_be_greater_than_TimeDeparting 
		check (TimeArriving > TimeDeparting),
	constraint ck_Passport_Passport_Information_must_be_all_blank_or_all_entered 
		check ((PassportNumber = '' and PassportIssueDate = '' and PassportExpiryDate = '' and Nationality = '') or (PassportNumber > '' and PassportIssueDate > '' and PassportExpiryDate > '' and Nationality > '')),
	constraint ck_Passport_DepartureAirport_cannot_be_the_same_as_ArrivalAirport 
		check (DepartureAirport <> ArrivalAirport),
	constraint ck_Passenger_Passenger_age_must_be_beween_16_and_90 
		check (datediff (year, PassengerDateOfBirth, TimeDeparting) between 16 and 19),
	constraint ck_Passenger__IssueDate_cannot_be_more_than_9_years_and_6_months_before_flight
		check 
			(
			(ArrivalCountry not in (DepartureCountry, Nationality) and datediff(year, PassengerDateOfBirth, TimeDeparting) < 16 and TimeDeparting < dateadd(year, 9, dateadd(month, 6,PassportIssueDate)))
			or (ArrivalCountry not in (DepartureCountry, Nationality) and datediff(year, PassengerDateOfBirth, TimeDeparting) >= 16 and TimeDeparting < dateadd(year, 5, PassportIssueDate))
			or (ArrivalCountry in (DepartureCountry, Nationality) and datediff(year, PassengerDateOfBirth, TimeDeparting) >= 16 and TimeDeparting < PassportExpiryDate)
			),
	constraint ck_Passenger_PassportIssueDate_must_be_between_PassengerDateOfBirth_and_PassportExpiryDate check (PassportIssueDate between PassengerDateOfBirth and PassportExpiryDate)
 
 )	

