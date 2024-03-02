-- Show name, continent, and population attributes from the world entity
SELECT name, continent, population FROM world;

-- Show name of contries that have a population of at least 200 million people
SELECT name FROM world WHERE population >= 200000000;

-- Show name and per capita GDP of contries with at least 200 million people
SELECT name, gdp/population AS 'per capita GDP' FROM world WHERE population >= 200000000;

-- Show name and population in million of South American countries
SELECT name, population/1000000 AS 'population (millions)' FROM world WHERE continent = 'South America';

-- Show name and population of France, Germany, and Italy
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy');

-- Show name of contries that start with "United"
SELECT name FROM world WHERE name LIKE 'United%';

-- Show name, population, and area of big countries (OR)
SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000;

-- Show name, population, and area of big countries (XOR)
SELECT name, population, area FROM world WHERE area > 3000000 XOR population > 250000000;

-- Show name, population in millions, gdp in billions of countries of South America rounded to two decimal places
SELECT name, ROUND(population / 1000000, 2) AS 'population (millions)', ROUND(gdp / 1000000000, 2) AS 'gdp (billions)' FROM world WHERE continent = 'South America';

-- Show name, gdp per capita of countries with a gdp of at least one trillion
SELECT name, ROUND(gdp/population,-3) AS 'gdp per capita' FROM world WHERE gdp > 1000000000000;

-- Show name and capital of countries whose capital has the same length as the country name
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital);

-- Show name and capital of countries that start with the same letter but are not the same word
SELECT name, capital FROM world WHERE LEFT(name, 1) = LEFT(capital, 1) AND name != capital;

-- Show name of contries that have all vowels and no spaces in their name
SELECT name
FROM world
WHERE LOWER(name) LIKE '%a%'
  AND LOWER(name) LIKE '%e%'
  AND LOWER(name) LIKE '%i%'
  AND LOWER(name) LIKE '%o%'
  AND LOWER(name) LIKE '%u%'
  AND name not LIKE '% %';