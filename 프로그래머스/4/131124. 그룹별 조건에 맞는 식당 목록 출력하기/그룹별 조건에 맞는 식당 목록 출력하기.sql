select p.member_name, r.review_text, to_char(r.review_date,'RRRR-MM-DD') review_date
from MEMBER_PROFILE p, REST_REVIEW r
where r.member_id = p.member_id
    and p.member_id in (select member_id
                        from (select member_id, rank() over(order by cnt desc) rnk
                                from (select member_id, count(1) cnt
                                        from REST_REVIEW 
                                        group by member_id))
                        where rnk = 1)
order by r.review_date, r.review_text;