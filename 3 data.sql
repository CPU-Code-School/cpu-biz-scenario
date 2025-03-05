use ShoeDB
go
insert ShoeInventory(CustomerName, Age, PhoneNumber, DateReceived, DateSold, PriceBought, PriceSold, Company, Returned)
    select
    CustomerName = concat(i.InventorLastName, ', ', i.InventorFirstName),
    Age = i.AgeatTimeofInvention,
    PhoneNumber= concat('(',i.YearInvented- 1000, ')', reverse(substring(convert(varchar, i.YearDied, 110), 1, 3)), '-', i.YearBorn),
    DateReceived = convert(varchar, concat('01-01-20', substring(convert(varchar, i.YearBorn, 110), 1, 2)), 110),
    DateSold = concat(
        case
            when substring(i.InventionName, 1, 1) between 'a' and 'd' then '02'
            when substring(i.InventionName, 1, 1) between 'e' and 'h' then '04'
            when substring(i.InventionName, 1, 1) between 'i' and 'l' then '06'
            when substring(i.InventionName, 1, 1) between 'm' and 'p' then '08'
            when substring(i.InventionName, 1, 1) between 'q' and 'u' then '10'
            else '12'
        end, 
        '-', 
        concat('1', substring(convert(varchar(4), i.YearDied), 4, 1)), 
        '-',
        concat('20', substring(convert(varchar(4), i.YearDied), 1, 2))
    ),
    PriceBought = substring(convert(varchar, i.YearBorn, 110), 1, 3),
    PriceSold= AgeAtTimeOfInvention + substring(convert(varchar, i.YearDied, 110), 1, 3),
    Company =
        case
            when i.Country = 'England' then 'SAS'
            when i.Country = 'France' then 'Nike'
            when i.Country in ('Germany', 'Gerrmany') then 'Adidas'
            when i.Country = 'Great Britain' then 'Florsheim'
            when i.Country = 'Holland' then 'Puma'
            when i.Country = 'Romania' then 'New Balance'
            when i.Country = 'Sweden' then 'Rockport'
            when i.Country = 'USA' then 'Reebok'
        end,
    Returned =
        case 
            when AgeAtTimeOfInvention in (29,31,40) then 1
            else 0
        end
from RecordKeeperDB.dbo.Invention i;
