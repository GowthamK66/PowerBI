-- Project --
create schema mysqlwithbi;
use mysqlwithbi;
select * from mobile;
select count(*) from mobile;

-- check mobile features and price list --
select phone_name,price from mobile;

-- find out the 10 most expensive phones --
select * from mobile
order by price desc
limit 10;
-- find out the 10 most expensive phones --
select * from mobile
order by price asc
limit 5;

-- list top 5 samsung phones with price and all features --
select * from mobile where brands = "samsung" order by price desc limit 5;

-- Must have android phone list then top 5 high price android phone --
select * from mobile where operating_system_type = "android" order by price desc limit 5;

-- write a query which phone supports 5g and also top 5 phones with 5g support --
select * from mobile where 5g_availability = "yes" order by price desc limit 5;

-- Total price of  all mobile is to be found with brand name --
select brands, sum(price) as sum_of_price from mobile group by brands order by sum_of_price desc;

-- delete the last row --
DELETE FROM mobile ORDER BY price DESC LIMIT 1; 