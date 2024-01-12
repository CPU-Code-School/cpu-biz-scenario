use petgroomingdb
go
delete petGroomerData
go
insert petGroomerData(firstName, lastName, customerAddress, petType, petName, pricePerGrooming, frequencyOfService, datePickedUp)
select 'Bry-Ann', 'Yates', '326 34th St. S', 'rabbit', 'Longears', 30, 'weekly', '08-21-2019'
union select 'Meg', 'Ross', '1719 Beach Dr SE', 'dog', 'Trooper', 55, 'biweekly', '01-19-2020'
union select 'Brayanna', 'Mille', '2255 22 Ave N', 'rabbit', 'Hunny Bunny', 40, 'biweekly', '11-5-2019'
union select 'Brayanna', 'Mille', '2255 22 Ave N', 'rabbit', 'Hazel', 40, 'biweekly', '11-5-2019'
union select 'Marianne', 'Griffin', '312 Sand Pine Ln', 'dog', 'Mr. Stich', 60, 'biweekly', '06-20-2021'
union select 'Mike', 'Smith', '145 Menhaden St', 'guinea pig', 'Pippin', 30, 'biweekly', '05-30-2022'
union select 'Bethany', 'Singer', '1818 Bay St', 'cat', 'Dingus', 40, 'biweekly', '06-7-2022'
union select 'Bobbi', 'Welker', '324 Wilcox St', 'dog', 'Moose', 45, 'weekly', '03-14-2021'
union select 'Bobbi', 'Welker', '324 Wilcox St', 'dog', 'Piper', 60, 'weekly', '03-14-2021'
union select 'Bobbi', 'Welker', '324 Wilcox St', 'dog', 'Kipper', 65, 'weekly', '03-14-2021'
union select 'Mark', 'Doppler', '5329 53rd St', 'guinea pig', 'Ginger', 35, 'biweekly', '10-29-2019'
union select 'Tara', 'Hamid', '210 Sunrise Dr.', 'rabbit', 'Holly', 50, 'biweekly', '12-12-2021'
union select 'Leni', 'Baker', '3210 Gandy Blvd.', 'cat', 'Pussy Willow', 55, 'weekly', '09-24-2019'
union select 'Leni', 'Baker', '3210 Gandy Blvd.', 'cat', 'Kitty Cat', 60, 'weekly', '09-24-2019'
union select 'Heather', 'Rieder', '937 MLK St.', 'rabbit', 'Hopper', 45, 'weekly', '02-2-2022'
union select 'Lee', 'Kleshinski', '4903 49th Ave', 'dog', 'Phillip', 60, 'weekly', '07-8-2021'
union select 'Tracy', 'Price', '9027 Juniper St', 'rabbit', 'Dopey', 55, 'biweekly', '09-30-2019'
union select 'Tracy', 'Price', '9027 Juniper St', 'guinea pig', 'Spicy', 40, 'biweekly', '09-30-2019'