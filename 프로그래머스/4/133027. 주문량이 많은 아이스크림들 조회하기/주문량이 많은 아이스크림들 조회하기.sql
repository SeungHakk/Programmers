/*select f.flavor
from (select flavor, sum(total_order) sf
        from FIRST_HALF
        group by flavor) f,
     (select flavor, sum(total_order) sj
        from JULY
        group by flavor) j
where f.flavor=j.flavor
group by f.flavor, sf, sj
order by sf + sj desc fetch first 3 rows only ; */

select flavor
from (select flavor,sum(total_order) total_order
        from FIRST_HALF
        group by flavor
        union all
        select flavor, sum(total_order)
        from july
        group by flavor)
group by flavor
order by sum(total_order) desc fetch first 3 rows only;