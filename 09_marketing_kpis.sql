-- Calculate Click-Through Rate (CTR) and Cost-Per-Click (CPC)
SELECT 
    campaign_id,
    clicks,
    impressions,
    (clicks * 100.0 / impressions) AS click_through_rate_pct,
    (total_spend_inr / clicks) AS cost_per_click_inr
FROM ad_performance;
