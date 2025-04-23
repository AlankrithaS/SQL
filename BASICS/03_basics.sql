use moviesdb;
select * from movies ;
select studio from movies ;
select * from movies where studio ='';
select * from movies where imdb_rating is NULL;
select * from movies where studio IS NOT NULL ;
-- ------------------------------------------------------------

select imdb_rating from movies ;

select * from movies order by imdb_rating ;
select * from movies order by imdb_rating desc;
select * from movies order by imdb_rating asc;
SELECT * FROM movies ORDER BY imdb_rating DESC LIMIT 5;
-- select * from movies order by imdb_rating asc offset 1 ;
select * from movies order by imdb_rating desc limit 2,5;

-- Fetch all data from the movies table.
-- Extract only the studio column from the movies table.
-- Identify rows where the studio column contains empty values.
-- Find records with null values in the imdb_rating column.
-- Filter rows where the studio column has non-null values.
-- Retrieve only the imdb_rating column from the movies table.
-- Sort all records by ascending IMDb ratings.
-- Sort all records by descending IMDb ratings.
-- Sort all records by ascending IMDb ratings explicitly.
-- Fetch the top 5 movies with the highest IMDb ratings.
-- Skip the first two rows and retrieve the next five, sorted by descending IMDb ratings.
