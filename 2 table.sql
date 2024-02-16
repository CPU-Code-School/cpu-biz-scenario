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
		constraint c_Soldiers_SSN_cannot_be_less_then_10_charactors_and_must_be_a_number check (len(SSN) = 10 and SSN between 000000001 and 999999999)
        constraint u_Soldiers_SSN unique,
	DOB date not null,
	PlaceOfResidence varchar(30), 
	DateOfEnlistment date not null,
	ServiceUnit varchar(30), 
	Rank varchar(50), 
	IQlevel tinyint,
)