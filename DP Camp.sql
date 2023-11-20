
/*
Displaces Persons Camp supervisor: I supervise all the DPcamps and I try to keep a record of all dp's and their information.
The purpose of this record is to help people locate their lost relatives/acquaintances. Unfortunately, our system is not efficient 
enough in its ability to record so much info., as we are inundated by the amount of people that are arriving daily to the 
dpcamps and are inquiring about their lost relatives/acquaintances.

We need to record dpcamp, arrival and departure date, displaced person's name (first, last), gender, dateofbirth, homeaddress(address, city, country, Zip).

If the person is not alive anymore, then we also need to know when they died and in which cemetery they were buried in.

For the purpose of locating immediate family we need to record birthplace, mother's name (first, last, maiden), father's name (first, last), 
mother's date of birth, father's date of birth, Mother's address, father's address. 

For the purpose of locating extended family we need to record MaternalGrandmotherFirstname, MaternalGrandmotherLastname, MaternalGrandfatherFirstname,
MaternalGrandfatherLastname, MaternalGrandmotherTown, MaternalGrandfatherTown, PaternalGrandmotherFirstname, PaternalGrandmotherLastname, 
PaternalGrandfatherFirstname, PaternalGrandfatherLastname, PaternalGrandmotherTown, PaternalGrandfatherTown

Once a dp is registered he/she gets a registrationnumber. This helps us locate people quickly. (The registrationnumber is a concatination of the person's
fullname, the year they were born, and the first 3 letters of the dp camp.)

The bunkers are divided according to age. (The current year is 1947)
age 0-10 = bunk #1
age 11-20 = bunk #2
age 21-30 = bunk #3
age 31-40 = bunk #4
age 41-50 = bunk #5
age 51-60 = bunk #6
age 61+ = bunk #7

Questions:
Q: Can 1 person be in a few different camps?
A: Yes, but 1 person surely can't be in a few camps at once. However, a person can leave a camp and arrive at a different camp at the same day.

Q: Every dp camp has the same bunk numbers?
A: Yes.

Q: Can one person be recorded a few times?
A: Yes, since they go from camp to camp they are registered/recorded in each camp separately. 

Q: Do you also keep a record of all the dead people that never entered any camp?
A: No. A different department does that. Usually people come to us first and check if we have any of their relatives/acquaintances recorded and then they
go to the department that has a record of all the dead people.


Reports:
1) Leah Burstein is searching for her twin. She wants to know in which camp she is in now and how many days she has been there for.

2) show a list of how many people are currently in each dp camp.

3) Show a list of the Gombos family. 

4) Show a list of how many people on average are arriving to each dpcamp monthly.

5) Show a list of the number of camps each person went to. Also show which camps they went to.

6) Leo Sandor is sitting in bunk #4 and mourning after his daughter. Someone just told him that she thinks she saw Dr. Mengele point to the left for his daughter. 
We need to find Leo's daughter and show him the records that show that she's alive and in which camp she is in now.

7) The records are all messed up. Order it by the dp's last name and then by the dp camp.


Sample Data:
Deggendorf, 12-15-1946, null, Malka, Sandor, Female, 02-18-1930, Szabó Miklós u. 72, Szombathely, Hungary, 9700, null, null, Szombathely, Shaindel, Sandor, Weisz, Leo, Sandor, 01-19-1910, 07-13-1911, Szabó Miklós u. 72, Szombathely, Hungary, 9700, Szabó Miklós u. 72, Szombathely, Hungary, 9700, Sarah, Weisz, Mendel, Weisz, Szombathely, Szombathely, Sima, Sandor, Herman, Sandor, Szombathely, Szombathely

Cremona, 07-09-1946, 09-09-1946, Samuel, Glucksmann, Male, 08-09-1923, Bem József u. 27, Szombathely, Hungary, 9700, null, null, Szombathely, Chana, Glucksmann, Stern, Simon, Glucksmann, 08-09-1888, 12-25-1886, Bem József u. 27, Szombathely, Hungary, 9700, Bem József u. 27, Szombathely, Hungary, 9700, Yittel, Stern, Moshe, Stern, Szombathely, Szombathely, Shaindel, Glucksmann, Moritz, Glucksmann, Budapest, Budapest

Deggendorf, 11-21-1946, 02-13-1947, Herschl, Silberstein, Male, 12-16-1901, Bulevardul Constantin Brâncoveanu 63, Timișoara, Romania, 300425, null, null, Timișoara, Gittel, Silberstein, Rosenberg, Isidor, Silberstein, 07-04-1868, 03-01-1869, Bulevardul Constantin Brâncoveanu 63, Timișoara, Romania, 300425, Bulevardul Constantin Brâncoveanu 63, Timișoara, Romania, 300425, Fiaga, Rosenberg, Fishel, Rosenberg, Timișoara, Timișoara, Perel, Silberstein, Benjamin, Silberstein, Arad, Arad

Bergen-Belsen, 05-01-1946, 07-05-1946, Leo, Sandor, Male, 07-13-1911,  Szabó Miklós u. 72, Szombathely, Hungary, 9700, null, null, Szombathely, Sima, Sandor, Hoffman, Herman, Sandor, 05-09-1879, 02-18-1876, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Shaina, Hoffman, Kalman, Hoffman, Szombathely, Szombathely, Agi, Sandor, Berel, Sandor, Zalaegerszeg, Zalaegerszeg

Neu Freimann, 05-19-1946, 08-12-1946, Esther, Burstein, Female, 09-08-1930, Hajnóczy u. 25, Szeged, Hungary, 6722, null, null, Szeged, Devorah, Burstein, Goldmann, David, Goldmann, 08-17-1910, 04-19-1910,  Hajnóczy u. 25, Szeged, Hungary, 6722, Hajnóczy u. 25, Szeged, Hungary, 6722, Golda, Goldmann, Baruch, Goldmann, Szeged, Szeged, Brenda, Burstein, Herschel, Burstein, Makó, Makó

Cinecittà, 09-09-1946, 01-11-1947, Samuel, Glucksmann, Male, 08-09-1923, Bem József u. 27, Szombathely, Hungary, 9700, null, null, Szombathely, Chana, Glucksmann, Stern, Simon, Glucksmann, 08-09-1888, 12-25-1886, Bem József u. 27, Szombathely, Hungary, 9700, Bem József u. 27, Szombathely, Hungary, 9700, Yittel, Stern, Moshe, Stern, Szombathely, Szombathely, Shaindel, Glucksmann, Moritz, Glucksmann, Budapest, Budapest

Cinecittà, 07-10-1946, 12-12-1946, Leo, Sandor, Male, 07-13-1911, Szabó Miklós u. 72, Szombathely, Hungary, 9700, null, null, Szombathely, Sima, Sandor, Hoffman, Herman, Sandor, 05-09-1879, 02-18-1876, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Shaina, Hoffman, Kalman, Hoffman, Szombathely, Szombathely, Agi, Sandor, Berel, Sandor, Zalaegerszeg, Zalaegerszeg

Babenhausen, 12-01-1946, null, Jacob, Gombos, Male, 09-09-1928,  Wólczańska 39, Łódź, Poland, 90-608, null, null, Łódź, Rivka, Gombos, Haas, Jozsef, Gombos, 07-24-1908, 05-12-1906, Wólczańska 45, Łódź, Poland, 90-608, Wólczańska 45, Łódź, Poland, 90-608, Golda, Schon, Zev, Schon, Łódź, Łódź, Perel, Gombos, Moritz, Gombos, Łódź, Łódź

Cremona, 12-12-1946, null, Leo, Sandor, Male, 07-13-1911, Szabó Miklós u. 72, Szombathely, Hungary, 9700, null, null, Szombathely, Sima, Sandor, Hoffman, Herman, Sandor, 05-09-1879, 02-18-1876, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Shaina, Hoffman, Kalman, Hoffman, Szombathely, Szombathely, Agi, Sandor, Berel, Sandor, Zalaegerszeg, Zalaegerszeg

Babenhausen, 03-18-1946, 07-15-1946, Faiga, Scharfstein, Female, 08-13-1927, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, null, null, Leipzig, Shaindel, Scharfstein, Markus, Jozsef, Scharfstein, 04-27-1903, 11-19-1901, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, Milka, Markus, Mordechai, Markus, Leipzig, Leipzig, Ella, Scharfstein, Leib, Scharfstein, Berlin, Berlin

Bergen-Belsen, 01-30-1947, null, Samuel, Glucksmann, Male, 08-09-1923, Bem József u. 27, Szombathely, Hungary, 9700, null, null, Szombathely, Chana, Glucksmann, Stern, Simon, Glucksmann, 08-09-1888, 12-25-1886, Bem József u. 27, Szombathely, Hungary, 9700, Bem József u. 27, Szombathely, Hungary, 9700, Yittel, Stern, Moshe, Stern, Szombathely, Szombathely, Shaindel, Glucksmann, Moritz, Glucksmann, Budapest, Budapest

Cremona, 02-15-1947: null: Herschl: Silblelrstein: Male: 12-16-1901, Bulevardul Constantin Brâncoveanu 63, Timișoara, Romania, 300425, null, null, Timișoara, Gittel, Silberstein, Rosenberg, Isidor, Silberstein, 07-04-1868, 03-01-1869, Bulevardul Constantin Brâncoveanu 63, Timișoara, Romania, 300425, Bulevardul Constantin Brâncoveanu 63, Timișoara, Romania, 300425, Fiaga, Rosenberg, Fishel, Rosenberg, Timișoara, Timișoara, Perel, Silberstein, Benjamin, Silberstein, Arad, Arad

Bergen-Belsen, 03-14-1943, null, Raizel, Sandor, Female, 05-17-1921, Ada u. 2c, Budapest, Hungary, 1125, null, null, Budapest, Mirel, Sandor, Krecs, Herman, Sandor, 02-08-1885, 04-15-1890,  Ada u. 2c, Budapest, Hungary, 1125, Ada u. 2c, Budapest, Hungary, 1125, Blima, Krecs, Abraham, Krecs, Budapest, Budapest, Sarah, Sandor, Abraham, Sandor, Szombathely, Szombathely

Wetzlar, 11-18-1946, 12-01-1946, Jacob, Gombos, Male, 09-09-1928, Wólczańska 39, Łódź, Poland, 90-608, null, null, Łódź, Rivka, Gombos, Haas, Jozsef, Gombos, 07-24-1908, 05-12-1906, Wólczańska 45, Łódź, Poland, 90-608, Wólczańska 45, Łódź, Poland, 90-608, Golda, Schon, Zev, Schon, Łódź, Łódź, Perel, Gombos, Moritz, Gombos, Łódź, Łódź

Neu Freimann, 11-23-1946, 01-15-1947, Leah, Burstein, Female, 09-08-1930, Hajnóczy u. 25, Szeged, Hungary, 6722, null, null, Szeged, Devorah, Burstein, Goldmann, David, Goldmann, 08-17-1910, 04-19-1910,  Hajnóczy u. 25, Szeged, Hungary, 6722, Hajnóczy u. 25, Szeged, Hungary, 6722, Golda, Goldmann, Baruch, Goldmann, Szeged, Szeged, Brenda, Burstein, Herschel, Burstein, Makó, Makó

Bad Reichenhall, 10-24-1946, 12-14-1946, Rivka, Gombos, Female, 07-24-1908, Wólczańska 39, Łódź, Poland, 90-608, null, null, Łódź, Golda, Schon, Klein, Zev, Schon, 11-14-1885, 01-12-1884, Wólczańska 30, Łódź, Poland, 90-608, Wólczańska 30, Łódź, Poland, 90-608, Malka, Klein, Meir, Klein, Łódź, Łódź, Rochel, Schon, Menachem, Schon, Warsaw, Warsaw

Wetzlar, 04-15-1946, 04-30-1946, Leo, Sandor, Male, 07-13-1911, Szabó Miklós u. 72, Szombathely, Hungary, 9700, null, null, Szombathely, Sima, Sandor, Hoffman, Herman, Sandor, 05-09-1879, 02-18-1876, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Szabó Miklós u. 75, Szombathely, Hungary, 9700, Shaina, Hoffman, Kalman, Hoffman, Szombathely, Szombathely, Agi, Sandor, Berel, Sandor, Zalaegerszeg, Zalaegerszeg

Babenhausen, 12-15-1946, null, Freida, Gombos, Female, 07-24-1908, Wólczańska 39, Łódź, Poland, 90-608, null, null, Łódź, Golda, Schon, Klein, Zev, Schon, 11-14-1885, 01-12-1884, Wólczańska 30, Łódź, Poland, 90-608, Wólczańska 30, Łódź, Poland, 90-608, Malka, Klein, Meir, Klein, Łódź, Łódź, Rochel, Schon, Menachem, Schon, Warsaw, Warsaw

Babenhausen, 08-12-1946, null, Esther, Burstein, Female, 09-08-1930,  Hajnóczy u. 25, Szeged, Hungary, 6722, null, null, Szeged, Devorah, Burstein, Goldmann, David, Goldmann, 08-17-1910, 04-19-1910,  Hajnóczy u. 25, Szeged, Hungary, 6722, Hajnóczy u. 25, Szeged, Hungary, 6722, Golda, Goldmann, Baruch, Goldmann, Szeged, Szeged, Brenda, Burstein, Herschel, Burstein, Makó, Makó

Stuttgart, 07-15-1946, 12-22-1946, Faiga, Scharfstein, Female, 08-13-1927, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, null, null, Leipzig, Shaindel, Scharfstein, Markus, Jozsef, Scharfstein, 04-27-1903, 11-19-1901, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, Milka, Markus, Mordechai, Markus, Leipzig, Leipzig, Ella, Scharfstein, Leib, Scharfstein, Berlin, Berlin

Babenhausen, 08-23-1946, 12-10-1946, Malka, Sandor, Female, 02-18-1930, Szabó Miklós u. 72, Szombathely, Hungary, 9700, null, null, Szombathely, Shaindel, Sandor, Weisz, Leo, Sandor, 01-19-1910, 07-13-1911, Szabó Miklós u. 72, Szombathely, Hungary, 9700, Szabó Miklós u. 72, Szombathely, Hungary, 9700, Sarah, Weisz, Mendel, Weisz, Szombathely, Szombathely, Sima, Sandor, Herman, Sandor, Szombathely, Szombathely

Bergen-Belsen, 09-20-1946, 07-17-1947, Abraham, Jacob, Berner, Male, 05-03-1935, Aleja Pułkownika Władysława Beliny-Prażmowskiego 48, Kraków, Poland, 31-514, 07-16-1947, Jewish cemetery of Kleinbardorf, Kraków, Raizel, Berner, Grunfeld, Marton, Berner, 05-01-1905, 11-09-1908, Aleja Pułkownika Władysława Beliny-Prażmowskiego 48, Kraków, Poland, 31-514, Aleja Pułkownika Władysława Beliny-Prażmowskiego 48, Kraków, Poland, 31-514, Liba, Grunfeld, Eli, Grunfeld, Kraków, Kraków, Judith, Berner, Berel, Berner, Krosno, Krosno

Stuttgart, 03-07-1946, 11-23-1946, Leah, Burstein, Female, 09-08-1930, Hajnóczy u. 25, Szeged, Hungary, 6722, null, null, Szeged, Devorah, Burstein, Goldmann, David, Goldmann, 08-17-1910, 04-19-1910,  Hajnóczy u. 25, Szeged, Hungary, 6722, Hajnóczy u. 25, Szeged, Hungary, 6722, Golda, Goldmann, Baruch, Goldmann, Szeged, Szeged, Brenda, Burstein, Herschel, Burstein, Makó, Makó

Babenhausen, 12-26-1946, null, Jozsef, Gombos, Male, 05-12-1906, Wólczańska 39, Łódź, Poland, 90-608, null, null, Łódź, Perel, Gombos, Klein, Moritz, Gombos, 06-17-1880, 12-05-1882, Wólczańska 45, Łódź, Poland, 90-608, Wólczańska 45, Łódź, Poland, 90-608, Chava, Klein, Aaron, Klein, Łódź, Łódź, Miriam, Gombos, Isidor, Gombos, Warsaw, Warsaw

Bergen-Belsen, 12-22-1946, null, Faiga, Scharfstein, Female, 08-13-1927, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, null, null, Leipzig, Shaindel, Scharfstein, Markus, Jozsef, Scharfstein, 04-27-1903, 11-19-1901, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, Erich-Weinert-Straße 13, Leipzig, Germany, 04105, Milka, Markus, Mordechai, Markus, Leipzig, Leipzig, Ella, Scharfstein, Leib, Scharfstein, Berlin, Berlin

Bergen-Belsen, 01-15-1947, null, Leah, Burstein, Female, 09-08-1930, Hajnóczy u. 25, Szeged, Hungary, 6722, null, null, Szeged, Devorah, Burstein, Goldmann, David, Goldmann, 08-17-1910, 04-19-1910,  Hajnóczy u. 25, Szeged, Hungary, 6722, Hajnóczy u. 25, Szeged, Hungary, 6722, Golda, Goldmann, Baruch, Goldmann, Szeged, Szeged, Brenda, Burstein, Herschel, Burstein, Makó, Makó
