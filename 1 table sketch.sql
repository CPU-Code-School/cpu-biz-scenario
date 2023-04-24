/*
musicrentalDB

MusicRental
    MusicRentalID int not null PK
    CustomerFirstName varchar (100) not null, not blank
    CustomerLastName varchar(100) not null, not blank
    Instrument varchar(100) not null, not blank
    Category varchar(100) not null, not blank
    InstrumentID computed column concat first 3 letters of the instrument and of the category
    MonthlyRentalFee decimal (6,2), not null, must be greater than 0
    TotalProfit computed column MonthlyRentalFee * months rented
    DateRented Date not null, not future date
    DateReturned not null not future date
    DateInserted datetime not null, default getdate()
    
    multi constraint columns
        DateReturned must be after dateRented 
        between DateReturned and DateRented there can't be more than 12 months and less than 1 month
*/
