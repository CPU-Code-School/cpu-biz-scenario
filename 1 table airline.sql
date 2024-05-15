use FlyAirDB
go 
drop table if exists Flight
go 
create table dbo.Flight(
    FlightId int not null identity primary key,
    FlightNumber char(6) not null constraint ck_Flight_flight_number_starts_with_fly_then_3_digits_starting_from_001 check(FlightNumber like 'FLY[0-9][0-9][1-9]'),
    DepartureAirport varchar(3) not null constraint ck_Flight_departure_airport_cannot_be_blank check(DepartureAirport <> ''),
    DepartureCountry varchar(25) not null constraint ck_Flight_departure_country_cannot_be_blank check(DepartureCountry <> ''),
    ArrivalAirport varchar(3) not null constraint ck_Flight_arrival_airport_cannot_be_blank check(ArrivalAirport <> ''),
    ArrivalCountry varchar(25) not null constraint ck_Flight_arrival_country_cannot_be_blank check(ArrivalCountry <> ''),
    TimeDeparting datetime not null,
    TimeArriving datetime not null,
    PassengerFirstName varchar(30) not null constraint ck_Flight_passenger_first_name_cannot_be_blank check(PassengerFirstName <> ''),
    PassengerLastName varchar(30) not null constraint ck_Flight_passenger_last_name_cannot_be_blank check(PassengerLastName <> ''),
    DOB date not null,
    PassengerAddress varchar(75) not null constraint ck_Flight_passenger_address_cannot_be_blank check(PassengerAddress <> ''),
    PassportNumber char(9) null constraint ck_Flight_passport_number_must_be_9_digits_and_start_with_any_digit_except_0 check(PassportNumber like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' or PassportNumber is null),
    PassportIssueDate date null constraint ck_Flight_passport_issue_date_is_before_the_current_date check(PassportIssueDate <= getdate(),
    PassportExpiryDate date null constraint ck_Flight_passport_expiry_date_must_be_in_the_future check(PassportExpiryDate > getdate(),
    PassportNationality varchar(25) null constraint ck_Flight_passport_nationality_cannot_be_blank check(PassportNationality <> ''),
    constraint ck_Flight_passport_number_and_issue_date_and_expiry_date_and_nationality_must_all_be_blank_or_all_have_a_value 
        check((PassportNumber = '' and PassportIssueDate = '' and PassportExpiryDate = '' and PassportNationality = '') or (PassportNumber <> '' and PassportIssueDate <> '' and PassportExpiryDate <> '' and PassportNationality <> '')),
    constraint u_Flight_flight_number_and_passenger_first_name_and_passenger_last_name_all_must_be_unique unique(FlightNumber, PassengerFirstName, PassengerLastName),
    constraint ck_Flight_time_departing_must_be_before_time_arriving check(TimeDeparting < TimeArriving),
    constraint ck_Flight_passport_expiry_date_is_10_years_after_passport_issue_date_for_those_that_are_sixteen_and_5_years_for_under_16
        check(datediff(year, DOB, PassportIssueDate) >= 16 and datediff(year, PassportIssueDate, PassportExpiryDate) <= 10
        or (datediff(year, DOB, PassportIssueDate) < 16 and datediff(year, PassportIssueDate, PassportExpiryDate) <= 5)),
    constraint ck_Flight_passenger_age_must_be_between_16_and_90 check(datediff(year, DOB, TimeDeparting) between 16 and 90),
    constraint ck_Flight_passport_cannot_be_used_to_fly check(((DepartureCountry = ArrivalCountry or PassportNationality = ArrivalCountry) and TimeDeparting <= PassportExpiryDate) 
        or ((DepartureCountry <> ArrivalCountry or PassportNationality <> ArrivalCountry) and datediff(month, TimeDeparting, PassportExpiryDate) > 5))
)
go 
