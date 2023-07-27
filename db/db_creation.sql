-- create a new database -- "egyption_food" means Pandey ji restaurant
CREATE DATABASE egyption_food; 

-- select the database
USE egyption_food;

-- to check if tables are exist before crating it
DROP TABLE IF EXISTS food_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS order_tracking;

-- create the table
CREATE TABLE food_items (
  item_id INT PRIMARY KEY not null,
  food_name VARCHAR(255) default null,
  price decimal(10,2) default null
);

CREATE TABLE orders (
  order_id INT not null,
  item_id INT not null,
  quantity INT default null,
  total_price decimal(10,2) default null,
  primary key (order_id, item_id),
  FOREIGN KEY (item_id) REFERENCES food_items(item_id)
);

CREATE TABLE order_tracking (
  order_id INT not null,
  status varchar(255) default null,
  primary key (order_id)
);


select * from food_items;
select * from orders;
select * from order_tracking;