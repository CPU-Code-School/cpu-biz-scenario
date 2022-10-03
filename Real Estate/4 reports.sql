-- 1) I want a report of all the houses sorted by the block and then by the town/city

SELECT *
FROM House h
ORDER BY h.AddressStreet, h.AddressTown

-- 2) I want a report of all the houses sorted by realtor

SELECT *
FROM House h
ORDER BY h.RealtorAgent

-- 3) a report of how long it took for each house to sell

SELECT WeeksToSell = DATEDIFF(WEEK, h.MarketDate, h.SoldDate), h.AddressNo, h.AddressStreet, h.AddressTown
FROM House h
WHERE h.SoldDate IS NOT NULL

-- 4) the price difference from the asking price to the sold price

SELECT PriceDifference = h.SoldPrice - h.AskingPrice, h.AskingPrice, h.SoldPrice, h.AddressNo, h.AddressStreet, h.AddressTown
FROM House h
WHERE h.SoldPrice IS NOT NULL