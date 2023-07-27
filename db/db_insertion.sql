-- insert values into food_items table
INSERT INTO food_items (item_id, food_name, price)
VALUES (1, 'Ful wa Tamia', 1.00),
       (2, 'Feteer Meshaltet', 2.00),
       (3, 'Koshari', 1.00),
       (4, 'Kofta', 4.00),
       (5, 'Mahshi', 4.00),
       (6, 'Kebda', 1.00),
       (7, 'Basbousa', 2.00),
       (8, 'Roz bel laban', 1.00),
       (9, 'Kunafa', 2.00);
       
-- insert values into orders table
INSERT INTO orders (order_id, item_id, quantity, total_price)
VALUES (20, 1, 2, 2.00),
       (20, 3, 1, 1.00),
       (21, 4, 3, 16.00),
       (21, 6, 2, 2.00),
       (21, 9, 4, 8.00);
       
-- insert values into order_tracking table
INSERT INTO order_tracking (order_id, status)
VALUES (20, "deleverd"),
       (21, "in transit");
       
select * from food_items;
select * from orders;
select * from order_tracking;

