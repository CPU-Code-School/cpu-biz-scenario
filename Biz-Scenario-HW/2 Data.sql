use master
go
insert FitPlex (Member, ContactNumber, InitialWeight, GoalWeight, CurrentWeight, BMI, StartDate, EndDate, SessionDate, SessionTime, MembershipType, PaymentStatus)
select  'Dorothy Dow', '540-1236', 180 , 150 , 165 , 28.0, '04/01/2024', '07/01/2024', '07/01/2024', '9:00 A.M.', 'Semi-annual', 'Paid'
--union all 
--select 'John Smith', '540-9338', 230 , 180 , 180 , 26.9, '02/24/2022', '02/24/2023', '02/24/2023',  '3:00 P.M.', 'annual', 'Paid'
-- startdate is before 12/01/2022
union all 
SELECT 'Elsy Johnson', '826-6940', 130 , 120 , 125 , 28.2, '07/15/2024', '08/15/2024', '07/30/2024', '10:15 A.M.', 'monthly', 'Not Paid'
union all 
SELECT 'Alice McCormick', '362-3286', 150 , 110 , 120 ,  27.6, '09/15/2023', '09/15/2024',  '07/28/2024', '1:30 P.M.', 'annual', 'Paid'