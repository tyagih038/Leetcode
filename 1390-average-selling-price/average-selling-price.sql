select a.product_id, ifnull(round(sum(b.units*a.price)/sum(b.units),2),0) as average_price
from prices as a
left join UnitsSold as b
on a.product_id = b.product_id and purchase_date BETWEEN a.start_date and a.end_date
group by a.product_id;