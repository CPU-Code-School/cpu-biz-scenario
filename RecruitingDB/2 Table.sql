use RecruitingDB
go
drop table if exists Educator
go
create table dbo.Educator(
    EducatorID int not null identity primary key,
    FirstName varchar(30) not null constraint c_Educator_first_name_not_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint c_Educator_last_name_not_blank check(LastName <> ''),
    DOB date not null,
    Gender varchar(6) not null constraint c_Educator_gender_must_either_be_M_or_F check(Gender in ('Male', 'Female')),
    CollegeAttended varchar(40) not null constraint c_Educator_college_attended_not_blank check(CollegeAttended <> ''),
    DegreeTitle varchar(30) not null constraint c_Educator_degree_title_not_blank check(DegreeTitle <> ''),
    Media varchar(20) not null constraint c_Educator_media_not_blank check(Media <> ''),
    DateContacted date not null constraint c_Educator_date_contracted_not_before_Feb_2_2017 check(DateContacted > '2/17/2017'),
    SchoolPlaced varchar(40) null,
    DateFoundJob date null, --must be after Date contacted
    constraint c_Educator_date_found_job_must_be_after_date_contracted check(DateFoundJob > DateContacted)
)