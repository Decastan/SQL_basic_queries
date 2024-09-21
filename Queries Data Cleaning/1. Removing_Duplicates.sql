### Removing Duplicates
SELECT * FROM bakery.customer_sweepstakes;


### Adjusting the name of the column in a table
#ALTER TABLE customer_sweepstakes RENAME COLUMN `ï»¿sweepstake_id` TO `sweepstake_id`;

SELECT customer_id, count(*)
FROM bakery.customer_sweepstakes
GROUP BY 1 
ORDER BY 2 DESC;