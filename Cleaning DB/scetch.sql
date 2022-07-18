/*
FirstName varchar(20) not null not blank
LastName varchar(20) not null not blank
PhoneNum varchar(10) not null not blank
Address varchar(20) not null not blank
Frequency varchar(10) 'weekly'\'biweekly'
RatePerHour decimal(4,2)
AvgTime decimal(4,2)
MoneyPerMonth computed 
StartDate date not null
EndDate date  null
unique constraint on address