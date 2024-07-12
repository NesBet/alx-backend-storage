-- Creates a view named need_meeting that lists all students 
-- who have a score under 80 (strict) and have not had a meeting 
-- in the last month or have never had a meeting.

DROP VIEW IF EXISTS need_meeting;

CREATE VIEW need_meeting AS
SELECT name 
FROM students 
WHERE score < 80
AND (students.last_meeting IS NULL OR students.last_meeting < DATE_ADD(NOW(), INTERVAL -1 MONTH));
