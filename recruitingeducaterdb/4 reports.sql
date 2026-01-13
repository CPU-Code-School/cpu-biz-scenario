
--Reports:
--1. I need to know how many students from each college we were able to find jobs for in under 2 weeks. 
    --This will help my company know which college's graduates we should try to attract to our company.
    select numofeducaters = count(*), e.college
    from EducatersInfo e
    where e.schoolplaced is not null and DATEDIFF(DAYOFYEAR, e.datecontacted, e.DateJobFound) < 14
    group by e.College
--2. Who were we more successful in placing, males or females?
select numplaced = count(*), e.gender
from EducatersInfo e
where e.DateJobFound is not NULL
group by e.gender
--3. On average, how many people contact us every day and how many people fnd out about us per form of media. 
   -- This will help us decide which forms of media communication we should invest in.
   SELECT media, DateContacted, perday = count(*)
   from EducatersInfo 
   group by Media, DateContacted

--4. On average, how many people do we succeed in placing per day?
select e.DateJobFound, count(*)
from EducatersInfo e
where e.DateJobFound is not null
group by e.DateJobFound


--5. How many educators get placed a day per type of education degree?
SELECT e.TitleOfDegree, e.DateJobFound , placedperday = count(*)
FROM EducatersInfo e
Group by e.TitleOfDegree, e.DateJobFound

--6. I need a list of the educators who reach out to us in the format of first name, last name, age, - degree.
Select Educaters = CONCAT(e.FirstName, ', ', e.LastName, ', ' , Datediff(year, DOB, getdate()), ' - ', e.TitleOfDegree ) 
from EducatersInfo e
