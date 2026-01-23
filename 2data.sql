use RecruitingEducatorsCompanyDB
go 
delete RecruitingEducatorsCompany

insert RecruitingEducatorsCompany(FirstName, LastName, DOB, Gender, CollegeAttended, TitleOfDegree, Media, DateContacted, SchoolPlaced, DateFoundJob)
select 'Mary', 'Lynn', '9/13/2000', 'female', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'
union select 'Josh', 'Frank', '4/23/1998', 'male', 'Georgia State University', 'MA in Social Studies Education', 'social media site', '2/12/2022', 'Manhattan Elementary School', '5/9/2022'
union select 'Charles', 'Smith', '7/9/1994', 'male', 'Excelsior College', 'PhD in Education', 'social media site', '8/7/2021', 'New York City Day School', '8/12/2021'
union select 'Samantha', 'Brown', '9/24/1999', 'female', 'Columbia University', 'BA in English Education', 'newspaper', '5/23/2021', 'Brooklyn High School', '7/30/2021'
union select 'Howard', 'Lang', '8/4/1998', 'male', 'Georgia State University', 'MA in History Education', 'word of mouth', '1/31/2022', null, null
union select 'Sarah', 'Blanks', '10/20/1995', 'female', 'Columbia University', 'MA in Science Education', 'social media', '5/23/2020', 'New York City Day School', '8/17/2020'
union select 'Ella', 'Lewis', '8/22/2000', 'female', 'Excelsior College', 'BA in English Education', 'word of mouth', '4/1/2022', null, null
union select 'Julie', 'Goldman', '3/30/1997', 'Female', 'University of Denver', 'MA in Social Studies Education', 'social media', '7/14/2020', 'Manhattan Elementary School', '8/17/2020'