/*
(

    InstrumentName varchar(30) not null not blank
    CustomerName varchar(40) not null not blank
    Category varchar(20) not null not balnk
    MonthlyRentalFee decimal(5,2) not null
    DateRented date not null
    DateRetruned date
    TotalProfit as datediff(month, DateRented, DateReturned)*MonthlyRentalFee
    DateInserted datetime default getdate() not null 
    InstrumentID as concat(substring(InstrumentName, 1, 3), substring(Category, 1, 3))
    Constraint ck_Date_Inserted_must_be_before_date_returned check(isnull(dateReturned>=dateRented, DateReturned))
    Constraint ck_Istrument_Rented_between_1_and_12_months check(isnull(datediff(month, daterented, datereturned)) between 1 and 12, datediff(month, dateRented, getdate()) between 1 and 12)
    Constraint ck_DateRented_after_or_equals_to_to_record_entered check(DateRented>=DateInserted)
)
--Instrument ID, CustomerName, Instrument, Category, MonthlyRentalFee, DateRented, DateReturned, TotalProfit, DateInserted
*/