use FlyAirDB
go
drop table if exists Booking
go 
create table dbo.Booking(
    BokkingId int not null identity primary key,
    FlightNum char(6) not null 
        constraint ck_Booking_flight_number_must_start_with_Fly_then_fllowed_by_3_numbers check(FlightNum like 'Fly[0-9][0-9][0-9]'),
    DepartureAirport char(3) not null
        constraint ck_Booking_departure_airport_must_be_3_letters check(DepartureAirport like '[a-z][a-z][a-z]'),
    DepartureCountry varchar(25) not null
        constraint ck_Booking_departure_country_cannot_be_blank check(DepartureCountry <> ''),
    DepartureTime datetime not null,
    ArrivalAirport char(3) not null
        constraint ck_Booking_arrival_airport_must_be_3_letters check(ArrivalAirport like '[a-z][a-z][a-z]'),
    ArrivalCountry varchar(25) not null
        constraint ck_Booking_arrival_country_cannot_be_blank check(ArrivalCountry <> ''),
    ArrivalTime datetime not null,
    PassengerName varchar(50) not null
        constraint ck_Booking_passenger_name_cannot_be_blank check(PassengerName <> ''),
    PassengerDOB date not null,
    PassengerAddress varchar(100) not null
        constraint ck_Booking_passenger_address_cannot_be_blank check(PassengerAddress <> ''),
    BookedDate date null,
    PassportNum int null 
        constraint ck_Booking_passport_num_must_be_9_numbers check(len(PassportNum) = 9),
        constraint ck_Booking_passport_num_cannot_start_with_0 check(PassportNum not like '0%'),
		constraint ck_Booking_passport_num_cannot_be_negative check(PassportNum > 0),
    PassportIssueDate date null,
    PassportExpiryDate as case 
        when PassportIssueDate >= dateadd(year, 16, PassengerDOB) then dateadd(year, 9, dateadd(month, 6, PassportIssueDate))
        else dateadd(year, 5, PassportIssueDate)
    end persisted,
    PassportNationality varchar(25) not null,
    CheckedInTime datetime null,
    
    -- Date constraints
	constraint ck_Booking_passport_issue_date_cannot_be_before_passenger_dob check(PassengerDOB <= PassportIssueDate),
	constraint ck_Booking_passport_booked_date_cannot_be_before_passport_issue_date check(PassportIssueDate <= BookedDate),
    constraint ck_Booking_passenger_age_must_be_between_16_and_90 
		check(DepartureTime between dateadd(year, 16, PassengerDOB) and dateadd(year, 90, PassengerDOB)),
    constraint ck_Booking_booked_date_must_be_between_1_year_and_1_hour_before_departure_time 
		check(CheckedInTime between dateadd(year, -1, DepartureTime) and dateadd(hour, -1, DepartureTime)),
    constraint ck_Booking_checked_in_time_must_be_between_30_days_and_1_hour_before_departure_time 
		check(CheckedInTime between dateadd(day, -30, DepartureTime) and dateadd(hour, -1, DepartureTime)),
    constraint ck_Booking_arrival_time_must_be_after_departure_time check(ArrivalTime > DepartureTime),
	constraint ck_passport_is_or_will_be_expired_on_departure_date
		check(PassportExpiryDate > DepartureTime or ArrivalCountry in (DepartureCountry, PassportNationality)),
    
	--All or non constraints
	constraint ck_Booking_passport_num_passport_issue_date_passport_nationality_and_checked_in_time_must_all_either_be_completed_or_null
        check((PassportNum is null and PassportIssueDate is null and PassportNationality = '' and CheckedInTime is null)
        or (PassportNum is not null and PassportIssueDate is not null and PassportNationality <> '' and CheckedInTime is not null)),

	--Unique Constraints
    constraint u_Booking_one_passenger_cannot_book_2_tickets_on_the_same_flight unique (FlightNum, PassengerName, PassengerDOB, PassengerAddress),
    
)