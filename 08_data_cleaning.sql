-- Identify and filter out corrupt log entries where impressions are zero
SELECT * FROM ad_performance WHERE impressions > 0;
