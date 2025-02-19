 /*



insert RecruitingEducatorsCompany(FirstName, LastName, DOB, Gender, CollegeAttended, TitleOfDegree, Media, DateContacted, SchoolPlaced, DateFoundJob)

*/

--1. I need to know how many students from each college we were able to find jobs for in under 2 weeks. 
-- This will help my company know which college's graduates we should try to attract to our company.

select amountofstudents = count(*), r.CollegeAttended
from RecruitingEducatorsCompany r
where datediff(day, r.Datefoundjob, r.Datecontacted) < 14
group by r.CollegeAttended

--2. Who were we more successful in placing, males or females?

select amountpergender = count(*), r.gender
from RecruitingEducatorsCompany r
where r.DateFoundJob is not null
group by r.Gender

--3. On average, how many people contact us every day and how many people find out about us per form of media. 
    --This will help us decide which forms of media communication we should invest in.
select countperday = count(*), r.datecontacted
from RecruitingEducatorsCompany r 
group by r.datecontacted

select countpermedia = count(*), r.media
from RecruitingEducatorsCompany r
group by r.media


--4. On average, how many people do we succeed in placing per day?

select amountpplplaced = count(*), r.datefoundjob
from RecruitingEducatorsCompany r 
where r.datefoundjob is not null
group by r.datefoundjob

--5. How many educators get placed a day per type of education degree?

select day = day(r.datefoundjob), placedperday = count(day(r.DateFoundJob)), r.TitleOfDegree
from RecruitingEducatorsCompany r
where r.datefoundjob is not null
group by day(r.DateFoundJob), r.titleofdegree


--6. I need a list of the educators who reach out to us in the format of first name, last name, age, - degree.

select educators = concat(r.firstname, ', ', r.lastname, ', ', datediff(year, r.dob, getdate()), ', ', '- ', r.TitleOfDegree)
from RecruitingEducatorsCompany r