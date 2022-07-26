/*
1) Show list of all soldiers with al details sorted by IQ level from high to low.
2) I need a list of all soldiers sorted by age at enlistment from high to low, Do not include columns that are not relevant to this list.
3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022
    in the following format:Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
    (This shuold be done by using a union select and adding a literal column for year range.)
4) I need to know what the average IQ level is for soldiers per service unit.
*/

SELECT * 
FROM Soldier s
order by s.IQLevel desc

SELECT s.FirstName, s.LastName, s.DateBorn, s.EnlistmentDate, AgeAtEnlistment = YEAR(s.EnlistmentDate) - YEAR(s.DateBorn)
FROM Soldier s
order by AgeAtEnlistment desc

SELECT DataOnRecruitment= CONCAT(case 
                                    when YEAR(EnlistmentDate) between 2017 and 2019 then '2017-2019'
                                    when YEAR(EnlistmentDate) between 2020 and 2022 then '2020-2022'
                                    else '' 
                                        end,
', ', s.FirstName ,' ',s.LastName, ' - ', s.SSN, ' (', s.EnlistmentDate, '), ', s.MilitaryBranch,'.')
FROM Soldier s
WHERE YEAR(s.EnlistmentDate) BETWEEN 2017 and 2022

SELECT IQAvg = AVG(s.IQLevel), s.MilitaryBranch
FROM Soldier s
GROUP BY s.MilitaryBranch