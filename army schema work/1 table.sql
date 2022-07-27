use ArmyDB
go

drop table if exists dbo.Soldier
go 

create table dbo.Soldier
(
SoldierID int not null IDENTITY PRIMARY KEY,
FirstName VARCHAR(30) not null
    CONSTRAINT ck_Soldier_FirstName_cannot_be_blank CHECK (FirstName <> ''),
LastName VARCHAR(30) not null
    CONSTRAINT ck_Soldier_LastName_cannot_be_blank CHECK (LastName <> ''),
SSN VARCHAR(10) not null 
    CONSTRAINT u_Soldier_SSN_must_be_unique unique,
    CONSTRAINT ck_Soldier_SSN_have_9_digits CHECK (SSN like '[0-9]%[0-9]%[0-9]%[0-9]%[0-9]%[0-9]%[0-9]%[0-9]%-[0-9]%'),
DateBorn date not null,
City VARCHAR(20) not null
    CONSTRAINT ck_Soldier_City_cannot_be_blank CHECK (City <> ''),
EnlistmentDate date not null 
    CONSTRAINT ck_Soldier_EnlistmentDate_must_be_before_current_date CHECK (EnlistmentDate <= GETDATE()),
MilitaryBranch VARCHAR(12) not null
    CONSTRAINT ck_Soldier_MilitaryBranch_is_navy_land_or_air CHECK (MilitaryBranch in ('Navy', 'Air Force', 'Ground Force')),
Rank VARCHAR(25) not null 
    CONSTRAINT ck_Soldier_Rank_cannot_be_blank CHECK (Rank <> ''),
IQLevel int not null CONSTRAINT ck_Soldier_IQLevel_greater_then_0 CHECK (IQLevel > 0),
--I looked it up and the highest was in the two hundreds

    CONSTRAINT ck_Soldier_EnlistmentDate_must_be_at_age_17_or_after CHECK (year(EnlistmentDate) >= year(DateBorn)+17)
)
go

