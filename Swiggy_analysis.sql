-- Check total recors
SELECT COUNT(*) FROM swiggy;

--Check for nulls in key columns
select sum(case when name is null then 1 else 0 end) AS null_names,sum(case when rating is null then 1 else 0 end) AS null_ratings,sum(case when city is null then 1 else 0 end) AS null_cities
from swiggy;

--Remove rows where rating is 'New' or '--'
DELETE from swiggy where rating='NEW' OR rating='--';

--Standardize rating to NUMERIC
update swiggy set rating=cast(rating AS DECIMAL(2,1))
WHERE rating NOT IN('NEW','--');

--How many restaurants are listed per cities?
select city,count(*) AS Total_restaurants
from swiggy
group by city
order by Total_restaurants DESC LIMIT 10;

--What are the most popular cuisine across india?
select cuisine,count(*) as count from swiggy
group by cuisine
order by count DESC LIMIT 10;

--Top 5 cities with highest average rating
select city,round(avg(cast(rating as float)),2) as avg_rating,count(*) as total_restaurants from swiggy
where rating not in('NEW','--')
GROUP BY city having count(*)>50 order by avg_rating DESC LIMIT 5;

--Which cuisine have the highest average rating
select cuisine,round(avg(cast(rating as float)),2) as avg_rating,count(*) as rest_count
from swiggy where rating not in('NEW','--')
GROUP BY  cuisine having count(*)>100 order by avg_rating desc limit 10;

--Reataurants with rating above 4.5 and more than 1000 ratings
select name,city,rating,rating_count,cost from swiggy
where cast(rating as float)>=4.5 and (CASE when rating_count like '%k+%' THEN  cast(replace(rating_count,'k+','') as INTEGER)*1000
ELSE
CAST(replace(replace(rating_count,'+',''),'ratings','')as integer) END)>=1000
order by CAST(rating as float) DESC LIMIT 20;

--Business insight-Which city has best value for money?
SELECT city,round(avg(cast(rating as float)),2)as avg_rating,round(avg(cast(replace(REPLACE(cost,',',''),'₹','')as INTEGER)),0) as avg_cost from swiggy
where rating not in('NEW','--') GROUP BY city having count(*)>30 order by avg_rating DESC, avg_cost ASC LIMIT 10;
