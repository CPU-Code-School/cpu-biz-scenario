/*
FirstName varchar(20) not null not blank
LastName varchar(20) not null not blank
PhoneNum char(10) not null not blank
Address varchar(20) not null not blank
Frequency bit 'weekly'\'biweekly'
RatePerHour decimal(4,2)
AvgTime int(1)
MoneyPerMonth computed 
StartDate date not null
EndDate date not null
unique constraint on address