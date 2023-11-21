use CostumesDB 
go
drop table if exists dbo.CostumeStore 
go 

create table dbo.CostumeStore(
	CostumeId int not null identity primary key, 
	CustomerName varchar(60) not null constraint ck_CostumeStore_customer_name_cannot_be_blank check(CustomerName <> ''),
	Costume varchar(50) not null constraint ck_CostumeStore_costumes_bought_vannot_be_blank check(Costume <> ''),
	Size char(2) not null constraint ck_CostumeStore_size_must_be_XS_S_M_L_XL check(Size in ('XS','S','M','L','XL')),
	Amount int not null, 
	CostPrice as 
	case Size
		when 'XS' then 15
		when 'S' then 17
		when 'M' then 20
		when 'L' then 22
		when 'XL' then 25
	end persisted,
	SellPrice as 
	case Size
		when 'XS' then 20
		when 'S' then 22
		when 'M' then 25
		when 'L' then 27
		when 'XL' then 30
	end persisted,
	PricePaid int not null,
	Total as PricePaid * Amount persisted,
	DateBought date not null,
	DateSold date null constraint ck_CostumeStore_date_sold_must_be_after_January_1_2020 check(DateSold >= '2020-01-01'),
	constraint ck_CostumeStore_date_sold_cannot_be_before_date_bought check(DateSold >= DateBought),
	constraint ck_Costume_Store_price_paid_cannot_be_less_than_cost_price check(PricePaid >= CostPrice)
	)
