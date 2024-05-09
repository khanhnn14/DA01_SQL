---EX1
SELECT
SUM(CASE
  WHEN device_type='laptop' THEN 1 ELSE 0
  END) as laptop_views,
SUM(CASE
  WHEN device_type='phone' OR device_type='tablet' THEN 1 ELSE 0
  END) as mobile_views
FROM viewership;

---EX2
SELECT x,y,z,
    CASE
        WHEN x+y<=z OR x+z<=y OR y+z<=x THEN 'No'
        ELSE 'Yes'
    END AS triangle
FROM triangle

---EX3
SELECT
ROUND(SUM(CASE
  WHEN call_category='n/a' OR call_category IS NULL THEN 1 ELSE 0
  END) * 100.0 / COUNT(*),1)
FROM callers;

---EX4
SELECT NAME FROM CUSTOMER
WHERE referee_id!=2 OR referee_id is null;

---EX5
SELECT
    survived,
    sum(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
    sum(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
    sum(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived
