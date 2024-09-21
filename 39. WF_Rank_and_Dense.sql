## Rank and Dense_Rank

###Example 1:

SELECT *
FROM(
SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_row
FROM employees
) AS ranked
WHERE rank_row <3
;


###Example 2:

SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_
FROM employees;


##Quiz

SELECT Artist_ID, SUM(Score) AS Total_Score,
       RANK() OVER (ORDER BY SUM(Score) DESC) AS Ranking
FROM rankings
GROUP BY Artist_ID
ORDER BY Ranking, Artist_ID ASC;
