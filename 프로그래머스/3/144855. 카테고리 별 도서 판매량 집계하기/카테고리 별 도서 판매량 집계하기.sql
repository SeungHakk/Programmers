SELECT b.category, sum(bs.sales) TOTAL_SALES
from book b, book_sales bs
where b.book_id = bs.book_id
    and bs.sales_date between to_date('2022-01-01','RRRR-MM-DD') and to_date('2022-01-31','RRRR-MM-DD')
group by b.category
order by 1;