use musicrentalDB
go
delete MusicRental
go
insert MusicRental(CustomerFirstName, CustomerLastName, Instrument, Category, MonthlyRentalFee, DateRented, DateReturned)
select 'Esther', 'Shields', 'Flute', 'Wind', 30, 'Jan 01 2021', 'May 03 2021'
union select 'Mendy', 'Weiss', 'Violin', 'String', 40, 'June 07 2019', 'Feb 16 2020'
union select 'Rochel', 'Silber', 'French Horn', 'Brass', 70, 'March 29 2021', 'April 28 2021'
union select 'Sari', 'Cohn', 'Clarinet', 'Wind', 35, 'July 12 2020', 'November 14 2020'
union select 'Yaakov', 'Kleinman', 'Guitar', 'String', 42, 'September 12 2020', 'April 24 2021'
union select 'Shmuli', 'David', 'Piano', 'Percussion', 65, 'March 23 2019', 'August 15 2019'
union select 'Baila', 'Weitz', 'Trumpet', 'Wind', 53, 'May 03 2020', 'December 29 2020'
union select 'Hadassah', 'Gruber', 'Guitar', 'String', 42, 'January 03 2020', 'September 28 2020'
union select 'Rivkala', 'Scheiner', 'Violin', 'String', 40, 'May 24 2021', 'January 01 2022'
union select 'Chaya Faiga', 'Rothstein', 'Clarinet', 'Wind', 35, 'November 18 2020', 'September 16 2020'
union select 'Tehilah', 'Katz', 'Guitar', 'String', 42, 'February 13 2021', 'April 12 2021'