# Write your MySQL query statement below
#1st question of february
select product_id from Products
where low_fats = 'Y' and recyclable = 'Y'
group by(product_id);