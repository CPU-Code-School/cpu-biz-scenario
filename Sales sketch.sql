/*
	SaleId int not null identity 
	CustomerName varchar (30) not null not blank
	CustomerAddress varchar (70) not null not blank, 
	CustomerPhoneNumber varchar (16) not null not blank numeric
	BikeCompany varchar (15) not null not blank
	BikeSize char (3) not null not blank
	BikeColor varchar (10) not null not blank
	DatePurchased date not null not before Mar '22 not future
	PurchasePrice decimal (6,2) more than 0 up to 3000	
	New bit not null, 
	ConditionWhenReceived varchar (15) null only Perfect, Minor Fixup, Major Fixup, or Restoration	 
	DateSold date not null not future	
	Season varchar (6) not null only season names 
	SoldPrice decimal (6,2) not null more than 0 up to 3000
	constraint sold not before purchase
	either new and null or not new and cond
/*