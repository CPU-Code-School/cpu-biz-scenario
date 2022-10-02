use ArmyDB

go  


insert soldier(FirstName, LastName, SSN, DateOfBirth, PlaceOfResidence, DateOfEnlistment, ServiceUnit, RankInUnit, IQLevel)
select 'Ron', 'Aviad', '54876373-2', '2000-01-01', 'Caesarea', '2021-03-01', 'Air Force', 'sergeant', 95
union select 'Shachar', 'Dotan', '85274136-9', '2001-08-16', 'Jerusalem', '2020-10-01', 'Navy', 'lieutenant colonel', 111
union select 'Osher', 'Sharon', '95135778-2', '1996-05-04', 'Tel-Aviv', '2017-04-01', 'Ground Force', 'sergeant', 79
union select 'Yoni', 'Tamari', '24863570-5', '1999-11-23', 'Jerusalem', '2018-12-01', 'Air Force', 'lieutenant general', 139
union select 'Shai', 'Ben Zeev', '93185378-1', '2001-09-13', 'Netanya', '2020-01-01', 'Air Force', 'sergeant', 120
union select 'Dory', 'Lavie', '16834952-7', '2004-10-28', 'Haifa', '2021-12-01', 'Navy', 'brigadier general', 118