Use PetDB
GO

Drop table if exists Pet 
GO
create table dbo.Pet(
    PetId int identity primary key,
    OwnerName varchar(50) not null constraint ck_Pet_OwnerName_cannot_be_blank check(Ownername > ''),
    OwnerAddress Varchar(50) not null constraint ck_Pet_OwnerAddress_cannot_be_blank check(OwnerAddress > ''),
    PetType varchar(15) not null constraint ck_Pet_PetType_must_be_species_that_we_service check(PetType in ('dog','cat','rabbit','guinea pig')),
    PetName varchar(50) not null constraint ck_Pet_PetName_cannot_be_blank check(PetName > ''),
    Price decimal (5,2) not null constraint ck_Pet_Price_must_be_greater_than_zero check(Price > 0),
    Frequency varchar(8) not null constraint ck_Pet_Frequency_must_be_weekly_or_biweekly check(Frequency in('weekly','biweekly')),
    FirstServiceDate DATE not null constraint ck_Pet_FirstServiceDate_must_be_after_business_opened_2019 check (year(FirstServiceDate) > 2018),
    Active bit not null default 1,
    Constraint u_Pet_already_in_database unique (Ownername, OwnerAddress, PetType, PetName, FirstServiceDate)
)