CREATE TABLE orders (
  order_id varchar, 
  cust_id varchar,
  postal_code int,
  prod_id varchar,
  sales float,
  quantity int,
  disc int,
  profit int,
  category varchar,
  subcategory varchar,
  prod_name varchar,
  order_date date,
  ship_date date,
  ship_mode char,
  cust_name varchar,
  segment varchar,
  country varchar,
  city varchar, 
  state varchar,
  region varchar
  )
  SELECT * from orders 
 