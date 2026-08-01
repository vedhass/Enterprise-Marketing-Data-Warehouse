CREATE TABLE campaigns (
    campaign_id INT PRIMARY KEY,
    advertiser_id INT,
    campaign_name VARCHAR(100),
    channel_type VARCHAR(50), -- Search, Display, Video
    budget_inr INT
);
