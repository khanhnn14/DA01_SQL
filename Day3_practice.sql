---ex1
SELECT name FROM city
WHERE population>120000
AND countrycode = 'USA';
---ex2
SELECT * FROM city
WHERE countrycode = 'JPN';
---ex3
SELECT city, state FROM station;
---ex4
SELECT city FROM station
WHERE city LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';
---ex5
SELECT DISTINCT CITY FROM STATION
WHERE city LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u';
---ex 6
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%';
---ex 7
SELECT NAME FROM EMPLOYEE
ORDER BY NAME;
---ex 8
SELECT NAME FROM EMPLOYEE
WHERE SALARY>2000 
AND MONTHS<10
ORDER BY EMPLOYEE_ID;
---ex 9
SELECT PRODUCT_ID FROM PRODUCTS
WHERE LOW_FATS = 'Y' AND RECYCLABLE = 'Y';
---ex 10
SELECT NAME FROM CUSTOMER
WHERE referee_id!=2 OR referee_id is null;
---ex 11
select name, population, area from World where (area >= 3000000 OR population >= 25000000);
---ex 12
select distinct author_id as id from Views
where author_id = viewer_id 
order by id;
---ex 13
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
---ex 14
SELECT
 *
FROM
 lyft_drivers
WHERE
 yearly_salary <= 30000 OR
 yearly_salary >= 70000
---ex 15
select advertising_channel from uber_advertising;
WHERE money_spent > 100000 AND year = 2019;
