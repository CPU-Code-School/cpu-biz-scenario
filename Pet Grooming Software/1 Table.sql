use petgroomingdb
go
drop table if exists petGroomerData
go
create table dbo.petGroomerData(
	petGroomerDataId int not null identity primary key,
	firstName varchar(25) not null
		constraint ck_firstname_cannot_be_blank check(firstName <> ''),
	lastName varchar(25) not null
		constraint ck_lastname_cannot_be_blank check(lastName <> ''),
	customerAddress varchar(200) not null
		constraint ck_address_cannot_be_blank check(customerAddress <> ''),
	petType varchar(11) not null
		constraint ck_pettype_must_be_allowed check(petType in('dog', 'cat', 'rabbit', 'guinea pig')),
	petName varchar(25) not null
		constraint ck_petname_cannot_be_blank check(petName <> ''),
	pricePerGrooming decimal(5, 2) not null
		constraint ck_pricepergrooming_cannot_be_less_than_1 check(pricePerGrooming > 0),
	frequencyOfService varchar(9) not null
		constraint ck_frequencyOFService_can_only_be_weekly_or_byweekly check(frequencyOfService in('Weekly', 'BiWeekly')),
	datePickedUp date not null
		constraint ck_datepickedup_cannot_be_before_2019 check(datePickedUp >= '2019-01-01'),
	customerStatus varchar(8) not null
		constraint ck_customerstatus_can_only_be_active_or_inactive check(customerStatus in('active', 'inactive'))
		constraint d_defaults_to_active default 'active'
)