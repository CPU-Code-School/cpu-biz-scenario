use ArmyDB
go

delete Soldier
insert Soldier(FirstName, LastName, SSN, DOB, PlaceOfResidence, DateEnlisted, ServiceUnit, Rank, IQLevel)
select 'Ron', 'Aviad', '54876373-2', '01/01/2000', 'Caesarea', '01/03/2021', 'Air Force', 'sergeant', 95
union select 'Shachar', 'Dotan', '85274136-9', '08/16/2001', 'Jerusalem', '10/01/2020', 'Navy', 'lieutenant colonel', 111
union select 'Osher', 'Sharon', '95135778-2', '05/04/1996', 'Tel-Aviv', '04/01/2017', 'Ground Force', 'sergeant', 79
union select 'Yoni', 'Tamari', '24863570-5', '11/23/1999', 'Jerusalem', '12/01/2018', 'Air Force', 'lieutenant general', 139
union select 'Shai', 'Ben Zeev', '93185378-1', '09/13/2001', 'Netanya', '01/01/2020', 'Air Force', 'sergeant', 120
union select 'Dory', 'Lavie', '16834952-7', '10/28/2004', 'Haifa', '12/01/2021', 'Navy', 'brigadier general', 118

