use musicrentalDB
go
drop table if exists dbo.MusicRental
go
create table dbo.MusicRental(
    MusicRentalID int not null identity primary key,
    CustomerFirstName varchar (100) not null constraint ck_MusicRental_customer_first_name_cannot_be_blank check(CustomerFirstName <> ''),   
    CustomerLastName varchar (100) not null constraint ck_MusicRental_customer_last_name_cannot_be_blank check(CustomerLastName <> ''),
    Instrument varchar(100) not null constraint ck_MusicRental_instrument_cannot_be_blank check (Instrument <> ''),
    Category varchar(100) not null constraint ck_MusicRental_category_cannot_be_blank check (Category <> ''),
    InstrumentID as CONCAT(substring(instrument,1,3),substring(Category,1,3)) persisted,
    MonthlyRentalFee decimal (6,2) not null constraint ck_MusicRental_monthly_rental_fee_must_be_greater_than_zero check (MonthlyRentalFee > 0),
    TotalProfit as MonthlyRentalFee * DATEDIFF(month,DateRented,DateReturned) persisted,
    DateRented date not null constraint ck_MusicRental_date_rented_cannot_be_a_future_date check(DateRented < getdate()),
    DateReturned date constraint ck_MusicRental_date_returned_cannot_be_a_future_date check(DateReturned < getdate()),
    DateInserted datetime not null default GETDATE(),
    constraint ck_MusicRental_DateReturned_must_be_after_dateRented check(DateReturned > DateRented),
    constraint ck_MusicRental_TotalProfit_and_DateReturned_must_be_either_both_null_or_both_supplied check((TotalProfit is null and DateReturned is null)or(TotalProfit is not null and DateReturned is not null )),
    constraint ck_MusicRental_between_DateReturned_and_DateRented_there_cant_be_more_than_12_months_and_less_than_1_month check(DATEDIFF(month, dateRented, DateReturned) >=1 and DATEDIFF(month, dateRented, DateReturned) <12)
)