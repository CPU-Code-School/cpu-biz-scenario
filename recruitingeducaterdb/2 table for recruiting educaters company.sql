
use RecruitingEducatersDB
drop table if exists EducatersInfo
go 
create table dbo.EducatersInfo(
    EducatersInfoID int not null identity primary key,
    FirstName varchar (25) not null
    constraint C_Recruiting_Educaters_First_Name_not_blank check(FirstName <> ''),
    LastName varchar (25) not null
    constraint C_Recruiting_Educaters_Last_Name_not_blank check(lastname <> ''),
    DOB date not null,
    Gender varchar (6) not null
    constraint c_recruiting_educaters_gender_must_be_either_female_or_male check(gender in ('female', 'male')),
    College varchar (30) not null
    constraint C_Recruiting_Educaters_College_not_blank check(college <> ''),
    TitleOfDegree varchar (35) not null
    constraint C_Recruiting_Educaters_title_of_degree_starts_with_bachechelors_masters_or_PhD 
    check(titleofdegree like 'MA %' or titleofdegree like 'BA %' or titleofdegree like 'PHD %'),
    Media varchar (35) not null
    constraint C_Recruiting_Educaters_Media_must_be_eather_magazines_newspaper_social_media_sites_or_word_of_mouth
    check (media in ('magazine', 'newspaper', 'social media site', 'word of mouth', 'social media')),
    DateContacted date not null
    constraint _Recruiting_Educaters_date_contacted_not_before_February_17_2017 check(datecontacted >= '2017-02-17'),
    SchoolPlaced varchar (30) null
    constraint C_Recruiting_Educaters_school_placed_located_in_Brooklyn_Manhattan_or_New_York 
    check((schoolplaced like 'Brooklyn%' or schoolplaced like 'Manhattan%' or schoolplaced like 'New York%' or schoolplaced like 'New Jersey%')),
    DateJobFound date null,
    constraint C_Recruiting_Educaters_eather_school_placed_and_date_job_found_are_both_null_or_both_not_null
    check((Datejobfound is null and schoolplaced is null) or (Datejobfound is not null and schoolplaced is not null)),
    constraint C_Recruiting_Educaters_date_contacted_is_between_date_job_found_and_DOB 
    check(datecontacted between DOB and Datejobfound)
)

