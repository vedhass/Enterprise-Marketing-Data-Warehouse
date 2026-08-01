CREATE TABLE ad_performance (
    log_id INT PRIMARY KEY,
    campaign_id INT,
    clicks INT,
    impressions INT,
    total_spend_inr DECIMAL(10,2),
    conversions INT
);
