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
    PhoneNum char(12) not null 
            constraint c_Customer_phone_num_cannot_be_blank check(PhoneNum <> ''),
    HomeAddress varchar(40) not null 
            constraint c_Customer_home_address_cannot_be_blank check(HomeAddress <> '')
            constraint u_Customer_home_address_must_be_unique unique,
    Frequency varchar(10)
            constraint c_Customer_frequency_cannot_be_blank check(Frequency <> ''),
    RatePerHour decimal(5,2),
    AvgTime int not null 
            constraint c_Customer_avg_time_cannot_be_blank check(AvgTime <> ''),
    StartDate date not null 
            constraint c_Customer_start_date_must_be_after_January_1_2017 check(StartDate > '01-01-2017'),
    EndDate date, 
            constraint c_Customer_end_date_must_be_after_start_date check(StartDate < EndDate)
)
go

alter table Customer drop column if exists PricePerMonth 
go 
alter table Customer add PricePerMonth as 
   case Frequency 
   when 'weekly' then ((RatePerHour * AvgTime) * 4)
   else ((RatePerHour * AvgTime) * 4)
   end
