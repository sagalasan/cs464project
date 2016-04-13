#1. General Query 1
SELECT * FROM cs464_transactions WHERE order_type = 'sell';

#2. General Query 2
SELECT item_id, client_id, date, quantity, order_type
FROM cs464_transactions WHERE quantity > 800;

#3. General Query 3
SELECT employee_id, COUNT(*) as num_orders
FROM cs464_transactions
GROUP BY employee_id
ORDER BY num_orders DESC;

#4. Join Query 1
SELECT cs464_items.name as item_name,
       cs464_clients.name as client_name,
       sell_orders.price * sell_orders.quantity as order_price
FROM (SELECT item_id, client_id, employee_id, date, quantity, price
      FROM cs464_transactions
      WHERE order_type = 'sell') sell_orders
    INNER JOIN cs464_clients ON sell_orders.client_id = cs464_clients.client_id
    INNER JOIN cs464_items ON sell_orders.item_id = cs464_items.item_id
WHERE sell_orders.price * sell_orders.quantity > 4000;

#5. Join Query 2
SELECT cs464_employees.first_name as first_name,
       cs464_employees.last_name as last_name,
       SUM(neg_updates.quantity_change * cs464_items.price) as sum
FROM (SELECT * FROM cs464_updates WHERE quantity_change < 0) neg_updates
    INNER JOIN cs464_employees ON cs464_employees.employee_id = neg_updates.employee_id
    INNER JOIN cs464_items ON cs464_items.item_id = neg_updates.item_id
GROUP BY first_name, last_name
ORDER BY sum;

#6. Union Query
SELECT concat(first_name, ' ', last_name) as name, address FROM cs464_employees
UNION
SELECT name, address FROM cs464_clients;


#7. Group by query 
SELECT employee_id, COUNT(*) as count FROM cs464_updates 
GROUP BY employee_id
ORDER BY count DESC;

#8. "Order by" query
SELECT * FROM cs464_updates
ORDER BY date;

#9. Distinct Query
SELECT DISTINCT cs464_employees.first_name, cs464_employees.last_name
FROM cs464_updates INNER JOIN cs464_employees ON cs464_employees.employee_id = cs464_updates.employee_id;

#10. "Aggregate" query
SELECT client_id, COUNT(*) as count 
FROM (SELECT item_id, client_id, employee_id, date, quantity, price
      FROM cs464_transactions
      WHERE order_type = 'sell') sell_orders
GROUP BY client_id
ORDER BY count DESC;
