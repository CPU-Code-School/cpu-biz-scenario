use ShoeSalesDB 
go 

delete sales
go

insert sales(CustomerName, Age, PhoneNumber, Company, DateRecieved, DateSold, PricePaid, PriceSold, OrderReturns)
select inventorLastName + ', ' + inventorFirstName, 
YearInvented - YearBorn,
Concat('(',YearInvented - 1000, ')', left(cast(yeardied as varchar), 3), '-', YearBorn),
case Country
    when 'Germany' then 'SAS'
    when 'France' then 'Nike'
    when 'Italy' then 'Adidas'
    when 'Spain' then 'Florsheim'
    when 'UK' then 'Puma'
    when 'USA' then 'New Balance'
    when 'Canada' then 'Rockport'
    when 'Australia' then 'Reebok'
    else 'Unknown'
end,
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
cast(left(cast(yearborn as varchar), 3) as decimal(5,0)),
cast(left(cast(yeardied as varchar), 3) as decimal(6,0)) + (yeardied - yearborn),
  case 
    when (yeardied - yearborn) in (29, 31, 40) then 1
    else ''
  end

from RecordKeeperDB.dbo.invention

select * from sales