use RecruitingDB
go
drop table if exists Educators
go
create table dbo.Educators(
    EducatorID int not null identity primary key,
    FirstName varchar(30) not null not blank
    LastName varchar(30) not null not blank
    DOB date not before today
    Gender varchar(1) not null either M or F
    CollegeAttended varchar(40) not null not blank
    DegreeTitle varchar(30) not null not blank
    Media varchar(20) not null not blank
    DateContracted date not null not before Feb 17, 2017
    SchoolPlaced varchar(40) null not blank
    DateFoundJob date null must be after Date contracted
)