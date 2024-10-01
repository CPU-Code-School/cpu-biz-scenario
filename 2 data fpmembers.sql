use FitPlexDB
go 

delete Member
go

Insert Member
    (MemberFirstName, MemberLastName, MemberPhoneNum, MemberInitialWeightLb, MemberGoalWeightLb, MemberCurrentWeightLb, MemberBMI, 
MembershipStartDate, MembershipEndDate, SessionDateAndTime, MembershipType, PaymentStatus)

select 'Dorothy', 'Dow', '540-1236', 180, 150, 165, 28.0, '04-01-2024', '07-01-2024', '07-01-2024 9:00:00', 'Semi-annual', 'Paid' 
union select 'John', 'Smith', '540-9338', 230, 180, 180, 26.9, '02-24-2023', '02-24-2023', '02-24-2023 15:00:00', 'annual', 'Paid'
union select 'Elsy', 'Johnson', '826-6940', 130, 120, 125, 28.2, '07-15-2024', '08-15-2024', '07-30-2024 10:15:00', 'monthly', 'Not Paid'
union select 'Alice', 'McCormick', '362-3286', 150, 110, 120,  27.6, '09-15-2023', '09-15-2024',  '07-28-2024 13:30:00', 'annual', 'Paid'
	