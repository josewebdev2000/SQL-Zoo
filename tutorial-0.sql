-- Query to show the population of Germany
SELECT population FROM world WHERE name = 'Germany';

-- Query to show population of Sweden, Nowray, and Denmark
SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Query to show countries whose area is between 200,000 km- 250,000 km
SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000
