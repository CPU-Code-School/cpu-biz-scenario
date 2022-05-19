Use MusicDB
go
drop table if exists instrument
go 
create table dbo.instrument(
InstrumentID int not null identity primary key,
CustomerFirstName varchar(30) not null
    constraint ck_Instrument_Customer_first_name_cannot_be_blank check (CustomerFirstName > ''), 
CustomerLastName varchar(50) not null
    constraint ck_Instrument_Customer_last_name_cannot_be_blank check (CustomerLastName > ''), 
InstrumentName varchar(20) not null
    constraint ck_Instrument_Instrument_name_cannot_be_blank check (InstrumentName > ''), 
Category varchar(15) not null
    constraint ck_Instrument_Category_cannot_be_blank check (Category > ''),
InstrumentCode as concat(substring(InstrumentName, 1, 3), (substring(Category, 1,3))) persisted, 
MonthlyRentalFee dec (5,2) not null
    constraint ck_Instrument_Monthly_rental_fee_cannot_be_negative check(MonthlyRentalFee >= 0), 
DateRented date not null
    constraint ck_Instrument_Date_rented_cannot_be_a_future_date check (DateRented <= getdate()), 
Profit as
case 
when DateReturned is not null then datediff(month, DateRented, DateReturned) * MonthlyRentalFee
else 0
end
persisted,
DateReturned date null
    constraint ck_Instrument_Date_returned_cannot_be_a_future_date check (DateReturned <= getdate()),
EnteredIntoSystem as getdate(),
    constraint ck_Instrument_customers_can_rent_for_a_minimum_of_1_month_to_a_maximum_of_12_months
        check (datediff(month, DateRented, DateReturned) between 1 and 12),
    constraint ck_Date_rented_must_be_before_date_returned 
        check (DateRented <= DateReturned),
    constraint u_Customer_Instrument_name_and_Date_rented_must_be_unique
        unique(InstrumentName,DateRented)
        )
select * from instrument i

--tests
-- MonthlyRentalFee cannot be negative
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Jack', 'Shields', 'Flute', 'Wind', -1, '01/01/2021', '05/03/2021'
--DateRented can be current date
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Jack', 'Shields', 'Flute', 'Wind', 30, getdate(), null
--DateRented cannot be a future date
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Jack', 'Shields', 'Flute', 'Wind', 30, '05/19/2022', null
--DateRented must be after DateReturn
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Jack', 'Shields', 'Flute', 'Wind', 30, '01/22/2022', '01/21/2022'
--Cannot have same instrument rented by two different people on the same date
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Naomi', 'Sher', 'Guitar', 'String', 42, '02/13/2021', '04/12/2021'

insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)