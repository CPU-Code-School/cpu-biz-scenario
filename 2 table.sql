use BicycleShopDb
go
drop table if exists dbo.Shop
go
create table dbo.Shop(
    BikeId int not null identity primary key,
    FirstName varchar(20) not null constraint c_Shop_first_name_cannot_be_blank check(FirstName > ''),
    LastName varchar(20) not null constraint c_Shop_last_name_cannot_be_blank check(LastName > ''),
    StreetAddress varchar(50) not null constraint c_Shop_street_address_cannot_be_blank check(StreetAddress > ''),
    PhoneNumber varchar(15) not null constraint c_Shop_phone_number_must_contain_digits_only check(isnumeric(PhoneNumber) = 1),
    BikeCompany varchar(30) not null constraint c_Shop_bike_company_cannot_be_blank check(BikeCompany > ''),
    BikeSize varchar(2) not null constraint c_Shop_bike_size_must_be_one_or_two_digits check(BikeSize like '[1-9]' or BikeSize like '[0-9][0-9]'),
    BikeColor varchar(15) not null constraint c_Shop_bike_color_cannot_be_blank check(BikeColor > ''),
    DatePurchased date not null constraint c_Shop_date_purchased_must_be_on_or_after_March_1_2022 check(DatePurchased >= '03-01-2022'),
    PurchasePrice decimal(6,2) not null,
    NewOrUsed varchar(4) not null constraint c_Shop_new_or_used_only_allows_new_or_used check(NewOrUsed in ('new', 'used')),
    ConditionWhenReceived varchar(11) null constraint c_Shop_condition_when_received_only_allows_perfect_minor_or_major_fixup_or_restoration
        check(ConditionWhenReceived in ('perfect', 'minor fixup', 'major fixup', 'restoration')),
    DateSold date not null,
    SeasonSold varchar(6) not null
        constraint c_Shop_season_sold_must_be_one_of_the_four_seasons_of_the_year check(SeasonSold in ('spring', 'summer', 'fall', 'winter')),
    SoldPrice decimal(6, 2) not null constraint c_Shop_sold_price_must_be_greater_than_zero check(SoldPrice > 0),
        constraint c_Shop_sold_price_cannot_be_greater_than_three_thousand check(SoldPrice <= 3000),
    constraint c_ConditionWhenReceived_must_have_entry_if_NewOrUsed_is_used_and_must_be_null_if_NewOrUsed_is_new
        check((NewOrUsed = 'new' and ConditionWhenReceived is null)
        or (NewOrUsed = 'used' and ConditionWhenReceived is not null)
        ),
    constraint c_DateSold_must_be_on_or_after_DatePurchased check(DateSold >= DatePurchased)
)