use vehicle_db;

select * from sales_project;

-- finding category with most sales

select distinct category from sales_project;

select Category,sum(Sales) from sales_project group by category order by Sales desc; 

SELECT category, SUM(sales)
FROM sales_project
GROUP BY category
ORDER BY SUM(sales) DESC;

ALTER TABLE sales_project CHANGE id employ_id VARCHAR(25);


select category,`Sub-Category` ,sum(sales) from sales_project group by `Sub-Category` order by category desc;

select Region,state,city,sum(sales) from sales_project group by city order by region;

select month(`Ship Date`),sum(sales) from sales_project group by month(`Ship Date`)
order by month(`Ship Date`) desc; 

select year(`Ship Date`) ,sum(sales) from sales_project group by  year(`Ship Date`) 
order by  year(`Ship Date`) desc;
select * from sales_project;

select count(distinct(`Ship Mode`)) from sales_project;

select `Customer Name`,sum(sales) from sales_project group by `Customer Name` 
order by Sum(sales) desc limit 10;

select `Sales Agent ID`,sum(sales) from sales_project group by `Sales Agent ID`
order by sum(sales) desc limit 10;

