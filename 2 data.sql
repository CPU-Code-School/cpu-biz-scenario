use ArmyDB
go
set dateformat dmy

insert Soldier(SoldierFirstName, SoldierLastName, SSN, DOB, Residence, EnlistmentDate, ServiceUnit, UnitRank, IQ)
select 'Ron', 'Aviad', '54876373-2', '01/01/2000', 'Caesarea', '01/03/2021', 'Air', 'sergeant', 95
union select 'Shachar', 'Dotan', '85274136-9', '16/08/2001', 'Jerusalem', '01/10/2020', 'Navy', 'lieutenant colonel', 111
union select 'Osher', 'Sharon', '95135778-2', '04/05/1996', 'Tel-Aviv', '01/04/2017', 'Land', 'sergeant', 79
union select 'Yoni', 'Tamari', '24863570-5', '23/11/1999', 'Jerusalem', '01/12/2018', 'Air', 'lieutenant general', 139
union select 'Shai', 'Ben Zeev', '93185378-1', '13/09/2001', 'Netanya', '01/01/2020', 'Air', 'sergeant', 120
union select 'Dory', 'Lavie', '16834952-7', '28/10/2004', 'Haifa', '01/12/2021', 'Navy', 'brigadier general', 118

select * from Soldier