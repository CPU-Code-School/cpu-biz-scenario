use FlyAirDB
go
drop table if exists FlightInfo
go 
create table dbo.FlightInfo (
    FlightInfoID int primary key not null identity,
    FlightNum char(6) not null 
        Constraint ck_FlightInfo_FlightNum_must_be_6_characters_start_with_FLY_and_contain_3_num_starting_from_001
        check(FlightNum like 'FLY[0-9][0-9][0-9]' and FlightNum not like 'fly000' ), 
    DepartureAirport char(3) not null constraint ck_FlightInfo_DepartureAirport_cannot_contain_spaces check(DepartureAirport not like '% %'), 
    DepartureCountry varchar(25) not null constraint ck_FlightInfo_DepartureCountry_cannot_be_blank check(DepartureCountry > ''), 
    ArrivalAirport char(3) not null constraint ck_FlightInfo_ArrivalAirport_cannot_contain_spaces check(ArrivalAirport not like '% %'), 
    ArrivingCountry varchar(25) not null constraint ck_FlightInfo_ArrivingCountry_cannot_be_blank check(ArrivingCountry > ''), 
    DepartingDateTime datetime not null constraint ck_FlightInfo_DepartingDateTime_cannot_be_more_then_a_year_from_today
        check(datediff(day,getdate(),DepartingDateTime) < 365),  
        --Should probably add constraint that it shouldnt be in the pass, but it would conflict with sample data.
    ArrivingDateTime datetime not null, 
    FirstName varchar(30) not null constraint ck_FlightInfo_FirstName_cannot_be_blank check(FirstName > ''), 
    LastName varchar(30) not null constraint ck_FlightInfo_LastName_cannot_be_blank check(LastName > ''), 
    DOB date not null, 
    PassAddress varchar(150) not null constraint ck_FlightInfo_Address_cannot_be_blank check(PassAddress > ''), 
    CheckedIn bit not null default 0, 
    PassportNum char(9) null constraint ck_FlightInfo_PassportNum_must_be_9_num_and_not_start_with_0 check(PassportNum like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),    
    IssueDate date null,
    ExpiryDate date null, 
    Nationality varchar(30) null constraint ck_FlightInfo_Nationality_cannot_be_blank check(Nationality > ''),
    constraint ck_FlightInfo_CheckedIn_can_only_occur_30_days_from_departure
        check((datediff(day,getdate(),DepartingDateTime) > 30 and CheckedIn = 0) or datediff(day,getdate(),DepartingDateTime) < 30),
    constraint ck_FlightInfo_ArrivalDateTime_must_be_after_depaurturedatetime_and_less_then_3_days_later
        check(ArrivingDateTime between DepartingDateTime and DepartingDateTime + 3), 
    constraint ck_FlightInfo_DOB_must_be_between_16_and_90_by_departure_date 
        check(format(dateadd(day,DATEDIFF(day,DOB,DepartingDateTime),0),'yy') < 90 and datediff(year,DOB,DepartingDateTime) >= 16),
        constraint ck_FlightInfo_IssueDate_not_valid check(IssueDate < ExpiryDate and IssueDate >= DOB),
        constraint ck_FlightInfo_ExpiryDate_not_valid_for_travel 
        check(((DepartureCountry = ArrivingCountry or Nationality = ArrivingCountry) and ExpiryDate >= ArrivingDateTime) 
            or datediff(day,ArrivingDateTime,IssueDate) < 3470),
    constraint u_PassportNum_can_only_have_one_seat_on_flight unique(PassportNum,FlightNum,DepartingDatetime,FirstName,LastName),
    constraint ck_FlightInfo_PassportNum_and_all_passport_info_must_be_null_or_not_null 
        check((PassportNum is null and IssueDate is null and ExpiryDate is null and Nationality is null) 
        or (PassportNum is not null and IssueDate is not null and ExpiryDate is not null and Nationality is not null)),
    constraint ck_FlightInfo_CheckedIn_can_only_occur_if_passport_info_is_valid
        check((PassportNum is null and CheckedIn = 0) or PassportNum is not null)
       
)



