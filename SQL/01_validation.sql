-- Total records loaded
SELECT COUNT(*) AS total_records
FROM spotify_tracks;

-- Check for NULL album names
SELECT COUNT(*) AS null_album_names
FROM spotify_tracks
WHERE album_name  IS NULL;

-- Check for NULL track names
SELECT COUNT(*) AS null_track_name
FROM spotify_tracks
WHERE track_name IS NULL;

-- Popularity bounds check
SELECT MIN(popularity) AS min_popularity,
       MAX(popularity) AS max_popularity
FROM spotify_tracks;

-- Duration anamoly check
SELECT COUNT(*) AS invalid_duration
FROM spotify_tracks
WHERE duration_minutes <= 0;