/* ==============================================================================
   SQL SELECT Query
-------------------------------------------------------------------------------
   This covers various SELECT query techniques used for retrieving, 
   filtering, sorting, and aggregating data efficiently.

   Table of Contents:
     1. SELECT ALL COLUMNS
     2. SELECT SPECIFIC COLUMNS
     3. WHERE CLAUSE
     4. ORDER BY
     5. GROUP BY
     6. HAVING
     7. DISTINCT
     8. TOP
     9. Combining Queries
	 10. COOL STUFF - Additional SQL Features
=================================================================================
*/
use MyDatabase
SELECT * FROM dbo.orders;


SELECT *
FROM customers

/* ==============================================================================
   SELECT FEW COLUMNS
=============================================================================== */

-- Retrieve each customer's name, country, and score.

SELECT 
	first_name,
	country,
	score
FROM customers
/* ==============================================================================
   WHERE
=============================================================================== */

-- Retrieve customers with a score not equal to 0
SELECT id,score FROM customers
WHERE score != 0

-- Retrieve the name and country of customers from Germany
SELECT first_name,country FROM customers
WHERE country = 'Germany'

/* ==============================================================================
   ORDER BY
=============================================================================== */

/* Retrieve all customers and 
   sort the results by the highest score first. */

SELECT *
FROM customers
ORDER BY score DESC

/* Retrieve all customers and 
   sort the results by the country and then by the highest score. */

/* Retrieve the name, country, and score of customers 
   whose score is not equal to 0
   and sort the results by the highest score first. */

SELECT * 
FROM  customers
WHERE score != 0
ORDER BY country DESC,score DESC

/* ==============================================================================
   GROUP BY
=============================================================================== */

-- Find the total score for each country

SELECT country,
	sum(score) as sun_score
FROM customers
GROUP BY country

/* This will not work because 'first_name' is neither part of the GROUP BY 
   nor wrapped in an aggregate function. SQL doesn't know how to handle this column. */
   select 
	country,
	sum(First_name) as total_name,
	count(id) as cus_count
from customers
group by country

-- Find the total score and total number of customers for each country
select 
	country,
	sum(score) as total_score,
	count(id) as cus_count
from customers
group by country

 
/* ==============================================================================
   HAVING
=============================================================================== */

/* Find the average score for each country
   and return only those countries with an average score greater than 430 */

SELECT 
	country,
	AVG(score) as avg_score
from customers
GROUP BY country
HAVING AVG(score)>430
 

/* Find the average score for each country
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430 */

SELECT 
	country,
	AVG(score) as avg_score
FROM customers
WHERE score != 0
GROUP BY country
 

/* ==============================================================================
   DISTINCT
=============================================================================== */

-- Return Unique list of all countries
 SELECT DISTINCT country FROM customers

/* ==============================================================================
   TOP
=============================================================================== */

-- Retrieve only 3 Customers
SELECT TOP 3 * 
FROM customers
 

-- Retrieve the Top 3 Customers with the Highest Scores
SELECT TOP 3  *
FROM customers 
ORDER BY ID ASC

-- Retrieve the Lowest 2 Customers based on the score

SELECT TOP 3 *
FROM customers
ORDER BY ID DESC
 

/* ==============================================================================
   All Together
=============================================================================== */

/* Calculate the average score for each country 
   considering only customers with a score not equal to 0
   and return only those countries with an average score greater than 430
   and sort the results by the highest average score first. */

   SELECT 
		country,
		AVG(score) AS AVG_SCORE
   FROM customers
   WHERE score != 0
   GROUP BY country
   HAVING AVG(score)>430
   ORDER BY AVG(score) DESC 

   
/* ============================================================================== 
   COOL STUFF - Additional SQL Features
=============================================================================== */

-- Execute multiple queries at once
SELECT * FROM customers;
SELECT * FROM orders;

/* Selecting Static Data */
-- Select a static or constant value without accessing any table
SELECT 123 AS static_number;

SELECT 'Hello' AS static_string;

-- Assign a constant value to a column in a query
SELECT
    id,
    first_name,
    'New Customer' AS customer_type
FROM customers;
 


 



