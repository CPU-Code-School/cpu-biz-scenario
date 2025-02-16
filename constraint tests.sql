		--name blank
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select '', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--adress blank
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--Phone number blank
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', '', 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--phone number numeric
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 'cvb4259501', 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--company blank
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, '', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--size blank
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--color blank
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', '', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--date purchased future
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2025-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--not before Mar '22
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2021-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $220.00
		--price above 3000
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $3001.00, 1, null, '2022-09-15', 'Summer', $220.00
		--price 0
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $0.00, 1, null, '2022-09-15', 'Summer', $220.00
		--bit null
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, null, null, '2022-09-15', 'Summer', $220.00
		--condition only as specified
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 0, 'needs work', '2022-09-15', 'Summer', $220.00
		--date sold future
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2025-03-15', 'Summer', $220.00
		--season as specified only
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Autumn', $220.00
		--sold price above 3000
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $3001.00
		--sold price 0
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-09-15', 'Summer', $0.00
		--date sold before purchase
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, null, '2022-06-15', 'Summer', $220.00
		--not new and null
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 0, null, '2022-09-15', 'Summer', $220.00
		--new and condition
		insert sales (CustomerName, CustomerAddress, CustomerPhoneNumber, BikeCompany, BikeSize, BikeColor, DatePurchased, PurchasePrice, New, ConditionWhenReceived, DateSold, Season, SoldPrice)
		select 'Shmuel Bitton', '4 Sparrow Drive Spring Valley NY 10977', 8454259501, 'Schwinn', '24"', 'Black', '2022-07-20', $110.00, 1, 'perfect', '2022-09-15', 'Summer', $220.00
