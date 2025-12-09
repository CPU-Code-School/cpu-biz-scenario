use IdfDB
go
drop table if exists Soldier
go
create table dbo.Soldier(
	SoldierID int not null identity primary key,
	FirstName varchar(25) not null
		constraint c_Soldier_first_name_cannot_be_blank check(FirstName <> ''),
	LastName varchar(25) not null
		constraint c_Soldier_last_name_cannot_be_blank check(LastName <> ''),
	SSN char(10) not null
		constraint u_Soldier_SSN_must_be_unique unique(SSN),
		constraint c_Soldier_SSN_must_be_8_digits_dash_1_digit check(SSN like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]'),
	DateOfBirth date not null,
	Residence varchar(25) not null
		constraint c_Soldier_residence_cannot_be_blank check(Residence <> ''),
	DateEnlisted date not null
		constraint c_Soldier_date_enlisted_must_be_between_May_26_1948_and_current_date check (DateEnlisted between '26/5/1948' and convert(date,getdate())),
	ServiceUnit varchar(12) not null 
		constraint c_Soldier_service_unit_must_be_Navy_or_Land_or_Air check(ServiceUnit in ('Navy','Ground Force','Air Force')),
	UnitRank varchar(30) not null
		constraint c_Soldier_unit_rank_cannot_be_blank check(UnitRank <> ''),
	IQ tinyint
		constraint c_Soldier_IQ_must_be_greater_than_zero check(IQ > 0),
			constraint c_Soldier_age_cannot_be_less_than_17 check(datediff(year,DateOfBirth,DateEnlisted) >= 17)
)
