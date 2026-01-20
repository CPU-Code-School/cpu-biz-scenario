

use AirlineDB
go 

--set dateformat dmy
--go

drop table if exists dbo.FlyAir 
go
create table dbo.FlyAir(
    FlyAirId int not null identity primary key, 
    FlightNumber char(6) not null 
        constraint c_FlyAir_flight_number_must_start_with_FLY_and_then_3_digits check(FlightNumber like 'FLY%' and FlightNumber like '%[0-9][0-9][1-9]'),
    DepartureAirport varchar(20) not null 
        constraint c_FlyAir_departure_airport_cannot_be_blank check(DepartureAirport > ''), 
    DepartureCountry varchar(30) not null 
        constraint c_FlyAir_departure_country_cannot_be_blank check(DepartureCountry > ''), 
    ArrivalAirport varchar(20) not null 
        constraint c_FlyAir_arrival_airport_cannot_be_blank check(ArrivalAirport > ''), 
    ArrivalCountry varchar(30) not null 
        constraint c_FlyAir_arrival_country_cannot_be_blank check(ArrivalCountry > ''), 
    DepartureTime datetime not null 
        constraint c_FlyAir_departure_time_cannot_be_blank check(DepartureTime > ''), 
    ArrivalTime datetime not null 
        constraint c_FlyAir_arrival_time_cannot_be_blank check(ArrivalTime > ''), 
    PassengerFirstName varchar(30) not null 
        constraint c_FlyAir_first_name_cannot_be_blank check(PassengerFirstName > ''), 
    PassengerLastName varchar(30) not null 
        constraint c_FlyAir_last_name_cannot_be_blank check(PassengerLastName > ''), 
    PassengerDOB date not null 
        constraint c_FlyAir_passenger_DOB_must_be_16_and_90_years_before_current_date check(datediff(year, PassengerDOB, getdate()) >= 16 and datediff(year, PassengerDOB, getdate()) <= 90), 
    PassengerAddress varchar(50) not null 
        constraint c_FlyAir_passenger_address_cannot_be_blank check(PassengerAddress > ''), 
    PassportNumber int null 
        constraint c_FlyAir_passport_number_must_be_9_digits_and_must_not_begin_with_0 check(PassportNumber not like '0%'and len(PassportNumber) = 9),--like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), 
    IssueDate date null 
        constraint c_FlyAir_issue_date_cannot_be_in_the_future check(IssueDate < getdate()), 
    ExpiryDate date null 
        constraint c_FlyAir_expiry_date_must_be_in_the_future check(ExpiryDate > getdate()),
    Nationality varchar(20) null 
        constraint c_FlyAir_nationality_cannot_be_blank check(Nationality > ''),
    constraint c_FlyAir_departure_time_must_be_before_arrival_time check(DepartureTime < ArrivalTime),
    constraint c_FlyAir_departure_airport_cannot_be_the_same_as_the_arrival_airport check(DepartureAirport not like ArrivalAirport),
    constraint c_FlyAir_issue_date_must_be_before_expiry_date check(IssueDate < ExpiryDate),
    constraint c_FlyAir_issue_and_expiry_dates_follow_the_rules check(
        (ArrivalCountry = DepartureCountry) or
        (ArrivalCountry = Nationality) or
        (datediff(year, PassengerDOB, IssueDate) <= 16 and
           datediff(year, IssueDate, ExpiryDate) <= 5 and
           ExpiryDate > getdate()) or
        (datediff(year, PassengerDOB, IssueDate) >= 16 and
           datediff(year, IssueDate, ExpiryDate) <= 10 and
           ExpiryDate > getdate())
           ), 
    constraint c_FlyAir_only_one_seat_per_passenger_per_flight unique(FlightNumber, PassengerFirstName, PassengerLastName, PassengerDOB, DepartureTime)
)


alter table FlyAir
drop column if exists PassengerStatus
go 
alter table FlyAir
add PassengerStatus 
   as 
    case 
      when PassportNumber is not null and 
           IssueDate is not null and 
           ExpiryDate is not null and 
           Nationality is not null then 'Checked In' 
      else 'Booked' 
   end





      
    
