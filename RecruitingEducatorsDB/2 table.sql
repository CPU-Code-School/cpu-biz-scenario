use RecruitingEducatorsDB 
drop table if exists Educators 
go 
create table dbo.Educators(
    EducatorID int not null identity primary key, 
    FirstName varchar(20) not null 
        constraint c_First_Name_cannot_be_blank check(FirstName <> ''),
    LastName varchar(20) not null 
        constraint c_Last_Name_cannot_be_blank check(LastName <> ''),
    DOB date not null,
    Gender char(1) not null
        constraint c_Gender_must_be_M_or_F check(Gender in ('M','F') ),
    CollegeAttended varchar(40) not null 
        constraint c_College_Attended_cannot_be_blank check(CollegeAttended <> ''),
    TitleOfDegree varchar(50) not null 
        constraint c_Title_of_Degree_cannot_be_blank check(TitleOfDegree <> ''),
    Media varchar(20) not null
        constraint c_Media_is_either_magazine_or_newspaper_or_social_media_site_or_word_of_mouth check(Media in ('Magazine', 'Newspaper', 'Social media site', 'Word of mouth')),
    DateContacted date not null
        constraint c_Date_Contacted_not_before_Feb_17_2017_and_not_in_the_future check(DateContacted between '02/17/2017' and getdate()), 
    SchoolPlaced varchar(30) 
        constraint c_School_Placed_cannot_be_blank check(SchoolPlaced <> ''),
    DateFoundJob date,
    DaysTillJobFound as (datediff(day, DateContacted, DateFoundJob)) persisted,
            constraint c_DateFoundJob_and_SchoolPlaced_are_both_null_or_both_have_value check((SchoolPlaced is null and DateFoundJob is null) or (SchoolPlaced is not null and DateFoundJob is not null)),
            constraint c_DateContacted_is_after_DOB check(DOB <= DateContacted),
            constraint c_DateFoundJob_must_be_after_DateContacted_and_not_in_the_future check(DateFoundJob between DateContacted and getdate())
)          
go
--DOB, Feb17, DateContacted, DateFoundJob 
