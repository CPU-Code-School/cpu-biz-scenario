use FlyAirDB
go 
drop table if exists dbo.FlyAir
go 

create table dbo.FlyAir (
    FlyAirID            int not null identity primary key,
    FlightNumber        varchar (6) not null        constraint ck_Flight_number_must_start_with_FLY_followed_by_three_numbers check (FlightNumber like 'FLY[0-9][0-9][0-9]'),
    DepartureAirport    varchar (4) not null        constraint ck_Departure_Airport_must_be_between_3_and_4_letters check (len(DepartureAirport) between 3 and 4 and DepartureAirport not like '%[^A-Z]%'),
    DepartureCountry    varchar (25) not null       constraint ck_Departure_Country_cannot_be_blank check (DepartureCountry <> ''),
                                                    constraint ck_Departure_Country_may_only_contain_letters check(DepartureCountry not like '%[^A-Z]%'),
    ArrivalAirport      varchar (4) not null        constraint ck_Arrival_airport_must_be_between_3_and_4_letters check (len(ArrivalAirport) between 3 and 4 and ArrivalAirport not like '%[^A-Z]%'),
    ArrivalCountry      varchar (25) not null       constraint ck_Arrival_Country_cannot_be_blank check (ArrivalCountry <> ''),
                                                    constraint ck_Arrival_Country_may_only_contain_letters check(ArrivalCountry not like '%[^A-Z]%'),
    DateDeparting       date not null,
    TimeDeparting       time not null               constraint ck_Time_Departing_cannot_be_blank check (TimeDeparting <> ''),
    DateArriving        date not null,
    TimeArriving        time not null               constraint ck_Time_Arriving_cannot_be_blank check (TimeArriving <> ''),
    PassengerFirstName  varchar (30) not null       constraint ck_Passenger_first_name_cannot_be_blank check (PassengerFirstName <>''),
    PassengerLastName   varchar (30) not null       constraint ck_Passenger_last_name_cannot_be_blank check (PassengerLastName <>''),
    DOB                 date not null,
    PassengerAdress     varchar (50) not null       constraint ck_Passenger_Adress_cannot_be_blank check (PassengerAdress <>''),   
    PassportNumber      varchar (9)                 constraint ck_Passport_Number_must_caontain_exact_9_digits_not_strating_with_0 check (len(PassportNumber)= 9 and PassportNumber like '[1-9]%' ),
    PassportIssueDate   date,
    PassportExpiryDate  date,
    Nationality         varchar (30),               constraint ck_Nationality_may_only_contain_letters check(Nationality not like '%[^A-Z]%'), 
    CheckedIn as case when PassportNumber > '' then 1 else 0 end persisted,
                                                        constraint ck_Date_arriving_cannot_be_before_date_departing check (DateDeparting <= DateArriving),
                                                        constraint ck_Passenger_must_be_between_the_age_of_16_and_90 check (datediff(day, DOB , DateDeparting ) >= 5844 and datediff(day, DOB , DateDeparting ) < 32873),
                                                        constraint ck_Passport_issue_date_cannot_be_more_then_5_years_ago_if_passenger_is_under_16_or_more_then_10_years_for_all_other_passengers 
                                                                    check (  ((datediff(day, DOB , DateDeparting ) <= 5844) and (datediff(day, PassportIssueDate, DateDeparting) <= 1825)) 
                                                                        or ((datediff(day, DOB , DateDeparting ) > 5844) and (datediff(day, PassportIssueDate, DateDeparting) <= 3652))  ),
                                                        constraint ck_Passport_expiry_date_cannot_be_before_Issue_Date check (PassportExpiryDate > PassportIssueDate),
                                                        constraint ck_If_flight_is_international_and_arrival_country_is_not_passports_country_passport_must_be_valid_for_at_least_another_6_month 
                                                                    check 
                                                                    (   ((ArrivalCountry = DepartureCountry) or (ArrivalCountry = Nationality)) 
                                                                    or ((ArrivalCountry <> DepartureCountry) and (ArrivalCountry <> Nationality) and (datediff(day, DateArriving, PassportExpiryDate) > 180)) )
                                                                    ,
                                                        constraint ck_Passport_must_be_valid_upon_entry check (PassportExpiryDate >= DateArriving),
                                                        constraint u_Only_one_passenger_per_flight_allowed unique (FlightNumber, DateDeparting, PassengerFirstName, PassengerLastName ),
                                                        constraint ck_Booking_maximum_one_year_in_advance check (datediff(day, getdate(), DateDeparting ) <= 365),
                                                        constraint ck_Check_in_can_be_done_earliest_30_days_before_depature check ( (PassportNumber = '' or (PassportNumber <> '' and datediff(day, getdate(), DateDeparting ) <= 30)) )
                                                        
)








    /*


,   


Comments:
Constraint on DepartureAirport and ArrivalAirport was made according to quick google research that a airport code can only contain letters and is 3 or 4 charachters long.
To calculate the exact age of the passenger in number of days, for example to know how many days equal 16 years, I first made a datediff from two dates with a difference of exact 16 years.
Just doing a datefrompart(year) could result the wrong (with a variation from up to 364 days) Age.
Column CheckedIn is based on my understanding from the spec, that the passport details are only beeing put in once check in was done

*/


--PassportAmountDaysValidTillDepature as datediff(day, DateArriving, PassportExpiryDate),