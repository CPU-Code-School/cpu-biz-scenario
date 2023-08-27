Use PetDB
GO

Drop table if exists Customer 
GO
create table dbo.Customer(
    CustomerId int identity primary key,
    OwnerName varchar(50) not null constraint ck_Customer_OwnerName_cannot_be_blank check(Ownername > ''),
    OwnerAddress Varchar(50) not null constraint ck_Customer_OwnerAddress_cannot_be_blank check(OwnerAddress > ''),
    PetType varchar(15) not null constraint ck_Customer_PetType_must_be_species_that_we_service check(PetType in ('dog','cat','rabbit','guinea pig')),
    PetName varchar(50) not null constraint ck_Customer_PetName_cannot_be_blank check(PetName > ''),
    Price decimal (5,2) not null constraint ck_Customer_Price_must_be_greater_than_zero check(Price > 0),
    Frequency varchar(8) not null constraint ck_Customer_Frequency_must_be_weekly_or_biweekly check(Frequency in('weekly','biweekly')),
    FirstServiceDate DATE not null constraint ck_Customer_FirstServiceDate_must_be_after_business_opened_2019 check (year(FirstServiceDate) > 2018),
    Active bit not null default 1,
    Constraint u_Customer_Pet_already_in_database unique (Ownername, OwnerAddress, PetType, PetName, FirstServiceDate)
)