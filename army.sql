/*
Commander of the Personnel Directorate of the Israel Defense Forces(IDF):
Recently due to mass mobilization and increase in the number of recruits, the soldiers' records aren't organized and arranged as they should be.
I need an organized database which will include the following: soldier's name, SSN, date of birth, place of residence, date of enlistment,
service unit (military branch), Rank in the unit, IQ level.

Reports needed:
1) Show a list of all soldiers with all details sorted by IQ level from high to low.
2) I need a list of all soldiers sorted by age at enlistment from high to low. Do not include columns that are not relevant to this list.
3) Following an upward trend in recruitment since the outbreak of Covid, I need data on recruitment between the years 2017-2019 compared to the years 2020-2022.
   The format should be as follows :Year Range (2017-2019/2020-2022), First Name Last Name - SSN (date of enlistment), service unit.
   (This should be done by using a union select and adding a literal column for year range.)
4) I need to know what the average IQ level is for soldiers per service unit.

Question:At what age can you enlist in the army?
Answer:From the age of 17.

Question:Which units can the soldiers be in?
Answer:I centralize the soldiers' lists only in units: Navy, Land and Air

Question:Are there certain IQs who are not accepted into the service?
Answer:No, the IDF will also find a role for those with a low level of intelligence


Note: Being that the dates are written in Israeli format, unless you are from the Israel/Europe paste the following line into your code on top of the data file:
set dateformat dmy

Sample Data:
Ron, Aviad, 54876373-2, 01/01/2000, Caesarea, 01/03/2021, Air Force, sergeant 95
Shachar, Dotan, 85274136-9, 16/08/2001, Jerusalem, 01/10/2020, Navy, lieutenant colonel, 111
Osher, Sharon, 95135778-2, 04/05/1996, Tel-Aviv, 01/04/2017, Ground Force, sergeant, 79
Yoni, Tamari, 24863570-5, 23/11/1999, Jerusalem, 01/12/2018, Air Force, lieutenant general, 139
Shai, Ben Zeev, 93185378-1, 13/09/2001, Netanya, 01/01/2020, Air Force, sergeant, 120
Dory, Lavie, 16834952-7, 28/10/2004, Haifa, 01/12/2021, Navy, brigadier general, 118
*/
