use ArmyDB 
go 
drop table if exists Soldiers 
go 

create table dbo.Soldiers (
    SoldierID int not null identity primary key,
    FirstName varchar (30) not null constraint first_name_cannot_be_blank check (FirstName <> ''),
    LastName  varchar (30) not null constraint last_name_cannot_be_blank check (LastName <> ''),
    SSN char (10) not null constraint ck_ssn_10_characters check (len (SSN) = 10)
        constraint u_SSN_must_be_Unique unique,
    DOB date not null ,
    DateOfEnlistment date not null constraint ck_cannot_be_future_date check (DateOfEnlistment < = GETDATE() ),
    YearRange as case  when year(dateOfEnlistment) in (2017, 2018, 2019) then '2017-2019'
    when year(dateOfEnlistment) in (2020,2021, 2022) then '2020-2022' 
    end  ,
    PlaceOfResidence varchar (50) not null constraint ck_POR_cannot_be_blank check (PlaceOfResidence <> ''),
    ServiceUnit varchar(20) not null constraint ck_serviceunit_navy_land_or_air check (ServiceUnit in ('Navy', 'Ground Force', 'Air Force')),
    SoldierRank varchar (50) not null constraint ck_soldier_rank_cannot_be_blank check (SoldierRank <> ''),
    IQLevel int not null constraint ck_IQ_cannot_be_negative check (IQLevel > 0),
    constraint  ck_Soldier_must_be_at_least_17 check (DATEDIFF (year, DOB, DateOfEnlistment)>=17)

)