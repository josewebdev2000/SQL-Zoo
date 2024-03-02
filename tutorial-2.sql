-- Show Noble prizes of year 1950
SELECT yr, subject, winner FROM nobel WHERE yr = 1950;

-- Show winner of Nobel of literature in year 1962
SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'literature';

-- Show the year and subject where winner is Albert Einstein
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';

-- Show the winner of nobel peace prizes since the year 2000
SELECT winner FROM nobel WHERE yr >= 2000 AND subject = 'peace';

-- Show all details of nobel literature prize winners from 1980 to 1989
SELECT * FROM nobel WHERE yr BETWEEN 1980 AND 1989 AND subject = 'literature';

-- Show all details of US presidents
SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt', 'Thomas Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

-- Show winner of nobel prizes whose first name is John
SELECT winner FROM nobel WHERE winner LIKE 'John%';

-- Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.
SELECT yr, subject, winner FROM nobel WHERE (yr = 1980 AND subject = 'physics') OR (yr = 1984 AND subject = 'chemistry');

-- Show the year, subject, and name of winners for 1980 excluding chemistry and medicine
SELECT yr, subject, winner FROM nobel WHERE yr = 1980 AND NOT (subject = 'chemistry' OR subject = 'medicine');

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004) 
SELECT yr, subject, winner FROM nobel WHERE (subject = 'medicine' AND yr < 1910) OR (subject = 'literature' AND yr >= 2004);

-- Find all details of the prize won by PETER GRÜNBERG
SELECT * FROM nobel WHERE winner = 'PETER GRÜNBERG';

-- Find all details of the prize won by EUGENE O'NEILL 
SELECT * FROM nobel WHERE winner = 'EUGENE O''NEILL ';

-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner;

-- Show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.
SELECT winner, subject FROM nobel WHERE yr = 1984 ORDER BY CASE WHEN subject IN ('Physics', 'Chemistry') THEN 1 ELSE 0 END, subject, winner;

