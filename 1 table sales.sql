use BikeShopDB
go
drop table if exists Sales
go
create table dbo.Sales(
	SaleId int not null identity primary key,
	CustomerName varchar (30) not null
		constraint c_sales_customer_name_cannot_be_blank check(CustomerName > ''),   
	CustomerAddress varchar (70) not null, 
		constraint c_sales_customer_address_cannot_be_blank check(CustomerAddress > ''),   
	CustomerPhoneNumber varchar (16) not null
		constraint c_sales_customer_phone_number_cannot_be_blank check(CustomerPhoneNumber > ''),
		constraint c_sales_customer_phone_number_must_be_numeric check(CustomerPhoneNumber not like '%[^0-9]%'),   
	BikeCompany varchar (15) not null
		constraint c_sales_company_cannot_be_blank check(BikeCompany > ''), 
	BikeSize char (3) not null
		constraint c_sales_size_cannot_be_blank check(BikeSize > ''),
	BikeColor varchar (10) not null
		constraint c_sales_color_cannot_be_blank check(BikeColor > ''), 
	DatePurchased date not null
		constraint c_sales_date_purchased_cannot_be_future check(DatePurchased <= getdate() ), 
		constraint c_sales_date_purchased_not_before_march_2022 check(DatePurchased > '03-01-2022'),
	PurchasePrice decimal (6,2)
		constraint c_sales_purchase_price_not_more_than_3000 check(PurchasePrice <= 3000),
		constraint c_sales_purchase_price_cannot_be_0 check(PurchasePrice > 0), 
	New bit not null, 
	ConditionWhenReceived varchar (15) null
		constraint c_sales_cond_when_rcvd_either_Perfect_Minor_Fixup_Major_Fixup_or_Restoration
			check(conditionWhenReceived in ('Perfect', 'Minor Fixup', 'Major Fixup', 'Restoration')), 
	DateSold date not null
		constraint c_sales_date_sold_cannot_be_future check(DateSold <= getdate()), 
	Season varchar (6) not null
		constraint c_sales_season_either_summer_winter_fall_or_spring check(Season in ('summer', 'winter', 'fall', 'spring') ), 
	SoldPrice decimal (6,2) not null
		constraint c_sales_sold_price_not_more_than_3000 check(SoldPrice <= 3000),
		constraint c_sales_sold_price_cannot_be_0 check(SoldPrice > 0),
			constraint c_sales_date_sold_cannot_be_before_date_purchased check(DateSold >= DatePurchased),
			constraint c_sales_cond_either_new_and_no_condition_or_used_with_condition 
				check((New = 1 and ConditionWhenReceived is null) or (New = 0 and ConditionWhenReceived is not null ))
		)
		--select * from sales
		