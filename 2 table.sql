use airlineDB
go 
drop table if exists dbo.Passenger
go 
create table dbo.Passenger(
	PassengerID int not null identity primary key,
	FlightNumber  char(6) not null 
		constraint ck_Passenger_FlightNumber_must_be_FLY_followed_by_3_numbers_starting_at_001 check (FlightNumber like 'FLY[0-9][0-9][0-9]' and FlightNumber not like 'FLY000'),
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
	Nationality varchar(30) null
		constraint ck_Passenger_Nationality_cannot_be_blank check (Nationality > ''),
	--Is there a point in preventing blanks if I allow nulls?
	constraint u_Passenger_PassengerFirstName_PassengerLastName_PassengerDateOfBirth_PassengerAdress_and_FlightNumber_must_be_unique 
		unique (PassengerFirstName, PassengerLastName, PassengerDateOfBirth, PassengerAddress, FlightNumber),
	constraint ck_Passenger_TimeArriving_must_be_greater_than_TimeDeparting 
		check (TimeArriving > TimeDeparting),
	constraint ck_Passport_Passport_Information_must_be_all_null_or_all_entered 
		check ((PassportNumber is null and PassportIssueDate is null and PassportExpiryDate is null and Nationality is null) or (PassportNumber is not null and PassportIssueDate is not null and PassportExpiryDate is not null and Nationality is not null)),
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
						TimeDeparting < dateadd(year, 9, dateadd(month, 6,PassportIssueDate))
						or
						ArrivalCountry in (DepartureCountry, Nationality) 
					)
				)
				or 
				(TimeDeparting < dateadd(year, 5, PassportIssueDate))
 
			),
	constraint ck_Passenger_PassportIssueDate_must_be_between_PassengerDateOfBirth_and_TimeDeparting check ((PassportIssueDate between PassengerDateOfBirth and TimeDeparting)),
	constraint ck_Passport_cannot_be_expired check (TimeDeparting < PassportExpiryDate)
 
 )	

