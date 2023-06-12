use petDB
go

drop table if exists Grooming
go

create table dbo.Grooming(
    PetID int not null identity primary key,
    OwnersName varchar(30) not null constraint c_Grooming_owners_name_cannot_be_blank check(OwnersName > ''),
    PetAddress varchar(60) not null constraint c_Grooming_address_cannot_be_blank check(PetAddress > ''),
    PetType varchar(11) not null constraint c_Grooming_pet_type_must_be_dog_cat_rabit_or_guinea_pig check(PetType in ('dog','cat','rabbit','guinea pig')),
    PetName varchar(20) not null constraint c_Grooming_pet_name_cannot_be_blank check(PetName > ''),
    GroomPrice int not null constraint c_Grooming_price_must_be_greater_than_zero check(GroomPrice > 0),
    FrequencyOfService varchar(8) not null constraint c_Grooming_frequency_of_service_can_only_be_weekly_or_biweekly check(FrequencyOfService in ('weekly','biweekly')),
    DatePickup date not null constraint c_Grooming_date_pickup_must_be_in_or_later_than_2019 check(year(DatePickup) > 2018),
    DateEndService date,
    constraint c_Grooming_when_date_end_service_is_recorded_must_be_later_than_date_pickup check(DateEndService >= DatePickup or DateEndService is null),
    constraint u_Grooming_owner_and_pet_must_be_unique unique(OwnersName,PetName)
)


