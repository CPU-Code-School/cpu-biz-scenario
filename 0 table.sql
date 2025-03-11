use master 
go 
drop database if exists PetGroomingDB
go 
create database PetGroomingDB 
go 
use PetGroomingDB 
go 
drop table if exists Client
go 
create table dbo.Client(
    ClientId int not null identity primary key,
    FirstName varchar(20) not null 
        constraint ck_Client_First_Name_can_not_be_blank check(FirstName <> ''), 
    LastName varchar(20) not null
        constraint ck_Client_Last_Name_can_not_be_blank check(LastName <> ''),
    HomeAddress varchar(100) not null
        constraint ck_Client_Home_Address_can_not_be_blank check(HomeAddress <> ''),
    PetType varchar (10) not null
        constraint ck_Client_Pet_Type_is_either_dog_cat_rabbit_or_guinea_pig 
        check (PetType in('dog', 'cat', 'rabbit', 'guinea pig')), 
    PetName varchar (20) not null
        constraint ck_Client_Pet_Name_can_not_be_blank check(PetName <> ''),
    GroomingPrice decimal (4,2) not null,
    GroomingFrequency varchar(8) not null
        constraint ck_Client_Grooming_Frequency_is_either_weekly_or_biweekly 
        check (GroomingFrequency in('biweekly', 'weekly')), 
    GroomingDate date not null
        constraint ck_Client_Date_cant_be_future check(GroomingDate <= getdate()),
    IsActiveClient bit not null --default 1
        constraint ck_Client_Is_Active_Client_is_0_or_1 check (IsActiveClient in (0, 1))
)
go

