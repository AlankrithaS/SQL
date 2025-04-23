SELECT * FROM moviesdb.movies;
SELECT title, studio FROM moviesdb.movies;
SELECT * FROM movies WHERE studio='Marvel Studios';
SELECT COUNT(*) FROM movies WHERE industry = 'Bollywood';
SELECT distinct industry FROM movies;
SELECT * FROM movies  WHERE title LIKE '%captain%';
SELECT * FROM movies WHERE studio ="";

SELECT, FROM, and WHERE are the basic SQL functions.

-- * means all columns. Using * after the SELECT query will select all columns of a database.
-- With the help of the USE function, you can indicate the query to use a particular database, especially when there are multiple databases
-- The COUNT function provides the numerical count of rows.
-- The DISTINCT function helps you view the unique values present in a column.
-- % is a wildcard character for searches.
-- The LIKE function combined with % allows filtering rows based on a text value.
