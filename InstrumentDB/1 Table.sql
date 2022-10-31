use InstrumentDB
go

drop table if exists dbo.Instrument
go

create table dbo.Instrument(
     InstrumentID int not null identity primary KEY,
     CustomerName varchar(40) not null constraint ck_Instrument_CustomerName_cannot_be_blank check(CustomerName<>''),
     InstrumentName varchar(30) not null constraint ck_InstrumentName_cannot_be_blank check(InstrumentName<>''),
     Category varchar(20) not null constraint ck_Instrument_Category_cannot_be_blank check(Category<>''),
     MonthlyRentalFee decimal(5,2) not null CONSTRAINT ck_Instrument_MonthlyRentalFee_cannot_be_negative check(MonthlyRentalFee >=0),
     DateRented date not null,
     DateReturned date,
     TotalProfit as datediff(month, DateRented, DateReturned)*MonthlyRentalFee,
     DateInserted datetime not null default getdate(),
     InstrumentCode as concat(substring(InstrumentName, 1, 3), substring(Category, 1, 3)),
     Constraint ck_Insturment_Date_Rented_must_be_before_date_returned check(DateReturned between DateRented and getdate()),
     Constraint ck_Instrument_Rented_between_1_and_12_months check(datediff(month, DateRented, DateReturned) between 1 and 12 or datediff(month, DateRented, getdate()) between 1 and 12),
     Constraint ck_Instrument_DateReturned_cannot_be_in_the_future check(DateReturned <=getdate()  or datereturned is null)
     --Constraint ck_DateRented_after_or_equals_to_to_record_entered check(DateRented>=DateInserted)
     
)
go

