--tests 
--customer first name cannot be blank or null
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select '', 'Shields', 'Flute', 'Wind', 30, '01/01/2021', '05/03/2021'
--customer last name cannot be blank or null
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', '', 'Flute', 'Wind', 30, '01/01/2021', '05/03/2021'
--instrument cannot be blank or null
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', '', 'Wind', 30, '01/01/2021', '05/03/2021'
--Category cannot be null or blank
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', '', 30, '01/01/2021', '05/03/2021'
--Monthly rental fee not greater than 999.99
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 1000, '01/01/2021', '05/03/2021'
--date rented not null
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, null, '05/03/2021'
--date rented cannot be a future date
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '05/11/2022', null
--can only rent from 1 
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '01/01/2021', '02/01/2021'
--to 12 months
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '01/01/2021', '01/02/2022'
--and 
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)
select 'Chaya Faiga', 'Rothstein', 'Clarinet', 'Wind', 35, '04/18/2021', '09/16/2021'
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
--and 
insert Instrument (CustomerFirstName, CustomerLastName,InstrumentName,Category,MonthlyRentalFee,DateRented,DateReturned)