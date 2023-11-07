insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select null, 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', null, '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', null, '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', null, 'biweekly', $25, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', null, $25, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', null , 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, null, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, null, null

--constraint ck_Customer_First_name_is_not_blank CHECK (FirstName <> ''),
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select '', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', null

--constraint ck_Customer_Last_name_is_not_blank CHECK (LastName <> ''), 
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', '', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', null

--constraint ck_Customer_Phone_Number_is_not_blank CHECK (PhoneNumber <> ''), 
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', ' ', '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', null

--constraint ck_Customer_Address_is_not_blank CHECK (CustomerAddress <> ''), 
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', ' ', 'biweekly', $25, 5, '04-04-2017', null

--constraint ck_Customer_frequency_must_be_either_weekly_or_biweekly check (frequency in ('Weekly', 'BiWeekly')), 
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', ' ', $25, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biwekly', $25, 5, '04-04-2017', null

--CONSTRAINT ck_Customer_PricePerHour_is_between_0_and_53 check (PricePerHour between 0 and 53),
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', -1, 5, '04-04-2017', null

insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $60, 5, '04-04-2017', null

--CONSTRAINT ck_Customer_TimeinHours_is_between_greater_than_0 check (TimeinHours >0 ),
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, -1, '04-04-2017', null

--CONSTRAINT ck_Customer_Satrt_date_is_not_blank CHECK (startdate <> ''),
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, ' ', null

--constraint ck_start_date_is_before_end_date check (StartDate < EndDate),
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $25, 5, '04-04-2017', '01-01-2016'

--constraint ck_price_per_hour_times_hours_is_less_than_424 check (PricePerHour * TimeinHours < 424)
insert Customer(FirstName, LastName, PhoneNumber, CustomerAddress, Frequency, PricePerHour, TimeinHours, StartDate, EndDate)
select 'Tara', 'Hughes', '727 456 2346', '3478 71st Ave N', 'biweekly', $45, 10, '04-04-2017', null



