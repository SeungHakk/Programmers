-- 코드를 입력하세요
SELECT distinct i.rest_id, i.rest_name, i.food_type, i.favorites, i.address,
    (select round(avg(review_score), 2)                                                                 
        from REST_REVIEW v
        where v.rest_id = i.rest_id
        group by v.rest_id) as score
from REST_INFO i, REST_REVIEW r
where i.rest_id = r.rest_id
    and substr(i.address,1,2) = '서울'
order by score desc, i.favorites desc;