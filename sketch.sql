/*
    CustomerID 
        int not null pk,
    FirstName
        varchar(50)
        not null 
        constraint ck_Customer_First_name_is_not_blank CHECK (FirstName <> ''),
    LastName
        varchar(50)
        not null 
        constraint ck_Customer_Last_name_is_not_blank CHECK (LastName <> ''),
    PhoneNumber
        varchar(15) 
        not null 
        not blank,
    Address
        varchar(50)
        not null 
        not blank,
    Frequency
        varchar(8)
        not null 
        check if weekly or biweekly, 
    PricePerHour
        num
        not more than 53,
    Hours
        num
        not null,
    StartDate
        date, 
        not null
        not blank,
    EndDate
        date
        null,
    constraints: 
        check start date is not afer end date
        check that pricerperhour times hour is not more than 424.00
*/