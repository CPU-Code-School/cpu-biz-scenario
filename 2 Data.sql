use PetDB
go

delete Pet 
go

Insert Pet(OwnerName, OwnerAddress, PetType, PetName, Price, Frequency, FirstServiceDate, Active)
Select 'Bry-Ann Yates', '326 34th St. S', 'rabbit', 'Longears', 30, 'weekly', '2019-8-21', 1
Union select 'Meg Ross', '1719 Beach Dr SE', 'dog', 'Trooper', 55, 'biweekly', '2020-1-19', 1
Union select 'Brayanna Mille', '2255 22 Ave N', 'rabbit', 'Hunny Bunny', 40, 'biweekly', '2019-11-5', 1
Union select 'Brayanna Mille', '2255 22 Ave N', 'rabbit', 'Hazel', 40, 'biweekly', '2019-11-5', 1
Union select 'Marianne Griffin', '312 Sand Pine Ln', 'dog', 'Mr. Stich', 60, 'biweekly', '2021-6-20', 1
Union select 'Mike Smith', '145 Menhaden St', 'guinea pig', 'Pippin', 30, 'biweekly', '2022-4-30', 1
Union select 'Bethany Singer', '1818 Bay St', 'cat', 'Dingus', 40, 'biweekly', '2022-6-7', 1
Union select 'Bobbi Welker', '324 Wilcox St', 'dog', 'Moose', 45, 'weekly', '2021-3-14', 1
Union select 'Bobbi Welker', '324 Wilcox St', 'dog', 'Piper', 60, 'weekly', '2021-3-14', 1
Union select 'Bobbi Welker', '324 Wilcox St', 'dog', 'Kipper', 65, 'weekly', '2021-3-14', 1
Union select 'Mark Doppler', '5329 53rd St', 'guinea pig', 'Ginger', 35, 'biweekly', '2019-10-29', 1
Union select 'Tara Hamid', '210 Sunrise Dr.', 'rabbit', 'Holly', 50, 'biweekly', '2021-12-12', 1
Union select 'Leni Baker', '3210 Gandy Blvd.', 'cat', 'Pussy Willow', 55, 'weekly', '2019-9-24', 1
Union select 'Leni Baker', '3210 Gandy Blvd.', 'cat', 'Kitty Cat', 60, 'weekly', '2019-9-24', 1
Union select 'Heather Rieder', '937 MLK St.', 'rabbit', 'Hopper', 45, 'weekly', '2022-2-2', 1
Union select 'Lee Kleshinski', '4903 49th Ave', 'dog', 'Phillip', 60, 'weekly', '2021-7-8', 1
Union select 'Tracy Price', '9027 Juniper St', 'rabbit', 'Dopey', 55, 'biweekly', '2019-9-30', 1
Union select 'Tracy Price', '9027 Juniper St', 'guinea pig', 'Spicy', 40, 'biweekly', '2019-9-30', 1

Select * from Pet