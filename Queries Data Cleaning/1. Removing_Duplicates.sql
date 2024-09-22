### Removing Duplicates
SELECT * FROM bakery.customer_sweepstakes;


### Adjusting the name of the column in a table
#ALTER TABLE customer_sweepstakes RENAME COLUMN `ï»¿sweepstake_id` TO `sweepstake_id`;

SELECT customer_id, count(*)
FROM bakery.customer_sweepstakes
GROUP BY 1 
HAVING count(*) > 1
;



#### Buscando los registros duplicados utilizando row_number
SELECT *
FROM (SELECT customer_id,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY customer_id) AS row_num
FROM bakery.customer_sweepstakes) AS table_row
WHERE row_num > 1;


### Como borrar registros duplicados utilizando una subquery y row_number
DELETE FROM customer_sweepstakes
WHERE sweepstake_id IN( 

	SELECT sweepstake_id
	FROM (
		SELECT sweepstake_id,
		ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY customer_id) AS row_num
		FROM bakery.customer_sweepstakes) AS table_row
		WHERE row_num > 1
        );
