use InstrumentDB
go

drop table if exists dbo.Instrument
go

create table dbo.Instrument(
     InsturmentID int not null identity primary KEY,
     CustomerName varchar(40) not null constraint ck_CustomerName_cannot_be_blank check(CustomerName<>''),
     InstrumentName varchar(30) not null constraint ck_InsturmentName_cannot_be_blank check(InstrumentName<>''),
     Category varchar(20) not null constraint ck_Category_cannot_be_blank check(Category<>''),
     MonthlyRentalFee decimal(5,2) not null,
     DateRented date not null,
     DateReturned date,
     TotalProfit as datediff(day, DateRented, DateReturned)/30*MonthlyRentalFee,
     DateInserted datetime default getdate() not null,
     InstrumentID as concat(substring(InstrumentName, 1, 3), substring(Category, 1, 3)),
     Constraint ck_Date_Inserted_must_be_before_date_returned check(DateRented<=getdate() or DateRented<=DateReturned),
     Constraint ck_Instrument_Rented_between_1_and_12_months check(datediff(month, DateRented, DateReturned) between 1 and 12 or datediff(month, DateRented, getdate()) between 1 and 12),
     --Constraint ck_DateRented_after_or_equals_to_to_record_entered check(DateRented>=DateInserted)

)
go

insert Instrument(InstrumentName, CustomerName, Category, MonthlyRentalFee, DateRented, DateReturned)
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


select *
from instrument i

/*
1) I need to know if I have any repeat customers and what they rented
2)I need to know the most popular category of instrument that has ever been rented
3) I need to know which instrument (that is not being currently rented) made the most profit
4) I need to know which instruments were rented for only one month (so I could know if I should just sell
them off)
*/

select i.CustomerName
from Instrument I
group by i.CustomerName
having COUNT(i.CustomerName)>2
