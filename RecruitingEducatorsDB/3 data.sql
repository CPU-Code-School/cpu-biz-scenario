use RecruitingEducatorsDB
go 
delete Educators 
go 
insert Educators(FirstName, LastName, DOB, Gender, CollegeAttended, TitleOfDegree, Media, DateContacted, SchoolPlaced, DateFoundJob)
select 'Mary', 'Lynn', '09/13/2000', 'f', 'Excelsior College', 'BA in Mathermatics Education', 'magazine', '05/02/2022', 'Brooklyn High School', '05/09/2022'
union select 'Josh', 'Frank', '04/23/1998', 'm', 'Georgia State University', 'MA in Social Studies Elementary', 'social media site', '02/12/2022', 'Manhattan Elementary School', '05/09/2022'
union select 'Charles', 'Smith', '07/09/1994', 'm', 'Excelsior College', 'PhD in Education', 'social media site', '08/07/2021', 'New York City Day School', '08/12/2021' 
union select 'Samantha', 'Brown', '9/24/1999', 'f', 'Columbia University', 'BA in English Education', 'newspaper', '5/23/2021', 'Brooklyn High School', '7/30/2021'
union select 'Howard', 'Lang', '8/4/1998', 'm', 'Georgia State University', 'MA in History Education', 'word of mouth', '1/31/2022', null, null
union select 'Sarah', 'Blanks', '10/20/1995', 'f', 'Columbia University', 'MA in Science Education', 'social media site', '5/23/2020', 'New York City Day School', '8/17/2020'
union select 'Ella', 'Lewis', '8/22/2000', 'f', 'Excelsior College', 'BA in English Education', 'word of mouth', '4/1/2022', null, null
union select 'Julie', 'Goldman', '3/30/1997', 'f', 'University of Denver', 'MA in Social Studies Education', 'social media site', '7/14/2020', 'Manhattan Elementary School', '8/17/2020'