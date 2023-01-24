use ArmyDB
go
drop table if exists dbo.Soldier
go
create table dbo.Soldier(
    SoldierID int not null identity primary key,
    FirstName varchar(25) not null constraint ck_Soldier_first_name_cannot_be_blank check(FirstName <> ''),
    LastName varchar(25) not null constraint ck_Soldier_last_name_cannot_be_blank check(LastName <> ''),
    SSN char(10) not null constraint ck_Soldier_SSN_cannot_exceed_10_digits_and_cannot_have_letters check(SSN like ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]')),
    DOB date not null,
    PlaceOfResidence varchar(40) not null constraint ck_Soldier_place_of_residence_cannot_be_blank check(PlaceOfResidence <> ''),
    DateEnlisted date not null 
        constraint ck_Soldier_date_enlisted_cannot_be_a_future_date check(DateEnlisted <= getdate()),
    ServiceUnit varchar(15) not null 
        constraint ck_Soldier_service_unit_must_be_air_force_navy_or_ground_force check(ServiceUnit in('Air Force', 'Ground Force', 'Navy')),
    Rank varchar(90) not null constraint ck_Soldier_rank_cannot_be_blank check(Rank <> ''),
    IQLevel int not null constraint ck_Soldier_IQ_level_must_be_greater_than_0 check(IQLevel > 0),
    constraint ck_Soldier_must_be_at_least_17_when_enlisted check(datediff(year, DOB, DateEnlisted) >= 17) 
)
go