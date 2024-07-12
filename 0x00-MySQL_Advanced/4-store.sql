-- Write a SQL script that creates a trigger to decrease the quantity of an item
-- after adding a new order. The quantity in the items table can be negative.
-- Context: Updating multiple tables for one action from your application can 
-- generate issues such as network disconnection or crashes. 
-- To maintain data integrity, let MySQL handle this for you!

CREATE TRIGGER decrease_items_quantity 
AFTER INSERT ON orders 
FOR EACH ROW
BEGIN
    UPDATE items 
    SET quantity = quantity - NEW.number 
    WHERE name = NEW.item_name;
END;
