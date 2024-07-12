-- Lists all bands with Glam rock as their main style
-- Ranked by their longevity.
-- Column names: band_name and lifespan (in years).
-- Uses attributes 'formed' and 'split' for computing lifespan.
-- The script should execute on any database.

SELECT band_name, COALESCE(split, 2022) - formed AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
