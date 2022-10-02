
--FirstName varchar (30) not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select null, 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--constraint ck_Soldier_First_Name_cannot_be_blank check (FirstName <> '')

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select '', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--LastName varchar (30) not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', null, '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--constraint ck_Soldier_Last_Name_cannot_be_blank check (LastName <> '')

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', '', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--SSN varchar (10) not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', null, '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--constraint u_Soldier_SSN unique 

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101
union select 'Ahron', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--constraint ck_Soldier_SSN_must_be_eight_digits_then_a_dash_and_then_one_digit check (SSN like ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]-[0-9]'))

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '5487777-32', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '548777732-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '5487777-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--DateOfBirth date not null,

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', null, 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', 101

--PlaceOfResidence varchar (20) not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', null, '2021-04-01', 'Air Force', 'sergeant', 101


--constraint ck_Soldier_Place_Of_Residence_cannot_be_blank check (PlaceOfResidence <> '')

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', '', '2021-04-01', 'Air Force', 'sergeant', 101

--DateOfEnlistment date not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', null, 'Air Force', 'sergeant', 101

--ServiceUnit varchar (12) not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', null, 'sergeant', 101

--constraint ck_Soldier_Service_Unit_can_only_be_Navy_or_Ground_force_or_Air_Force check (ServiceUnit in ('Navy', 'Ground Force', 'Air Force'))

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', '', 'sergeant', 101

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Hello', 'sergeant', 101

--RankInUnit varchar (30) not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', null, 101

--constraint ck_Soldier_Rank_In_Unit_cannot_be_blank check (RankInUnit <> '')

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', '', 101

--IQLevel int not null

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2021-04-01', 'Air Force', 'sergeant', null

--constraint ck_Date_Of_Enlistment_must_be_seventeen_or_more_years_greater_than_DateOfBirth check (datediff(year, DateOfBirth, DateOfEnlistment) >= 17)

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2018-01-01', 'Air Force', 'sergeant', 101

insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'David', 'Aviar', '54877773-2', '2001-01-01', 'Caesarea', '2017-04-01', 'Air Force', 'sergeant', 101
