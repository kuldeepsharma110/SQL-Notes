use world;

select * from country;

-- logical operators

select name from country where Continent = "asia";

select * from country 
where name ="china" and Continent ="asia";

-- find data of continent asia where surface area is less than 1000

select * from country 
where Continent ="asia" and SurfaceArea < 1000;
-- find data in which continent is asia or surface area less than 1000.
select * from country 
where Continent ="asia" or SurfaceArea < 1000;

-- find the data where surface area is greater than 1000 and less than 2000

select * from country
where surfacearea> 1000 and SurfaceArea<2000;

select * from country 
where SurfaceArea between 1000 and 2000;

select * from country
where name in ("India","china");

select * from country
where name not in ("India","china");


select * from country;

-- limit (it will give you top n rows)
select * from country 
limit 2;

-- i want the data of top 3 countries which have highest population

-- we will use here order by clause to sort our data
select * from country
order by population desc
limit 3;

-- find the data of country whose popultion is 3rd highiest
-- offset clause
select * from country
order by population desc
limit 1 offset 2;

-- Aggegate function
-- sum(), avg(), min(), max(), count()

-- find the average populatiom in asia

select avg(population) as asia_avg_ppl from country
where Continent = "asia";

-- find out minimum population of a country in asia
select min(population) from country
where Continent ="asia";

-- group by clause

-- find average population countinent wise, output coloumn will contain continent name and avg-population
select Continent, avg(Population) as avg_population from country
group by continent;

-- having clause to filter group by data
select Continent, avg(Population) as avg_population from country

group by continent
having avg(Population) > 1000;






