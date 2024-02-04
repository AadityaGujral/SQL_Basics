create schema cars;
select * from cars.car_dekho;
use cars;

----- Q1. Read Data -----
select * from car_dekho;

----- Q2. Total Cars -- To get a count of Total Records;

select count(*) from car_dekho;

----- Q3. Manager Asked How Many cars would be available in 2023 ?

select count(*) from car_dekho where year = 2023;

----- Q4. Manager Asked How Many cars would be available in 2023 ?

select count(*) from car_dekho where year = 2020;

select count(*) from car_dekho where year = 2021;

select count(*) from car_dekho where year = 2022;

select count(*) from car_dekho where year in (2020,2021,2022,2023) group by year ;

----- Q5. Client asked to Print total of all cars by year ?

select year, count(*) as count from car_dekho group by year;

----- Q6. How many diesel cars available in 2020 ?

select count(*) as Total from car_dekho where year = 2020 and fuel = "Diesel"; 

----- Q7. How many Petrol cars available in 2020,2021 ?

select count(*) as Total from car_dekho where year = 2020 and fuel = "Petrol";

select count(*) as Total from car_dekho where year = 2021 and fuel = "Petrol";

----- Q8. Print All Fuel Cars (Petrol, Diesel etc) ?

select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

----- Q5. Which year had more than 100 Cars ? 

select year, count(*) from car_dekho  group by year having count(*) >100;

----- Q6. List All Cars details between 2015 & 2023  and need complete List?

select count(*) from car_dekho where year between 2015 and 2023;

select * from car_dekho where year between 2015 and 2023;

select * from car_dekho where selling_price >9905000;