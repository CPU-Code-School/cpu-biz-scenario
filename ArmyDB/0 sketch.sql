
/*
Soldier
    SoldierId int not null pk
    FirstName varchar (30) not null
        not ''
    LastName varchar (30) not null
        not ''
    SSN varchar (10) not null
        unique
        8 digit dash 1 digit
    DateOfBirth date not null
    PlaceOfResidence varchar (35) not null
        not ''
    DateOfEnlistment date not null
    ServiceUnit varchar (12) not null
        can only be Navy, Ground Force or Air Force
    RankInUnit varchar (30) not null
        not ''
    IQLevel int not null 
        not negative
multicolumn constraints
    DateOfEnlistment must be seventeen or more years greater than DateOfBirth
*/
