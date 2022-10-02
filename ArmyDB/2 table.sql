use ArmyDB
go 
drop table if exists dbo.Soldier
go 
create table dbo.Soldier 
(
    SoldeirId int not null identity primary key,
    FirstName varchar (30) not null
        constraint ck_Soldier_First_Name_cannot_be_blank check (FirstName <> ''),
    LastName varchar (30) not null
        constraint ck_Soldier_Last_Name_cannot_be_blank check (LastName <> ''),
    SSN varchar (10) not null
        constraint u_Soldier_SSN unique 
        constraint ck_Soldier_SSN_must_be_eight_digits_then_a_dash_and_then_one_digit check (SSN like ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]')),
    DateOfBirth date not null,
    PlaceOfResidence varchar (20) not null
        constraint ck_Soldier_Place_Of_Residence_cannot_be_blank check (PlaceOfResidence <> ''),
    DateOfEnlistment date not null,
    ServiceUnit varchar (12) not null
        constraint ck_Soldier_Service_Unit_can_only_be_Navy_or_Ground_force_or_Air_Force check (ServiceUnit in ('Navy', 'Ground Force', 'Air Force')),
    RankInUnit varchar (30) not null
        constraint ck_Soldier_Rank_In_Unit_cannot_be_blank check (RankInUnit <> ''),
    IQLevel int not null,
    constraint ck_Date_Of_Enlistment_must_be_seventeen_or_more_years_greater_than_DateOfBirth check (datediff(year, DateOfBirth, DateOfEnlistment) >= 17)
)

