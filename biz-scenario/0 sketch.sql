/*
I need an organized database which will include the following: soldier's name, SSN, date of birth, place of residence, date of enlistment,
service unit (military branch), Rank in the unit, IQ level.

Q:At what age can you enlist in the army?
A:From the age of 17.
Q:Which units can the soldiers be in?
A:I centralize the soldiers' lists only in units: Navy, Land and Air
Q:Are there certain IQs who are not accepted into the service?
A:No, the IDF will also find a role for those with a low level of intelligence

Sample Data:
Ron, Aviad, 54876373-2, 01/01/2000, Caesarea, 01/03/2021, Air Force, sergeant 95
Shachar, Dotan, 85274136-9, 16/08/2001, Jerusalem, 01/10/2020, Navy, lieutenant colonel, 111
Osher, Sharon, 95135778-2, 04/05/1996, Tel-Aviv, 01/04/2017, Ground Force, sergeant, 79
Yoni, Tamari, 24863570-5, 23/11/1999, Jerusalem, 01/12/2018, Air Force, lieutenant general, 139
Shai, Ben Zeev, 93185378-1, 13/09/2001, Netanya, 01/01/2020, Air Force, sergeant, 120
Dory, Lavie, 16834952-7, 28/10/2004, Haifa, 01/12/2021, Navy, brigadier general, 118


ArmyDB

Army
    ArmyID int not null identity primary key
    firstname varchar (20) not null not ''
    lastname varchar (20) not null not ''
    ssn char (9) numbers unique
    date of birth date not null
    place of residence varchar (25) not null not ''
    date of enlistment date must be older that 17 not null not ''
    service unit (military branch) varchar (4) either Navy, Land, Air not null noy blank
    Rank in the unit varchar (25)
    IQ level up to 144


*/