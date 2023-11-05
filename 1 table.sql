drop TABLE if EXISTS dbo.CleaningCompany
go
CREATE table dbo.CleaningCompany(
        CustomerID int not null IDENTITY primary key,
        FirstName varchar(50) not null constraint ck_Customer_First_name_is_not_blank CHECK (FirstName <> ''), 
        LastName varchar(50) not null constraint ck_Customer_Last_name_is_not_blank CHECK (LastName <> ''), 
        PhoneNumber varchar(15) not null constraint ck_Customer_Phone_Number_is_not_blank CHECK (PhoneNumber <> ''), 
        CustomerAddress VARCHAR(50) not null constraint ck_Customer_Address_is_not_blank CHECK (address <> ''), 
        Frequency VARCHAR(9) not null  constraint ck_Customer_frequency_must_be_either_weekly_or_biweekly check (frequency in ('Weekly', 'BiWeekly')), 
        PricePerHour int not null CONSTRAINT ck_Customer_PricePerHour_is_between_0_and_53 check (pricerperhour between 0 and 53),
        TimeinHours int not null CONSTRAINT ck_Customer_TimeinHours_is_between_greater_than_0 check (TimeinHours >0 ),
        StartDate date not null CONSTRAINT ck_Customer_Satrt_date_is_not_blank CHECK (startdate <> ''),
        EndDate date null, 
        constraint ck_start_date_is_before_end_date check (StartDate < EndDate),
        constraint ck_price_per_hour_times_hours_is_less_than_424 check (pricerperhour * TimeinHours < 424)
)
go

