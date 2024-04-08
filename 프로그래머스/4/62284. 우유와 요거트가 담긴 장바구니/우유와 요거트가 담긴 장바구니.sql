/* 서브쿼리
select distinct cart_id
from cart_products
where cart_id in (select cart_id
                from cart_products
                where name = 'Milk')
    and cart_id in (select cart_id
                from cart_products
                where name = 'Yogurt')
order by cart_id; */


-- 인라인뷰
SELECT distinct m.cart_id 
from (select cart_id
        from CART_PRODUCTS 
        where name = 'Milk') m, 
     (select cart_id
        from CART_PRODUCTS 
        where name = 'Yogurt') y
where m.cart_id = y.cart_id
order by m.cart_id;