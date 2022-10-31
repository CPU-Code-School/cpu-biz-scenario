
/*
buyer's name varchar 50 not null not blank
owner's name varchhar 50 not null not blank
realtor's name varchar 50 not null not blank
address number int not null not blank
address street varchar 30 not null not blank
town varchar 30 not null not blank
house type varchar 15 not null not blank
    in (bi-level, colonial, ranch, split-level, duplex, townhouse, vacant land, apartment)
house squarefootage int not null not blank
lot squarefootege int not null not blank
number of bathrooms decimal (2,1) not null not blank
number of bedrooms intnot null not blank
date on market date not null not blank
    default to date sold 
    allow date that passed but not future date
date in system date not null not blank
    current date
sold? bit not null
date closed date yes null yes blank
    allow date that passed but not future date
price asked decimal(7,2) not null not blank
    must be greater than $100,000.00
price sold decimal(7,2) not null yes blank
    must be greater than $100,000.00
in contract? bit not null not blank

date on market before or same as date sold
either price sold and date closed filled in or both blank
price sold > price asked
*/
