use RealEstateDB 
go 
drop table if exists House 
go 

create table dbo.House(
    HouseId int not null identity primary key,
    HouseAddress varchar(50) not null constraint c_House_house_address_cannot_be_blank check(HouseAddress <> ''),
    HouseTown varchar(25) not null constraint c_House_house_town_cannot_be_blank check(HouseTown <> ''),
    HouseType varchar(20) not null constraint c_House_house_type_must_be_bi_level_colonial_ranch_split_level_duplex_townhouse_apartment_or_vacant_land check(HouseType in('bi-level','colonial','ranch','split-level','duplex','townhouse','apartment','vacant land' )),
    SqrFootOfHouse int not null constraint c_House_sqr_foot_of_house_must_be_greater_than_0 check(SqrFootOfHouse > 0),
    SqrFootOfLot int not null constraint c_House_sqr_foot_of_lot_must_be_greater_than_0 check(SqrFootOfLot > 0),
    NumOfBath decimal(3,1) not null constraint c_House_num_of_bath_cannot_be_negative check(NumOfBath >= 0),
    NumOfBed decimal(3,1) not null constraint c_House_num_of_bed_cannot_be_negative check(NumOfBed >= 0),
    HouseOwner varchar(25) not null constraint c_House_house_owner_cannot_be_blank check(HouseOwner <> ''),
    Realtor varchar(25) not null constraint c_House_realtor_cannot_be_blank check(Realtor <> ''),
    Client varchar(25) not null constraint c_House_client_cannot_be_blank check(Client <> ''),
    DateOnMarket date not null,
    Buyer varchar(50) not null constraint d_House_buyer default '',
    DateSold date null constraint c_House_date_sold_must_be_on_or_before_current_date check(DateSold <= getdate()),
    AskingPrice decimal(9,2) not null constraint c_House_selling_price_must_be_between_100000_and_9900000 check(SellingPrice between 100000 and 9900000),,
    SellingPrice decimal(9,2) null constraint c_House_selling_price_must_be_between_100000_and_9900000 check(SellingPrice between 100000 and 9900000),
    InContract as case
                    when isnull(DateSold) then
                        case 
                            when isnull(AskingPrice) then 'not in contract'
                            else 'in contract'
                        end
                    else null
                  end
    DateInserted date not null,
    constraint c_House_date_inserted_cannot_be_before_date_on_market
    constraint c_House_date_sold_cannot_be_before_date_on_market check(DateSold >= DateOnMarket),
    constraint c_House_selling_price_cannot_be_less_than_asking_price check(SellingPrice >= AskingPrice)
)

