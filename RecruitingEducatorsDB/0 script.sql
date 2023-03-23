/*
Educators
    FirstName - not blank, not null
    LastName - not blank, not null
    DOB - date, not null, not blank
    Gender not blank not null
    CollegeAttended - not blank, not null
    TitleOfDegree - not blank, not null
    Media - only magazine, newspaper, social media site or word of mouth
    DateContacted - date, not null, not before Feb 17 2017
    SchoolPlaced - allow null, not blank
    DateFoundJob - date, allow null, not before Feb 17 2017, not blank

    constraints: 
        schoolplaced and datefoundjob are both null or both filled in
        datecontacted between dob and datefoundjob