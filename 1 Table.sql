use CostumesDB 
go
drop table if exists dbo.CostumeStore 
go 

create table dbo.CostumeStore(
	CostumeId int not null identity primary key, 
	FirstName varchar(30) not null constraint ck_CostumeStore_first_name_cannot_be_blank check(FirstName <> ''),
	LastName varchar(30) not null constraint ck_CostumeStore_last_name_cannot_be_blank check(LastName <> ''),
	Costume varchar(50) not null 
		constraint ck_CostumeStore_costume_must_be_AmericanGirlDoll_Artist_BumbleBee_ColonialBoyGirl_Elephant_FireMan_PoliceMan_Princess_Zebra
			check(Costume in ('American Girl Doll','Artist','Bumble Bee','Colonial Boy','Colonial Girl','Elephant','Fire Man','Police Man','Princess','Zebra')),
	Size char(2) not null constraint ck_CostumeStore_size_must_be_XS_S_M_L_XL check(Size in ('XS','S','M','L','XL')),
	Amount int not null constraint ck_CostumeStore_amount_must_be_greater_than_zero check(Amount > 0),
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
	DateSold date null constraint ck_CostumeStore_date_sold_must_be_after_January_1_2020_and_not_later_than_current_date check(DateSold between '2020-01-01'and getdate()),
	constraint ck_CostumeStore_date_sold_cannot_be_before_date_bought check(DateSold >= DateBought),
	constraint ck_Costume_Store_price_paid_cannot_be_less_than_cost_price check(PricePaid >= CostPrice)
	)
