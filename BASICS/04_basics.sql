use moviesdb ;
select * from movies ;
select * from movies where industry='Bollywood';
select max(imdb_rating) from movies where industry='Bollywood';
select min(imdb_rating) from movies where industry='Bollywood';
select * from movies where industry='Bollywood';
select studio from movies;
select * from movies where studio='Marvel Studios';
select avg(imdb_rating) from movies where studio='Marvel Studios';
select round(avg(imdb_rating),2) from movies where studio ='Marvel Studios';
select round(avg(imdb_rating)) from movies where studio='Marvel Studios';
select round(avg(imdb_rating)) as avg from movies where studio='Marvel Studios';

-- ============================================================================	
-- Group by
select * from movies;

select studio, count(industry),round(avg(imdb_rating))
 as cnt from movies
group by studio
;

select industry,
 count(industry) from movies
 group by industry;

select * from movies ;


-- Summary Analytics in SQL: Useful for performing ad hoc analysis, a key business application.

-- Functions:
-- MAX, MIN, and AVG are essential SQL summary functions.
-- Custom Column Names:
-- Use the AS clause to define custom column headers.
-- Grouping Metrics:
-- The GROUP BY clause helps to create metric summaries, like averages or counts, based on selected columns








