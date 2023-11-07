drop TABLE if EXISTS dbo.Customer
go
CREATE table dbo.Customer(
        CustomerID int not null IDENTITY primary key,
        FirstName varchar(50) not null constraint ck_Customer_First_name_is_not_blank CHECK (FirstName <> ''), 
        LastName varchar(50) not null constraint ck_Customer_Last_name_is_not_blank CHECK (LastName <> ''), 
        PhoneNumber varchar(15) not null constraint ck_Customer_Phone_Number_is_not_blank CHECK (PhoneNumber <> ''), 
        CustomerAddress VARCHAR(50) not null constraint u_Customer_Address UNIQUE constraint ck_Customer_Address_is_not_blank CHECK (CustomerAddress <> ''), 
        Frequency VARCHAR(9) not null  constraint ck_Customer_frequency_must_be_either_weekly_or_biweekly check (frequency in ('Weekly', 'BiWeekly')), 
        PricePerHour int not null CONSTRAINT ck_Customer_PricePerHour_is_between_0_and_53 check (PricePerHour between 0 and 35),
        TimeinHours decimal(4,2) not null CONSTRAINT ck_Customer_TimeinHours_is_between_greater_than_0 check (TimeinHours >0 ),
        StartDate date not null CONSTRAINT ck_Customer_Satrt_date_is_After_January_15_2017 CHECK (startdate > '01-15-2017'),
        EndDate date null,
                TotalPerMonth as case 
        when  frequency = 'weekly' then PricePerHour * TimeinHours * 4
        when  frequency = 'biweekly' then PricePerHour * TimeinHours * 2
        end
        PERSISTED, 
        constraint ck_start_date_is_before_end_date check (StartDate < EndDate),
        constraint ck_price_per_hour_times_hours_is_less_than_424 check (PricePerHour * TimeinHours < 424)

    )
go


