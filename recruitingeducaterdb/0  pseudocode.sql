/*
firstname varchar (25) not null
  constraint C_Recruiting_Educaters_not_blank
lastname varchar (25) not null
  constraint C_Recruiting_Educaters_not_blank
DOB date not null
  constraint must be in the past
gender varchar (6) not null
  constraint female/male
college varchar (30) not null
  constraint C_Recruiting_Educaters_not_blank
titleofdegree varchar (35) not null
  constraint C_Recruiting_Educaters_not_blank
  constraints sstart with these three  bachechelors, masters, or PhD
Media varchar (35) not null
  constraint C_Recruiting_Educaters_not_blank
  constraints magazines , newspaper , social media sites and by word of mouth
datecontacted date not null
  constraint  I opened up about 5 years ago, on February 17, 2017.
schoolplaced varchar (30) null
  constraint C_Recruiting_Educaters_not_blank
Datejobfound date null
constraint cant be in future null
constraint eather schoolplaced jobfound are both null ao both not
constraint jobfound equal to or after date contacted
*/