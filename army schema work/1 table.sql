use ArmyDB
go

drop table if exists dbo.Soldier
go 

create table dbo.Soldier
(
FirstName VARCHAR(20) not null
    CONSTRAINT ck_Soldier_FirstName_cannot_be_blank CHECK (FirstName <> ''),
LastName VARCHAR(20) not null
    CONSTRAINT ck_Soldier_LastName_cannot_be_blank CHECK (LastName <> ''),
SSN VARCHAR(10) not null 
    CONSTRAINT u_Soldier_SSN_must_be_unique unique,
    CONSTRAINT ck_Soldier_SSN_have_9_digits CHECK (SSN like '%%%%%%%%-%'),
DateBorn date not null
    CONSTRAINT ck_Soldier_DateBorn_cannot_be_blank CHECK (DateBorn <> ''),
City VARCHAR(20) not null
    CONSTRAINT ck_Soldier_City_cannot_be_blank CHECK (City <> ''),
EnlistmentDate date not null 
    CONSTRAINT ck_Soldier_EnlistmentDate_must_be_before_current_date CHECK (EnlistmentDate < GETDATE()),
    CONSTRAINT ck_Soldier_EnlistmentDate_cannot_be_blank CHECK (EnlistmentDate <> ''),
MilitaryBranch VARCHAR(12) not null
    CONSTRAINT ck_Soldier_MilitaryBranch_cannot_be_blank CHECK (MilitaryBranch <> ''),
    CONSTRAINT ck_Soldier_MilitaryBranch_is_navy_land_or_air CHECK (MilitaryBranch in ('Navy', 'Air Force', 'Ground Force')),
Rank VARCHAR(25) not null 
    CONSTRAINT ck_Soldier_Rank_cannot_be_blank CHECK (Rank <> ''),
IQLevel int not null CONSTRAINT ck_Soldier_IQLevel_between_0_and_300 CHECK (IQLevel between 0 and 300),
    CONSTRAINT ck_Soldier_IQLevel_cannot_be_blank CHECK (IQLevel <> ''),

    CONSTRAINT ck_Soldier_EnlistmentDate_must_be_at_age_17_or_after CHECK (year(EnlistmentDate) >= year(DateBorn)+17)
)
go

ALTER TABLE Soldier drop column if EXISTS YearRange
go
ALTER TABLE Soldier add YearRange as case when YEAR(EnlistmentDate) between 2017 and 2019 then 2017-2019
                                          when YEAR(EnlistmentDate) between 2020 and 2022 then 2020-2022
                                          else '' 
                                          end     
                                          PERSISTED
go