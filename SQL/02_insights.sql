-- Average popularity by release year
SELECT release_year,
       AVG(popularity) AS avg_popularity
FROM spotify_tracks
GROUP BY release_year
ORDER BY release_year;

-- Explicit vs non-explicit tracks
SELECT explicit,
       AVG(popularity) AS avg_popularity,
       COUNT(*) AS track_count
FROM spotify_tracks
GROUP BY explicit;

-- Explicit vs non-explicit over the years trend
SELECT explicit,release_year,AVG(popularity) AS avg_popularity
FROM spotify_tracks
GROUP BY explicit, release_year
ORDER BY release_year;

-- Popularity bucket distribution
SELECT popularity_bucket,
       COUNT(*) AS track_count
FROM spotify_tracks
GROUP BY popularity_bucket
ORDER BY track_count DESC;

-- Top 10 most popular tracks
SELECT track_name, artist_name, popularity
FROM spotify_tracks
ORDER BY popularity DESC
LIMIT 10;
