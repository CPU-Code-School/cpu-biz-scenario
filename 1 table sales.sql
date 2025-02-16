use BikeShopDB
go
drop table if exists Sales
go
create table dbo.Sales(
	SaleId int not null identity primary key,
	CustomerName varchar (30) not null
		constraint c_sales_customer_name_cannot_be_blank check(CustomerName > ''),   
	CustomerAddress varchar (50) not null, 
		constraint c_sales_customer_address_cannot_be_blank check(CustomerAddress > ''),   
	City varchar(15) not null
		constraint c_sales_city_cannot_be_blank check(City > ''),
	State varchar(15) not null
		constraint c_sales_state_cannot_be_blank check(State > ''),
	ZipCode Varchar(7) not null
		constraint c_sales_zip_code_cannot_be_blank check(ZipCode > ''),
	CustomerPhoneNumber varchar (16) not null
		constraint c_sales_customer_phone_number_cannot_be_blank check(CustomerPhoneNumber > ''),
		constraint c_sales_customer_phone_number_must_be_numeric check(CustomerPhoneNumber not like '%[^0-9]%'),   
	BikeCompany varchar (15) not null
		constraint c_sales_company_cannot_be_blank check(BikeCompany > ''), 
	BikeHeightInches int not null
		constraint c_sales_Bike_Height_Inches_more_than_0 check(BikeHeightInches > 0),
	BikeColor varchar (10) not null
		constraint c_sales_color_cannot_be_blank check(BikeColor > ''), 
	DatePurchased date not null
		constraint c_sales_date_purchased_between_march_2022_and_current check(DatePurchased between '03-01-2022' and getdate() ),
	PurchasePrice decimal (6,2)
		constraint c_sales_purchase_price_between_1_and_3000 check(PurchasePrice between 1 and 3000), 
	New bit not null, 
	ConditionWhenReceived varchar (15) null
		constraint c_sales_cond_when_received_either_Perfect_Minor_Fixup_Major_Fixup_or_Restoration
			check(conditionWhenReceived in ('Perfect', 'Minor Fixup', 'Major Fixup', 'Restoration')), 
	DateSold date not null
		constraint c_sales_date_sold_cannot_be_future check(DateSold <= getdate()), 
	Season varchar (6) not null
		constraint c_sales_season_either_summer_winter_fall_or_spring check(Season in ('summer', 'winter', 'fall', 'spring') ), 
	SoldPrice decimal (6,2) not null
		constraint c_sales_sold_price_between_1_and_3000 check(SoldPrice between 1 and 3000),
			constraint c_sales_date_sold_cannot_be_before_date_purchased check(DateSold >= DatePurchased),
			constraint c_sales_cond_either_new_and_no_condition_or_used_with_condition 
				check((New = 1 and ConditionWhenReceived is null) or (New = 0 and ConditionWhenReceived is not null ))
		)
		--select * from sales
		