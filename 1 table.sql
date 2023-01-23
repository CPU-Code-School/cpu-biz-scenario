use MusicNoteDB 
go 

drop table if exists MusicRental
go 
create table dbo.MusicRental(
    InstrumentId int not null identity primary key,  
    CustomerFirstName varchar(30) not null constraint c_MusicNote_CustomerFirstName_cannot_be_blank check (CustomerFirstName > ''),
    CustomerLastName varchar(30) not null constraint c_MusicNote_CustomerLastName_cannot_be_blank check (CustomerLastName > ''),
    Instrument varchar(20) not null constraint c_MusicNote_Instrument_cannot_be_blank check (Instrument > ''),
    Category varchar(14) not null constraint c_MusicNote_Category_is_Brass_Wind_Percussion_or_String check(Category in ('Brass', 'Wind', 'Percussion', 'String')),
    MonthlyRentalFee decimal(4,2) not null constraint c_MusicNote_MonthlyRentalFee_greater_than_0 check (MonthlyRentalFee > 0),
    DateRented date not null constraint c_MusicNote_DateRented_cannot_be_blank check(DateRented > '') ,
    DateReturned date null,
    UniqueInstrumentId as concat(substring(Instrument,1,3), lower(substring(Category, 1,3))),
    TotalProfit as case 
        when DateReturned is not null then datediff(month, DateRented, DateReturned) * MonthlyRentalFee
        else 0
        end persisted,
    DateInserted datetime default getdate(),
    constraint c_MusicNote_DateReturned_after_DateRented check(DateRented < DateReturned),
    constraint c_MusicNote_DateRented_to_DateReturned_min_1_month_and_max_12_months check((DateReturned is not null and datediff(month, DateRented, DateReturned) between 1 and 12) or (DateReturned is null)),
    constraint c_MusicNote_DateRented_cannot_be_future_date check(DateRented <= getdate())
)
go 


select * from MusicRental


