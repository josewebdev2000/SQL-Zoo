-- List each country name where the population is larger than that of 'Russia'. 
SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name = 'Russia'); 

-- Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
SELECT name FROM world WHERE gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom') AND continent = 'Europe';

-- List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
SELECT name, continent FROM world WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina') OR continent = (SELECT continent FROM world WHERE name = 'Australia') ORDER BY name;

-- Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.
SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name = 'United Kingdom') AND population < (SELECT population FROM world WHERE name = 'Germany');

-- Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
SELECT name, CONCAT(ROUND(100 * population / (SELECT population FROM world WHERE name = 'Germany')), '%') AS percentage FROM world WHERE continent = 'Europe';

-- 