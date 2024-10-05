# World Life Expectancy Project (EDA)

SELECT *
FROM world_life_expectancy
;



SELECT Country, 
MIN(`life expectancy`), 
MAX(`life expectancy`),
ROUND(MAX(`life expectancy`) - MIN(`life expectancy`),1) AS Life_Increacse_15_Years
FROM world_life_expectancy
GROUP BY Country
HAVING MIN(`life expectancy`) <> 0
AND MAX(`life expectancy`) <> 0
ORDER BY Life_Increacse_15_Years DESC
;
