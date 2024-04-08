-- 코드를 입력하세요
select author_id, author_name, category, sum(total_sales) total_sales
from (SELECT a.author_id as author_id, a.author_name as author_name, 
        b.category as category, sum(s.sales) * b.price as total_sales
        from BOOK b, AUTHOR a, BOOK_SALES s
        where b.book_id = s.book_id and b.author_id = a.author_id
            and s.sales_date 
            between to_date('2022-01-01','rrrr-mm-dd') and to_date('2022-01-31','rrrr-mm-dd')
        group by a.author_id, a.author_name, b.category,b.price)
group by author_id, author_name, category
order by author_id, category desc;

