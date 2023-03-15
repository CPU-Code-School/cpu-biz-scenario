delete Soldiers
set dateformat dmy

insert Soldiers (FirstName, LastName, SSN, DOB, PlaceOfResidence, DateOfEnlistment, ServiceUnit, SoldierRank, IQLevel)
select 'Ron', 'Aviad', '54876373-2', '01/01/2000', 'Caesarea', '01/03/2021', 'Air Force', 'sergeant', 95
union select 'Shachar', 'Dotan', '85274136-9', '16/08/2001', 'Jerusalem', '01/10/2020', 'Navy', 'lieutenant colonel' , 111
union select 'Osher', 'Sharon', '95135778-2', '04/05/1996', 'Tel-Aviv', '01/04/2017', 'Ground Force', 'sergeant', 79
union select 'Yoni', 'Tamari', '24863570-5', '23/11/1999', 'Jerusalem', '01/12/2018', 'Air Force', 'lieutenant general', 139
union select 'Shai', 'Ben Zeev', '93185378-1', '13/09/2001', 'Netanya', '01/01/2020', 'Air Force', 'sergeant', 120
union select 'Dory', 'Lavie', '16834952-7', '28/10/2004', 'Haifa', '01/12/2021', 'Navy', 'brigadier general', 118
union select 'Gidon', 'Shaer', '96347887-7', '18/03/2003', 'Maaleh Adumim', '21/07/2021', 'Air Force', 'Sergeant', 107

