A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

## SOLUTION
```
SELECT 
    ROUND(lat_n,4)
FROM (
  SELECT lat_n, row_number() OVER (ORDER BY lat_n) as rn, COUNT(*) OVER () as cnt
  from station
) AS a
WHERE rn = ceil(cnt/2)
```
