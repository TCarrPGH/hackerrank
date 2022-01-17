Problem
==

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation.
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

![image](https://user-images.githubusercontent.com/15948247/149771223-d60d586d-9370-4ab3-a853-8c5c21bb0810.png)


Note: Print NULL when there are no more names corresponding to an occupation.

Solution
==

1. The case statement is used to create new column names
2. Partition by the row number so the occupations can be grouped together
3. Since the main query can only select 1 entry per row, I used Min(occupation) in the select statement (MAX could also be used). This allows the query to select
one name per row. 

~~~~sql
SELECT 
    MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor) 
FROM 
    (SELECT 
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS rn
        ,CASE WHEN (OCCUPATION ='Doctor')THEN NAME END AS Doctor
        ,CASE WHEN(OCCUPATION ='Professor')THEN NAME END AS Professor
        ,CASE WHEN(OCCUPATION ='Singer')THEN NAME END AS Singer
        ,CASE WHEN(OCCUPATION ='Actor')THEN NAME END AS Actor
    FROM OCCUPATIONS) A
GROUP BY rn
ORDER BY rn
~~~~
