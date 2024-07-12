-- Write a SQL script that creates a trigger to reset the attribute valid_email
-- only when the email has been changed.
-- Context: While this logic is not specific to MySQL, it is ideal for user email validation,
-- allowing you to distribute the validation logic to the database itself.

DELIMITER $$

CREATE TRIGGER resets_valid_email 
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END $$

DELIMITER ;
