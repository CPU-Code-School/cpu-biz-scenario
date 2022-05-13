Use MusicDB
go
drop table if exists instrument
go 
create table dbo.instrument(
InstrumentID int not null identity primary key,
CustomerFirstName varchar(15) not null
    constraint ck_Instrument_Customer_first_name_cannot_be_blank check (CustomerFirstName > ''), 
CustomerLastName varchar(15) not null
    constraint ck_Instrument_Customer_last_name_cannot_be_blank check (CustomerLastName > ''), 
Instrument varchar(20) not null
    constraint ck_Instrument_Instrument_cannot_be_blank check (Instrument > ''), 
Category varchar(15) not null
    constraint ck_Instrument_Category_cannot_be_blank check (Category > ''),
ID as concat(substring(Instrument, 1, 3), (substring(Category, 1,3))) persisted, 
MonthlyRentalFee dec (4,2) not null, 
DateRented date not null
    constraint ck_Instrument_Date_rented_cannot_be_a_future_date check (DateRented < getdate()), 
Profit as
case 
when DateReturned is not null then datediff(month, DateRented, DateReturned) * MonthlyRentalFee
else 0
end,
DateReturned date null,
EnteredIntoSystem as getdate(),
    constraint ck_Instrument_customers_can_rent_for_a_minimum_of_1_month_to_a_maximum_of_12_months
    check (datediff(month, DateRented, DateReturned) between 1 and 11)
)
--tests 
--customer first name cannot be blank or null
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select '', 'Shields', 'Flute', 'Wind', 30, '01/01/2021', '05/03/2021'
--customer last name cannot be blank or null
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', '', 'Flute', 'Wind', 30, '01/01/2021', '05/03/2021'
--instrument cannot be blank or null
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', '', 'Wind', 30, '01/01/2021', '05/03/2021'
--Category cannot be null or blank
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', '', 30, '01/01/2021', '05/03/2021'
--Monthly rental fee not greater than 99.99
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 100, '01/01/2021', '05/03/2021'
--date rented not null
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, null, '05/03/2021'
--date rented cannot be a future date
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '05/11/2022', null
--can only rent from 1 
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '01/01/2021', '02/01/2021'
--to 12 months
insert Instrument (CustomerFirstName, CustomerLastName,Instrument,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '01/01/2021', '01/02/2022'