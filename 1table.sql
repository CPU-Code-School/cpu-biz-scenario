use RecruitingEducatorsCompanyDB
go

drop table if exists RecruitingEducatorsCompany
go

create table dbo.RecruitingEducatorsCompany(
EducatorsId int not null identity primary key,
FirstName Varchar(30) not null 
    constraint ck_Recruiting_firstname_cannot_be_blank check(Firstname <> ''),
LastName varchar(30) not null
    constraint ck_Recruiting_lastname_cannot_be_blank check(lastname <> ''),
DOB date not null
    constraint ck_Recruiting_dob_cannot_be_more_than_current_date check(DOB < getdate()),
Gender varchar(6)
    constraint ck_Recruiting_gender_must_be_either_male_or_female check(Gender in('male', 'female')),
CollegeAttended varchar(40) not null
    constraint ck_Recruiting_college_attended_cannot_be_blank check(CollegeAttended <> ''),
TitleOfDegree varchar(35) not null
    constraint ck_Recruiting_title_of_degree_cannot_be_blank check(TitleOfDegree <> ''),
Media varchar(20) not null 
    Constraint ck_Recruiters_media_cannot_be_blank check(Media <> ''),
DateContacted date not null 
    constraint ck_Recruiters_datecontacted_must_be_after_or_on_february_17_2017 check(DateContacted >= '02-17-2017'),
SchoolPlaced varchar(40) null
    constraint ck_Recruiters_school_placed_cannot_be_blank check (SchoolPlaced <> ''),
DateFoundJob date null
    constraint ck_Recruiters_Date_Found_job_cannot_be_blank check (DateFoundJob <> ''),
constraint ck_Recruiters_datefoundjob_must_be_greater_or_equal_datecontacted check (DateFoundJob >= DateContacted),
constraint ck_Recruiters_datecontacted_must_be_more_than_dob check (DateContacted > DOB),
constraint ck_Recruiters_either_school_placed_and_datefoundjob_both_null_or_both_not_null
    check((SchoolPlaced is null and DateFoundJob is null) or (SchoolPlaced is not null and DateFoundJob is not null))
)
go




