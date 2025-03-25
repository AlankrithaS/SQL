USE moviesdb;
select * from movies;
select count(*) from movies where imdb_rating<8;
select * from movies where imdb_rating<='5';
select * from movies where imdb_rating>6 and imdb_rating<8;
-- --or--  its for and operator
select * from movies where imdb_rating between 6 and 8;

select * from movies where release_year=2022 or release_year=2013;
-- or we use in 
select * from movies where release_year in (2022,2013);
select * from movies where studio in ('Marvel Studios','Hombale Films');

-- - `<, <=, >, >=` are the basic numerical operators used in SQL.
-- - You can also use `AND`, `OR`, `BETWEEN`, `IN` to perform numerical queries.
