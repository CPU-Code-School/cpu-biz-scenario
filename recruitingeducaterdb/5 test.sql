
--test constraints

insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint C_Recruiting_Educaters_First_Name_not_blank check(FirstName <> ''),
select '', 'Lynn', '9/13/2000', 'female', 'Excelsior College', 'BA in Mathematics Education', 'magazine', '5/2/2022', 'Brooklyn High School', '5/9/2022'

insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint C_Recruiting_Educaters_Last_Name_not_blank check(lastname <> ''),
select 'Josh', '', '4/23/1998', 'male', 'Georgia State University', 'MA in Social Studies Education', 'social media site', '2/12/2022', 'Manhattan Elementary School', '5/9/2022'

insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint c_recruiting_educaters_gender_must_be_either_female_or_male check(gender in ('female', 'male')),
 select 'Charles', 'Smith', '7/9/1994', 'ma', 'Excelsior College', 'PhD in Education', 'social media site', '8/7/2021', 'New York City Day School', '8/12/2021'
 
insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
 --constraint C_Recruiting_Educaters_College_not_blank check(college <> ''),
 select 'Samantha', 'Brown', '9/24/1999', 'female', '', 'BA in English Education', 'newspaper', '5/23/2021', 'Brooklyn High School', '7/30/2021'
 
insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
 -- constraint C_Recruiting_Educaters_titel_of_degree_not_blank_and_starts_with_bachechelors_masters_or_PhD 
 select 'Howard', 'Lang', '8/4/1998', 'male', 'Georgia State University', 'MAD in History Education', 'word of mouth', '1/31/2022', null, null
 
insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint C_Recruiting_Educaters_Media_not_blank_and_can_only_enter_magazines_newspaper_social_media_sites_or_word_of_mouth
 select 'Sarah', 'Blanks', '10/20/1995', 'female', 'Columbia University', 'MA in Science Education', 'social media katerina', '5/23/2020', 'New York City Day School', '8/17/2020'

insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint _Recruiting_Educaters_date_contacted_not_before_February_17_2017 check(datecontacted >= '2017-02-17'),
 select 'Ella', 'Lewis', '8/22/2010', 'female', 'Excelsior College', 'BA in English Education', 'word of mouth', '1/1/2017', null, null
 
 
insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint C_Recruiting_Educaters_school_placed_not_blank check((schoolplaced <> ''and (schoolplaced like 'Brooklyn%' or schoolplaced like 'Manhattan%' or schoolplaced like 'New York%'))),
select 'Julie', 'Goldman', '3/30/1997', 'Female', 'University of Denver', 'MA in Social Studies Education', 'social media', '7/14/2020', ' Elementary School', '8/17/2020'


insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint C_Recruiting_Educaters_eather_school_placed_and_date_job_found_are_both_null_or_both_not_null
select 'Ella', 'Lewis', '8/22/2000', 'female', 'Excelsior College', 'BA in English Education', 'word of mouth', '4/1/2022', null, '8/17/2025'

insert EducatersInfo(Firstname, lastname, DOB, gender, college, titleofdegree, Media, datecontacted, schoolplaced, Datejobfound)
--constraint C_Recruiting_Educaters_date_contacted_is_between_date_job_found_and_DOB 
select 'Julie', 'Goldman', '3/30/2021', 'Female', 'University of Denver', 'MA in Social Studies Education', 'social media', '7/15/2020', 'Manhattan Elementary School', '7/14/2020'
select * from EducatersInfo