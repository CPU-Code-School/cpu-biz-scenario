
-- constraint price sold and buyer either both blank or both have a value
INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT    176, 'Hadassah Lane', 'Lakewood', 'duplex', 2550, 3049.2, 5, 2.5, 'Greenview Equities, LLC', 'shlomo press', 'Moshe Celnik', null, '5/3/2021', 549000, 600000, null

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          '', 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 


INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, '', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', '', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', '', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 0, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, '', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', '', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', '', 'Rachel Gestetner', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', '', '1/12/2021', 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', null, 450000, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 0, 475000, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, 0, '2/22/2021' 

INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', 'Rachel Gestetner', '1/12/2021', 450000, null, '2/22/2021' 


INSERT      House(AddressNo, AddressStreet, AddressTown, HouseType, HouseSqFoot, LotSqFoot, Bedrooms, Bathrooms, Seller, SellerContact, RealtorAgent, Buyer, MarketDate, AskingPrice, SoldPrice, SoldDate)
SELECT          5, 'Lynn Drive', 'Toms River', 'Colonial', 3000, 42000, 4 , 2.5, 'Lynn Drive, LLC', 'Yaakov Fishman', 'Rivka Harnik', '', '1/12/2021', 450000, null, '2/22/2021'