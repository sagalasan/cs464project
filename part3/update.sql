#1. Update 1
UPDATE cs464_clients 
SET address = 'P.O. Box 217, 8986 Semper Av.'
WHERE name = 'Semper Company';

#2. Update 2
UPDATE cs464_items
SET description = '2 x 6 Framing Stud'
WHERE item_id = '10001';

#3. Delete 1
DELETE FROM cs464_updates WHERE date > '2015-12-23 00:00:00';

#4. Delete 2
DELETE FROM cs464_transactions WHERE date > '2015-12-25 00:00:00' and date <= '2015-12-25 23:59:59';

#5. Insert 1
INSERT INTO cs464_updates
VALUES ('10004', '10034', '2015-12-31 16:28:49', '2');

#6. Insert 2
INSERT INTO cs464_transactions
VALUES ('10002', '10013', '10044', '2015-12-31 16:57:54', '54', '23.81', 'sell');
