use RealEstateDB
go
SELECT *
FROM RealEstate
ORDER BY
    SUBSTRING(HouseAddress, CHARINDEX(' ', HouseAddress) + 1, LEN(HouseAddress)),
    HouseAddress, Town

SELECT r.Realtor, *
from RealEstate r 
ORDER by r.Realtor

SELECT OnTheMarket = DATEDIFF(DAY, DateOnMarket, DateSold),
DateOnMarket, DateSold , * 
from RealEstate r 

SELECT MoreThenAsing = SoldOrsellingPrice - AskingPrice ,
AskingPrice, SoldOrsellingPrice, * 
from RealEstate r

