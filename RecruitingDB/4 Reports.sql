/*
Reports:
1. I need to know how many students from each college we were able to find jobs for in under 2 weeks. 
    This will help my company know which college's graduates we should try to attract to our company.
*/

select e.CollegeAttended, count(*) as NumberOfGraduates
from Educator e
where datediff(day, e.DateContacted, e.DateFoundJob) < 14
group by e.CollegeAttended

/*
2. Who were we more successful in placing, males or females?
*/

select e.Gender, count(*) as GraduatesPlaced
from Educator e
where e.DateFoundJob is not null
group by e.Gender
order by GraduatesPlaced desc

/*
3. On average, how many people contact us every day and how many people find out about us per form of media. 
    This will help us decide which forms of media communication we should invest in.
*/

select *
from Educator e

/*
4. On average, how many people do we succeed in placing per day?
*/

select *
from Educator e

/*
5. How many educators get placed a day per type of education degree?
*/

select *
from Educator e

/*
6. I need a list of the educators who reach out to us in the format of first name, last name, age, - degree.
*/

select *
from Educator e