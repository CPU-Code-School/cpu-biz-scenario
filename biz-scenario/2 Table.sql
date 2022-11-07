use ArmyDB
GO

DROP table if EXISTS dbo.Army
GO

CREATE TABLE dbo.Army(
    ArmyID int not null identity primary key,
    FirstName varchar (20) not null,
        CONSTRAINT c_Army_First_Name_can_not_be_blank CHECK (firstname <> ''),
    LastName varchar (20) not null 
        CONSTRAINT c_Army_Last_Name_can_not_be_blank CHECK (LastName <> ''),
    SSN char (10) not null
        constraint u_Army_SSN UNIQUE,
        CONSTRAINT c_Army_SSN_must_have_a_dash CHECK  (ssn like'%-%'),
    DateOfBirth date not null,
    PlaceOfResidence varchar (35) not NULL
        CONSTRAINT c_Army_place_of_residence_can_not_be_blank CHECK (PlaceOfResidence <> ''),
    DateOfEnlistment date not null,
       CONSTRAINT c_Army_age_must_be_older_than_seventeen CHECK (datediff (year, DateOfBirth, DateOfEnlistment) >= 17 ),
    ServiceUnit VARCHAR (13) not NULL
        CONSTRAINT C_Army_unit_must_be_either_Navy_Land_or_Air CHECK (ServiceUnit in ('Navy', 'Ground force', 'Air force')),
    RankInService varchar (25) not null     
        CONSTRAINT c_Army_rank_in_ervice_can_not_be_blank CHECK (RankInService <> ''),
    IQ INT not NULL
        CONSTRAINT c_Army_IQ_can_only_be_up_to_144 CHECK(IQ < 144)


)

select * from Army