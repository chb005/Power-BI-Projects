use wldpopulation;

select * from wp;

select count(*) from wp;

# 1. Which country has the highest population?

select country,population from wp order by population desc limit 1; 

select country,population from wp order by population desc limit 5; 

#2. Which country has the least number of people?

select country,population from wp order by population limit 1; 

#3. Which country is witnessing the highest population growth?

select country,population,population_growth_rate from wp order by population_growth_rate desc limit 1;

#4. Which country has an extraordinary number for the population?
select country,population,life_exp_at_birth from wp order by life_exp_at_birth desc limit 1;

#5.Which is the most densely populated country in the world?

select country,(population/area) as popdense from wp order by popdense desc limit 5;
