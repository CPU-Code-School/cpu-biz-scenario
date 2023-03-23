--Reports:
--1. I need to know how many students from each college we were able to find jobs for in under 2 weeks. 
--    This will help my company know which college's graduates we should try to attract to our company.
select e.CollegeAttended, AmntOfStudents = count(*)
from Educators e 
where datediff(day, DateContacted, DateFoundJob) < 14
group by e.CollegeAttended

--2. Who were we more successful in placing, males or females?
select top 1 e.Gender
from Educators e 
where e.DateFoundJob is not null
group by e.Gender
order by count(*) desc 

--3. On average, how many people contact us every day and how many people fnd out about us per form of media. 
--    This will help us decide which forms of media communication we should invest in.
select AvgPplContactedUs = convert(decimal(10,8), count(e.EducatorID)) / datediff(day, '02-17-2017', getdate()), e.Media
from Educators e 
group by e.Media

--4. On average, how many people do we succeed in placing per day?
select PplPlacedPerDay = convert(decimal(10,8), count(e.EducatorID)) / datediff(day, '02-17-2017', getdate())
from Educators e 
where e.DateFoundJob is not null

--5. How many educators get placed a day per type of education degree?
select PplPlacedPerDay = convert(decimal(10,8), count(e.EducatorID)) / datediff(day, '02-17-2017', getdate()), e.TitleOfDegree
from Educators e 
where e.DateFoundJob is not null
group by e.TitleOfDegree

--6. I need a list of the educators who reach out to us in the format of first name, last name, age, - degree.
select Educators = concat(firstname, ', ', lastname, ', ', (datediff(day, DOB, getdate()))/365,  ', - ', titleofdegree) 
from Educators e 