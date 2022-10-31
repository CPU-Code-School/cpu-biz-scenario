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

