use InstrumentDB 
go

insert Instrument(CustomerName, InstrumentName, Category, MonthlyRentalFee, DateRented, DateReturned)
--select 'violin', 'Ellie Tufts', 'strings', 40.5, '9-4-2022', null
select 'Esther Shields', 'Flute', 'Wind', 30, '1-1-2021', '5-3-2021'
union select 'Mendy Weiss', 'Violin', 'String', 40, '6-17-19', '2-16-20'
union select 'Rochel Silber', 'French Horn', 'Brass', 70, '3-27-21', '4-28-21'
union select 'Sari Cohn', 'Clarinet', 'Wind', 35, '7-12-2020', '11-14-20'
union select 'Yaakov Kleinman', 'Guitar', 'String', 42, '9-12-20', '4-24-21'
union select 'Shmuli David', 'Piano', 'Percussion', 65, '3-23-19', '8-15-19'
union select 'Baila Weitz', 'Trumpet', 'Wind', 53, '5-3-20', '12-29-20'
union select 'Hadassah Gruber', 'Guitar', 'String', 42, '1-3-20', '9-28-20'
union select 'Rivkala Scheiner', 'Violin', 'String', 40, '5-24-21', '1-1-22'
union select 'Chaya Faiga Rothstein', 'Clarinet', 'Wind', 35, '11-18-20', '9-16-21'
union select 'Tehilah Katz', 'Guitar', 'String', 42, '2-13-21','4-12-21'

go