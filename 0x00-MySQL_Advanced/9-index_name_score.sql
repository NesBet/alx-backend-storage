-- Creates an index idx_name_first_score on the table 'names'
-- This index includes the first letter of the 'name' column and the 'score' column.
-- Only the first letter of the name and the score are indexed.

CREATE INDEX idx_name_first_score
ON names(name(1), score);
