---EX1
select name
from students
where marks>75
order by right(name,3), id 

---EX2
select user_id,
concat(upper(left(name,1)), lower(right(name,length(name)-1))) as name
from users
order by user_id

---EX3
SELECT manufacturer,
'$'||ROUND(SUM(total_sales)/1000000,0)||' '||'million' AS SALE
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer

---EX4
SELECT EXTRACT(MONTH FROM submit_date) AS mth,
product_id AS product,
ROUND(AVG(stars),2)
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id

---EX5
SELECT sender_id,
COUNT(message_id) AS message_count
FROM messages
WHERE EXTRACT(month from sent_date)=8
and EXTRACT(year from sent_date)=2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2

---EX6
SELECT tweet_id
FROM Tweets
WHERE LENGTH(contenT)>15

---EX8
select count(id)
from employees
where extract(month from joining_date) between 1 and 7
and extract(year from joining_date) =2022

---EX9
select position('a' in first_name)
from worker
where first_name='Amitah'

---EX10
select substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'
