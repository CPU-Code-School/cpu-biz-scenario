use CleaningDB 
go 

drop table if exists dbo.Customer 
go
create table dbo.Customer(
    CustomerID int not null identity primary key,
    FirstName varchar(20) not null 
            constraint c_Customer_first_name_cannot_be_blank check(FirstName <> ''),
    LastName varchar(20) not null 
            constraint c_Customer_last_name_cannot_be_blank check(LastName <> ''),
    PhoneNum varchar(15) not null 
            constraint c_Customer_phone_num_cannot_be_blank check(PhoneNum <> ''),
    HomeAddress varchar(40) not null 
            constraint c_Customer_home_address_cannot_be_blank check(HomeAddress <> '')
            constraint u_Customer_home_address_must_be_unique unique,
    Frequency varchar(10)
            constraint c_Customer_frequency_must_be_weekly_or_biweekly check(Frequency in ('weekly', 'bi weekly')),
    RatePerHour decimal(5,2)
            constraint c_Customer_rate_per_hour_must_be_35_or_less check(RatePerHour <= 35.00),
    AvgTime decimal(4,2) not null 
            constraint c_Customer_avg_time_must_be_greater_than_zero check(AvgTime > 00.00),
    StartDate date not null 
            constraint c_Customer_start_date_must_be_after_January_15_2017 check(StartDate > '01-05-2017'),
    EndDate date null, 
    PricePerMonth as 
        case Frequency 
           when 'weekly' then ((RatePerHour * AvgTime) * 4) 
           else ((RatePerHour * AvgTime) * 2) 
        end,
    constraint c_Customer_end_date_must_be_after_start_date check(StartDate < EndDate)
)
go


