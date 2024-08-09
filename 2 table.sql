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
		constraint ck_Passenger_TimeDeparting_cannot_be_more_than_one_year_after_current_date check (TimeDeparting <= dateadd(year, 1, getdate())),
		--I would add that it cannot be a past date, but the sample data is old
	TimeArriving datetime not null,
	PassengerFirstName varchar(30) not null
		constraint ck_Passenger_PassengerFirstName_cannot_be_blank check (PassengerFirstName > ''),
	PassengerLastName varchar(30) not null 
		constraint ck_Passenger_PassengerLastName_cannot_be_blank check (PassengerLastName > ''),
	PassengerDateOfBirth date not null, 
	PassengerAddress varchar(150) not null 
		constraint ck_Passenger_PassengerAddress_cannot_be_blank check (PassengerAddress > ''),
	PassportNumber char(9) null
		constraint ck_PassportNumber_must_be_9_numbers_or_null check (PassportNumber like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	PassportIssueDate date null,
	PassportExpiryDate date null, 
	Nationality varchar(30) null,
	--Is there a point in preventing blanks if I allow nulls?
	constraint u_Passenger_PassengerFirstName_PassengerLastName_PassengerDateOfBirth_PassengerAdress_and_FlightNumber_must_be_unique 
		unique (PassengerFirstName, PassengerLastName, PassengerDateOfBirth, PassengerAddress, FlightNumber),
	constraint ck_Passenger_TimeArriving_must_be_greater_than_TimeDeparting 
		check (TimeArriving > TimeDeparting),
	constraint ck_Passport_Passport_Information_must_be_all_null_or_all_entered 
		check ((PassportNumber is null and PassportIssueDate is null and PassportExpiryDate is null and Nationality is null) or (PassportNumber is not null and PassportIssueDate is not null and PassportExpiryDate is not null and Nationality is not null)),
		--if I allow blanks for passport info, do I have to add a constraint so that everything is null or blank or everything is entered?
		--or is it enough to just have a constraint that allows all null or all not null?
	constraint ck_Passport_DepartureAirport_cannot_be_the_same_as_ArrivalAirport 
		check (DepartureAirport <> ArrivalAirport),
	constraint ck_Passenger_Passenger_age_must_be_beween_16_and_90 
		check (datediff (year, PassengerDateOfBirth, TimeDeparting) between 16 and 90),
	constraint ck_Passenger_PassportIssueDate_cannot_be_before_of_valid_time_frame
		check 
			(
				(	
					(datediff(year, PassengerDateOfBirth, PassportIssueDate) >= 16)
					and
					(
						(ArrivalCountry not in (DepartureCountry, Nationality)
						and TimeDeparting < dateadd(year, 9, dateadd(month, 6,PassportIssueDate)))
						or
						ArrivalCountry in (DepartureCountry, Nationality) 
					)
				)
				or 
				(
					datediff(year, PassengerDateOfBirth, PassportIssueDate) < 16 
					and  TimeDeparting < dateadd(year, 5, PassportIssueDate)
						
				)
			),
	constraint ck_Passenger_PassportIssueDate_must_be_between_PassengerDateOfBirth_and_TimeDeparting check ((PassportIssueDate between PassengerDateOfBirth and TimeDeparting) or PassportIssueDate = ''),
	constraint ck_Passport_cannot_be_expired check (TimeDeparting < PassportExpiryDate)
 
 )	

