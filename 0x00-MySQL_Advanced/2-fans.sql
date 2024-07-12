-- Write an SQL script that ranks the country origins of bands
-- Ordered by the number of (non-unique) fans.
-- The result must include columns 'origin' and 'nb_fans'.
-- The script can be executed on any database.

SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
