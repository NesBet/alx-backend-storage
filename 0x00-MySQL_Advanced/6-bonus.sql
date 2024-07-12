-- Write a SQL script that creates a stored procedure AddBonus 
-- that adds a new correction for a student.
-- Requirements:
-- Procedure AddBonus takes 3 inputs (in this order):
--   - user_id: a users.id value (assumed to be linked to an existing user)
--   - project_name: a new or already existing project name; 
--     if no matching project.name is found in the table, it should be created
--   - score: the score value for the correction
-- Context: Writing code in SQL is a nice level up!

DELIMITER $$

CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
    -- Check if the project exists; if not, insert it
    IF NOT EXISTS (SELECT name FROM projects WHERE name = project_name) THEN
        INSERT INTO projects (name) VALUES (project_name);
    END IF;

    -- Insert the correction for the user
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, (SELECT id FROM projects WHERE name = project_name), score);
END $$

DELIMITER ;
