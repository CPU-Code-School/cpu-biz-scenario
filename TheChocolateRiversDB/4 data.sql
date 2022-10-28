go
use ChocolateRiverDB
go
delete Chocolate
go

insert Chocolate (ChocType)
select 
--ChocType
case  m.Medal 
when 'gold' then 'Solid Block'
when 'silver' then 'Chocolate Trouffles'
when 'bronze' then 'Chocolate Candy Bar'
end


from RecordKeeperDB.dbo.Medalist m


--test constraints (bad data)
--ChocType not null / ck_Chocolate_type_must_be_solid_block_or_chocolate_troufles_or_chocolate_candy_bar
--union select null
--union select 'troufles'





select * from Chocolate c
