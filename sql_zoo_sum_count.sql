--world(name, continent, area, population, gdp)
SELECT SUM(population)
FROM world

-- List all the continents - just once each.

SELECT distinct continent
FROM world

--Give the total GDP of Africa

SELECT sum(gdp)
FROM world where continent = 'Africa'

-- How many countries have an area of at least 1000000

SELECT count(name)
FROM world where area >= 1000000

-- What is the total population of ('Estonia', 'Latvia', 'Lithuania')


SELECT sum(population)
FROM world where name in ('Estonia', 'Latvia', 'Lithuania')

-- For each continent show the continent and number of countries.

SELECT continent, count(name)
FROM world group by continent

-- For each continent show the continent and number of countries with populations of at least 10 million.

SELECT continent, count(name)
FROM world where population >= 10000000 group by continent

-- List the continents that have a total population of at least 100 million.

SELECT continent
FROM world group by continent having sum(population) >= 100000000