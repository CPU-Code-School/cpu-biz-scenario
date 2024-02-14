
use master
drop database if exists PetGroomingDB
GO
create DATABASE PetGroomingDB
Go
use PetGroomingDB

drop table if EXISTS dbo.Petgroom
go
create table dbo.Petgroom(
PetGroomID Int not null identity primary key,
PetOwnerFirstName varchar(30) not null 
CONSTRAINT c_PetGroom_Pet_Owner_First_Name_cannot_be_blank CHECK(PetOwnerFirstName <> ''),
PetOwnerLastName varchar(30) not null
CONSTRAINT c_PetGroom_Pet_Owner_Last_Name_cannot_be_blank CHECK(PetOwnerLastName <> ''),
PetOwnerAddress varchar(100) not null
CONSTRAINT c_PetGroom_Pet_Owner_Address_cannot_be_blank CHECK(PetOwnerAddress <> ''),
PetType varchar(10) not null
CONSTRAINT c_PetGroom_Pet_Type_can_only_be_dog_cat_rabbit_or_guinea_pig CHECK(PetType in ('dog', 'cat', 'rabbit', 'guinea pig')),
PetName varchar(30) not null 
CONSTRAINT c_PetGroom_Pet_Name_cannot_be_blank CHECK(PetName <> ''),
PricePerGrooming decimal(4,2) not null
constraint c_PetGroom_Price_Per_Grooming_must_be_greater_than_0 Check(PricePerGrooming > 0),
GroomingFrequency VARCHAR(8) not null 
CONSTRAINT c_PetGroom_Grooming_Frequency_can_only_be_weekly_or_biweekly CHECK(GroomingFrequency in ('weekly', 'biweekly')),
DatePickedUp DATE not null 
CONSTRAINT c_PetGroom_Date_Picked_Up_cant_be_before_1_1_2019 CHECK(DatePickedUp >= '1/1/2019'),
PreviousCustomer Bit not null 

)

