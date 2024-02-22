use ArmyDB
go
drop table if exists Soldiers
go
create table dbo.Soldiers(
	SoldierID int not null identity primary key,
	SoldierFirstName varchar(30) not null
		constraint c_Soldiers_Soldier_First_Name_cannot_be_blank check (SoldierFirstName <> ''),
	SoldierLastName varchar(30) not null
		constraint c_Soldiers_Soldier_Last_Name_cannot_be_blank check (SoldierLastName <> ''),
	SSN char(10) not null
		constraint c_Soldiers_SSN_must_be_10_charactors_and_in_SSN_format check (substring(SSN, 1,8) between 1 and 99999999 and SSN like '________-[0-9]')
        constraint u_Soldiers_SSN unique,
	DOB date not null,
	PlaceOfResidence varchar(30) not null
		constraint c_Soldiers_Place_Of_Residence_cannot_be_blank check (PlaceOfResidence <> ''), 
	DateOfEnlistment date not null
		constraint c_Soldiers_DateOfEnlistment_cannot_be_in_the_future check(DateOfEnlistment <= getdate()),
	ServiceUnit varchar(30) not null
		constraint c_Soldiers_Service_Unit_must_be_either_ground_land_or_air 
		check (ServiceUnit like '%Air%' or ServiceUnit like '%Ground%' or ServiceUnit like'%Navy%'),
	UnitRank varchar(50) not null
		Constraint c_Soldiers_Unit_Rank_cannot_be_blank check (UnitRank <> ''), 
	IQlevel tinyint not null
		Constraint c_Soldiers_IQlevel_cannot_be_0 check (IQlevel > 0),
	constraint c_Soldiers_must_be_17_years_old check (datediff(year,DOB,DateOfEnlistment) >= 17)
)