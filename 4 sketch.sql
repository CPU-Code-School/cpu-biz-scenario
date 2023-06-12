/*
PetDB
Grooming

PetID int not null identity primary key
OwnersName varchar(30) not null, no blank
Address varchar(60) not null, no blank
PetType varchar(11) not null, must be in (dogs, cats, rabbits, and guinea pigs)
PetName varchar(20) not null, no blank
GroomPrice int not null, greater than zero
FrequencyOfService varchar(8) not null must be in (weekly,biweekly)
DatePickup date, not null, must be aft. 2018
DateEndService date null

constraint DateEndService must be aft. DatePickup or DateEndService is null
constraint OwnersName and PetName unique


