-- Merge all tables to show corporate leadership which ad networks perform best
SELECT 
    a.company_name,
    c.campaign_name,
    c.channel_type,
    p.total_spend_inr,
    p.conversions,
    (p.conversions * 100.0 / p.clicks) AS conversion_rate_pct
FROM advertisers a
INNER JOIN campaigns c ON a.advertiser_id = c.advertiser_id
INNER JOIN ad_performance p ON c.campaign_id = p.campaign_id
ORDER BY conversion_rate_pct DESC;
