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


SELECT Year, ROUND(AVG(`life expectancy`),2)
FROM world_life_expectancy
WHERE `life expectancy` <> 0
AND `life expectancy` <> 0
GROUP BY Year
ORDER BY Year
;


SELECT Country, ROUND(AVG(`life expectancy`),1) AS Life_Exp, ROUND(AVG(GDP),1) AS GDP
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP DESC
;



SELECT
SUM(CASE 
	WHEN GDP >= 1500 THEN 1 ELSE 0
END) High_GDP_Count,
AVG(CASE 
	WHEN GDP >= 1500 THEN `life expectancy` ELSE NULL
END) High_GDP_life_expectancy,
SUM(CASE 
	WHEN GDP <= 1500 THEN 1 ELSE 0
END) Low_GDP_Count,
AVG(CASE 
	WHEN GDP <= 1500 THEN `life expectancy` ELSE NULL
END) Low_GDP_life_expectancy
FROM world_life_expectancy
;


SELECT *
FROM world_life_expectancy
;


SELECT Status, ROUND(AVG(`life expectancy`),1)
FROM world_life_expectancy
GROUP BY Status
;


SELECT Status, COUNT(DISTINCT Country), ROUND(AVG(`life expectancy`),1)
FROM world_life_expectancy
GROUP BY Status
;


SELECT Country, ROUND(AVG(`life expectancy`),1) AS Life_Exp, ROUND(AVG(BMI),1) AS BMI
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND BMI > 0
ORDER BY BMI asc
;



SELECT *
FROM world_life_expectancy
;


SELECT Country,
Year,
`life expectancy`,
`Adult Mortality`,
SUM( `Adult Mortality`) OVER(PARTITION BY Country ORDER BY Year) AS Rolling_Total
FROM world_life_expectancy
WHERE Country LIKE '%United%'
;
