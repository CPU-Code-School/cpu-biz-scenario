use ArmyRecordsDB
go 
drop table if exists dbo.Soldiers
go 
create table dbo.Soldiers(
    SoldiersID int not null identity primary key,
    SoldierLastName varchar(25) not null
        constraint c_Soldiers_soldier_last_name_cannot_be_blank check(SoldierLastName <> ''),
    SoldierFirstName varchar(25) not null
        constraint c_Soldiers_soldier_first_name_cannot_be_blank check(SoldierFirstName <> ''),
    SoldierSSN varchar(10) not null
		constraint c_Soldiers_soldier_SSN_must_be_correct_format check(SoldierSSN like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]')
        constraint u_Soldiers_soldier_SSN_ unique,
    SoldierDOB date not null
	constraint c_Soldiers_soldier_DOB_cannot_be_in_the_future check(SoldierDOB <= getdate()),
    SoldierResidence varchar(25) not null
        constraint c_Soldiers_soldier_residence_cannot_be_blank check(SoldierResidence <> ''),
    SoldierDateOfEnlistment date not null
        constraint c_Soldiers_soldier_date_of_enlistment_cannot_be_in_the_future check(SoldierDateOfEnlistment <= getdate()),
    ServiceUnit varchar(12) not null
        constraint c_Soldiers_service_unit_must_be_air_force_or_ground_force_or_navy check(ServiceUnit in ('Air Force', 'Ground Force', 'Navy')),
    SoldierRank varchar(25) not null 
        constraint c_Soldier_soldier_rank_cannot_be_blank check(SoldierRank <> ''),
    SoldierIQ int not null 
        constraint c_Soldiers_soldier_IQ_must_be_greater_than_zero check(SoldierIQ > 0),
    SoldierAgeAtEnlistment as datediff(year, SoldierDOB, SoldierDateOfEnlistment) persisted
		constraint c_Solders_soldier_age_at_enlistment_must_be_17_or_greater check (SoldierAgeAtEnlistment >= 17)
)
go