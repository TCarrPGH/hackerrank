Problem
==
Julia asked her students to create some coding challenges. 
1. Write a query to print the hacker_id, name, and the total number of challenges created by each student.
2. Sort your results by the total number of challenges in descending order.
3. If more than one student created the same number of challenges, then sort the result by hacker_id. 
4. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

![image](https://user-images.githubusercontent.com/15948247/150522392-2f47fb81-9f55-4c5b-84d3-ddd7cdeb22c7.png)

Students  and  both created  challenges, but the maximum number of challenges created is  so these students are excluded from the result.

Solution
==
This problem uses subqueries to select for 2 different sets of results. Both subqueries select based on the total challenges created.
* The first subquery selects distinct values of the chalenges created. The total challenges created must have a unique value, which is parsed out by HAVING COUNT(*) = 1
* The second subquery selects all users that created the most challenges
~~~sql

SELECT 
      H.HACKER_ID
    , NAME
    , COUNT(CHALLENGE_ID) AS CHALLENGES_CREATED
FROM HACKERS H
    INNER JOIN CHALLENGES C
    ON H.HACKER_ID = C.HACKER_ID
    GROUP BY HACKER_ID, NAME
    HAVING CHALLENGES_CREATED IN (
        SELECT 
            CHALLENGES_CREATED
        FROM
            (SELECT COUNT(*) AS CHALLENGES_CREATED
             FROM CHALLENGES 
             GROUP BY HACKER_ID) TEMP2
             GROUP BY CHALLENGES_CREATED
             HAVING COUNT(*) = 1
        )
    OR CHALLENGES_CREATED = (
        SELECT 
            MAX(CHALLENGES_CREATED)
        FROM
            (SELECT COUNT(*) AS CHALLENGES_CREATED
             FROM CHALLENGES 
             GROUP BY HACKER_ID
        )TEMP) 
 ORDER BY CHALLENGES_CREATED DESC, HACKER_ID;
