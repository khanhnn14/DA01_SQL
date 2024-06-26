---EX1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0
  
---EX2
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION

---EX3
SELECT CEILING(AVG(SALARY)-AVG(REPLACE(SALARY,'0','')))
FROM EMPLOYEES
  
---EX4
---BUOC 1 PHAN TICH YEU CAU
---1.OUTPUT GOC/PHAI SINH: MEAN=TONG ITEM/SO DON HANG
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH)
SELECT ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS
DECIMAL),1) AS mean
FROM items_per_order;

--EX5
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): candidate_id	
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH)
SELECT candidate_id
FROM candidates
WHERE skill in ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3;

---EX6
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): USER_ID, DAYS BETWEEN=MAX(post_date)-MIN(post_date)
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH)
SELECT USER_ID,
DATE(MAX(post_date))-DATE(MIN(post_date)) AS DAYS_BETWEEN
FROM posts
WHERE post_date>='2021-01-01' AND post_date<'2022-01-01'
GROUP BY USER_ID
HAVING COUNT(post_id)>=2

---EX7
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): CARD_NAME, DIFFERENCE
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH)
SELECT CARD_NAME,
MAX(issued_amount)-MIN(issued_amount) AS DIFFERENCE
FROM monthly_cards_issued
GROUP BY CARD_NAME
ORDER BY DIFFERENCE DESC

---EX8
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): manufacturer, drug_count, total_loss=cogs-total_sales
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH): total_sales<cogs
SELECT manufacturer,
COUNT(drug) AS drug_count,
ABS(SUM(cogs-total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales<cogs
GROUP BY manufacturer
ORDER BY total_loss DESC

---EX9
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): id | movie | description | rating
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH): id, description, rating
SELECT * FROM CINEMA
WHERE ID%2=1 AND description<>'boring'
ORDER BY rating DESC

---EX10
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): teacher_id, cnt unique
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH): group by teacher
SELECT teacher_id,
COUNT(DISTINCT subject_id) AS cnt
FROM teacher
GROUP BY teacher_id

---EX11
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): user_id, followers_count
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH): group by, order by user_id ASC
SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id 
ORDER BY user_id

---EX12
---BUOC 1: PHAN TICH YEU CAU
---1.OUTPUT (GOC/PHAI SINH): class, COUNT student >=5
---2.INPUT
---3.DIEU KIEN LOC THEO TRUONG NAO (GOC HAY PHAI SINH): GROUP BY class
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student)>=5
