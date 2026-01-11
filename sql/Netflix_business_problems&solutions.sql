
-- Netflix SQL Project — 15 Business Problems & Solutions



-- 1) Count the number of Movies vs TV Shows

-- SELECT
--     type,
--     COUNT(*) AS total_content
-- FROM netflix_titles_clean
-- GROUP BY type;

-- 2) Find the most common rating for Movies and TV Shows

-- SELECT
--     type,
--     rating,
--     rating_count
-- FROM (
--     SELECT
--         type,
--         rating,
--         COUNT(*) AS rating_count,
--         RANK() OVER (PARTITION BY type ORDER BY COUNT(*) DESC) AS rnk
--     FROM netflix_titles_clean
--     WHERE rating IS NOT NULL
--     GROUP BY type, rating
-- ) ranked_ratings
-- WHERE rnk = 1;

-- 3) List all movies released in a specific year

-- SELECT
--     title
-- FROM netflix_titles_clean
-- WHERE type = 'MOVIE'
--   AND release_year = 2020;

-- 4) Find the top 5 countries with the most content on Netflix

-- SELECT
--     country,
--     COUNT(*) AS total_content
-- FROM netflix_titles_clean
-- WHERE country <> 'Unknown'
-- GROUP BY country
-- ORDER BY total_content DESC
-- LIMIT 5;


-- ------------------------------------------------------------
-- 5) Identify the longest movie
-- ------------------------------------------------------------
-- SELECT
--     title,
--     duration_value AS duration_minutes
-- FROM netflix_titles_clean
-- WHERE type = 'MOVIE'
--   AND duration_unit = 'min'
-- ORDER BY duration_value DESC
-- LIMIT 1;

-- 6) Find content added in the last 5 years

-- SELECT
--     *
-- FROM netflix_titles_clean
-- WHERE date_added >= CURDATE() - INTERVAL 5 YEAR;

-- 7) Find all Movies / TV Shows by director 'Rajiv Chilaka'

-- SELECT
--     title,
--     type
-- FROM netflix_titles_clean
-- WHERE director = 'Rajiv Chilaka';

-- 8) List all TV Shows with more than 5 seasons

-- SELECT
--     title,
--     duration_value AS seasons
-- FROM netflix_titles_clean
-- WHERE type = 'TV SHOW'
--   AND duration_unit = 'Seasons'
--   AND duration_value > 5;

-- 9) Count the number of content items in each genre

-- SELECT
--     listed_in AS genre,
--     COUNT(*) AS total_content
-- FROM netflix_titles_clean
-- GROUP BY listed_in
-- ORDER BY total_content DESC;

-- 10) Find top 5 years with highest content released in India

-- SELECT
--     release_year,
--     COUNT(*) AS total_releases
-- FROM netflix_titles_clean
-- WHERE country LIKE '%India%'
-- GROUP BY release_year
-- ORDER BY total_releases DESC
-- LIMIT 5;

-- 11) List all movies that are documentaries

-- SELECT
--     title
-- FROM netflix_titles_clean
-- WHERE type = 'MOVIE'
--   AND listed_in LIKE '%Documentary%';

-- 12) Find all content without a director

-- SELECT
--     title,
--     type
-- FROM netflix_titles_clean
-- WHERE director = 'Unknown';



-- 13) Find how many movies actor 'Salman Khan'
--     appeared in during the last 10 years

-- SELECT
--     COUNT(*) AS total_movies
-- FROM netflix_titles_clean
-- WHERE type = 'MOVIE'
--   AND cast LIKE '%Salman Khan%'
--   AND release_year >= YEAR(CURDATE()) - 10;

-- 14) Find the top 10 actors who appeared in the highest
--     number of movies produced in India

-- SELECT
--     cast,
--     COUNT(*) AS movie_count
-- FROM netflix_titles_clean
-- WHERE type = 'MOVIE'
--   AND country LIKE '%India%'
-- GROUP BY cast
-- ORDER BY movie_count DESC
-- LIMIT 10;

-- 15) Categorize content as 'Good' or 'Bad' based on
--     keywords 'kill' and 'violence' in description

-- SELECT
--     CASE
--         WHEN description LIKE '%kill%'
--           OR description LIKE '%violence%'
--         THEN 'Bad'
--         ELSE 'Good'
--     END AS content_category,
--     COUNT(*) AS total_content
-- FROM netflix_titles_clean
-- GROUP BY content_category;
