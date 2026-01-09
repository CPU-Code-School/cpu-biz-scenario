use ShoeStoreDB 
go 

delete store
go

insert store(CustomerName, Age, PhoneNumber, Company, DateRecieved, DateSold, PricePaid, PriceSold, OrderReturns)
select inventorLastName + ', ' + inventorFirstName, 
YearInvented - YearBorn,
Concat('(',YearInvented - 1000, ')', left(cast(yeardied as varchar), 3), '-', YearBorn),
country,
  datefromparts(
    cast(concat('20', left(cast(yearborn as varchar), 2)) as int),
    1,
    1
  ),
    datefromparts(
    cast(concat('20', left(cast(yeardied as varchar), 2)) as int),
    case 
      when left(lower(inventionName), 1) between 'a' and 'd' then 2
      when left(lower(inventionName), 1) between 'e' and 'h' then 4
      when left(lower(inventionName), 1) between 'i' and 'l' then 6
      when left(lower(inventionName), 1) between 'm' and 'p' then 8
      when left(lower(inventionName), 1) between 'q' and 'u' then 10
      when left(lower(inventionName), 1) between 'v' and 'z' then 12
      else 1
    end,
    cast(concat('1', right(cast(yeardied as varchar), 1)) as int)
  ),
CAST(LEFT(CAST(yearborn AS VARCHAR), 3) AS DECIMAL(5,0)),
CAST(LEFT(CAST(yeardied AS VARCHAR), 3) AS DECIMAL(6,0)) 
  + (yeardied - yearborn),
  CASE 
    WHEN (yeardied - yearborn) IN (29, 31, 40) THEN 'Refunded'
    ELSE ''
  END

from RecordKeeperDB.dbo.invention