-- Data Cleaning 

-- SELECT
--     SUM(director = '')    AS empty_director, --2643
--     SUM(country = '')     AS empty_country, --831
--     SUM(date_added = '')  AS empty_date_added --10
-- FROM netflix_titles_raw;

-- CREATE TABLE netflix_titles_clean AS
-- SELECT
--     TRIM(show_id) AS show_id,
--     UPPER(TRIM(type)) AS type,
--     TRIM(title) AS title,
--     NULLIF(TRIM(director), '') AS director,
--     NULLIF(TRIM(cast), '') AS cast,
--     NULLIF(TRIM(country), '') AS country,
--     NULLIF(TRIM(date_added), '') AS date_added,
--     release_year,
--     NULLIF(TRIM(rating), '') AS rating,
--     TRIM(duration) AS duration,
--     TRIM(listed_in) AS listed_in,
--     description
-- FROM netflix_titles_raw;

-- SELECT COUNT(*) FROM netflix_titles_clean;

-- SELECT
--     show_id,
--     type,
--     director,
--     country,
--     date_added
-- FROM netflix_titles_clean
-- LIMIT 10;

-- SET SQL_SAFE_UPDATES = 0;

-- UPDATE netflix_titles_clean
-- SET date_added = STR_TO_DATE(date_added, '%M %d, %Y')
-- WHERE date_added IS NOT NULL;

-- ALTER TABLE netflix_titles_clean
-- MODIFY date_added DATE;

-- ALTER TABLE netflix_titles_clean
-- ADD duration_value INT,
-- ADD duration_unit VARCHAR(15);

-- UPDATE netflix_titles_clean
-- SET duration = NULL
-- WHERE duration = '';

-- UPDATE netflix_titles_clean
-- SET
--     duration_value = CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED),
--     duration_unit  = SUBSTRING_INDEX(duration, ' ', -1)
-- WHERE duration IS NOT NULL;


-- SELECT
--     duration,
--     duration_value,
--     duration_unit
-- FROM netflix_titles_clean
-- WHERE duration IS NOT NULL
-- LIMIT 10;

-- ALTER TABLE netflix_titles_clean
-- MODIFY show_id VARCHAR(10);

-- ALTER TABLE netflix_titles_clean
-- ADD PRIMARY KEY (show_id);


-- ALTER TABLE netflix_titles_clean
-- MODIFY type VARCHAR(10);

-- CREATE INDEX idx_type ON netflix_titles_clean(type);











