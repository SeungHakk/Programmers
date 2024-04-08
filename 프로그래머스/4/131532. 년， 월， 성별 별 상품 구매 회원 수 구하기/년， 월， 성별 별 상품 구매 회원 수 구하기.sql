-- 코드를 입력하세요
SELECT year, month, i.gender, count(*) users
from (select distinct user_id, extract(year from sales_date) year, extract(month from sales_date) month
    from ONLINE_SALE ) s, USER_INFO i
where s.user_id = i.user_id
    and gender is not null
group by year, month, i.gender
order by 1,2,3;