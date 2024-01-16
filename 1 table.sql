use ArmyDB
go
drop table if exists Soldier
go
create table dbo.Soldier(
	SoldierFirstName varchar(30) not null constraint c_Soldier_first_name_cannot_be_blank check(SoldierFirstName<>''),
	SoldierLastName varchar(30) not null constraint c_Soldier_last_name_cannot_be_blank check(SoldierLastName<>''),
	SSN char(10) not null,
	DOB date not null constraint ck_Army_Soldier_DOB_must_be_at_least_17_years_ago check(datediff(year,DOB,getdate()) >= 17),
	Residence varchar(25) not null constraint c_Soldier_Residence_cannot_be_blank check(Residence<>''),
	EnlistmentDate date,
	ServiceUnit varchar(4) not null constraint ck_ServiceUnit_must_be_either_Navy_Land_or_Air check(ServiceUnit in('Air', 'Land', 'Navy')),
	UnitRank varchar(30) not null,
	IQ int not null
)