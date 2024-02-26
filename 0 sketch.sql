/* 
ArmyRecordsDB

dbo.Soldiers
    SoldiersID int not null identity primary key,
    SoldierLastName varchar(25) not null,
        not blank
    SoldierFirstName varchar (25) not null,
        not blank
    SoldierSSN char(10) not null,
        not blank
        constraint SoldierSSN unique
    SoldierDOB date not null,
        not blank
    SoldierResidence varchar(25) not null
        not blank
    SoldierDateOfEnlistment date, not null
        check constraint SoldierDateOfEnlistment must be <= getdate()
    ServiceUnit varchar(12) not null
        check constraint ServiceUnit must be in (Air Force, Ground Force, Navy)
    SoldierRank varchar(25) not null
        not blank
    SoldierIQ char(3) not null
        not blank
    SoldierAgeAtEnlistment as SoldierDateOfEnlistment - SoldierDOB

multicolumn constraints
    SoldierDateOfEnlistment cannot be before 17 years after SoldierDOB check datepart(year, SoldierDateOfEnlistment <= SoldierDOB + 17)