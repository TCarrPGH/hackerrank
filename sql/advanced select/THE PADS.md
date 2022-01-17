Problem
==
Generate the following two result sets:

1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

2. There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

![image](https://user-images.githubusercontent.com/15948247/149762303-4e5aa27b-0dbb-4827-983a-02b3eb2d915c.png)

Note: There will be at least two entries in the table for each type of occupation.


Solution
==

~~~~sql
SELECT 
     CASE 
            WHEN OCCUPATION LIKE 'Actor' THEN  CONCAT(NAME, '(A)')
            WHEN OCCUPATION LIKE 'Doctor' THEN CONCAT(NAME, '(D)')
            WHEN OCCUPATION LIKE 'Professor' THEN  CONCAT(NAME,'(P)')
            WHEN OCCUPATION LIKE 'Singer' THEN  CONCAT(NAME,'(S)')         
        END
    FROM OCCUPATIONS
    ORDER BY NAME ASC;

SELECT 
    CONCAT("There are a total of ", COUNT(OCCUPATION), " ", LOWER(OCCUPATION), "s.") AS foo 
FROM OCCUPATIONS
    GROUP BY OCCUPATION
    ORDER BY foo;
~~~~
