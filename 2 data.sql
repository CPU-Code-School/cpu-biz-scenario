use MusicNoteDB
go 

delete MusicRental

insert MusicRental(CustomerFirstName, CustomerLastName, Instrument, Category, MonthlyRentalFee, DateRented, DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, '2021-01-01', '2021-05-03'
union select 'Mendy', 'Weiss', 'Violin', 'String', 40, '2019-6-27', '2020-2-16'
union select 'Rochel', 'Silber', 'French Horn', 'Brass', 70, '2021-03-29', '2021-04-28'
union select 'Sari', 'Cohn', 'Clarinet', 'Wind', 35, '2020-07-12', '2020-11-14'
union select 'Yaakov', 'Kleinman', 'Guitar', 'String', 42, '2020-09-12', '2021-04-24'
union select 'Shmuli', 'David', 'Piano', 'Percussion', 65, '2019-03-23', '2019-08-15'
union select 'Baila', 'Weitz', 'Trumpet', 'Wind', 53, '2020-05-03', '2020-12-29'
union select 'Hadassah', 'Gruber', 'Guitar', 'String', 42, '2020-01-03', '2020-09-28'
union select 'Rivkala', 'Scheiner', 'Violin', 'String', 40, '2021-05-24', '2022-01-01'
union select 'Chaya Faiga', 'Rothstein', 'Clarinet', 'Wind', 35, '2020-11-18', '2021-11-16'
union select 'Tehilah', 'Katz', 'Guitar', 'String', 42, '2021-02-13', '2021-04-12'

select * from MusicRental m 