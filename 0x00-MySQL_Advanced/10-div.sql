-- Create a function named SafeDiv that divides the first number by the second number.
-- If the second number is equal to 0, it returns 0.
-- The function SafeDiv takes 2 arguments:
--   - a: INT
--   - b: INT
-- Returns a / b or 0 if b == 0.

DELIMITER //

DROP FUNCTION IF EXISTS SafeDiv;

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    RETURN IF(b = 0, 0, a / b);
END //

DELIMITER ;
