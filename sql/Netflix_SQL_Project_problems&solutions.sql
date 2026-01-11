-- Netflix SQL Project — 15 Business Problems & Solutions

-- 1️)Count the number of Movies vs TV Shows
SELECT
    type,
    COUNT(*) AS total_content
FROM netflix_titles_clean
GROUP BY type;
