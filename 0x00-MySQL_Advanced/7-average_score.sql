-- Create a stored procedure named ComputeAverageScoreForUser
-- that computes and stores the average score for a student.
-- Takes 1 input: user_id, which corresponds to users.id.

DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    -- Update the average_score for the specified user
    UPDATE users
    SET average_score = (
        SELECT AVG(score) 
        FROM corrections 
        WHERE corrections.user_id = user_id
    )
    WHERE id = user_id;
END $$

DELIMITER ;
