use FlyAirDB
go
drop table if exists FlightInfo
go 
create table dbo.FlightInfo (
    FlightInfoID int primary key not null identity
)