# Enterprise Marketing Data Warehouse Architecture

## 1. ASK
- **Business Task:** Evaluate performance metrics (CTR, Conversion Rates) across multi-channel ad frameworks to optimize corporate marketing spending allocations.

## 2. DATA WAREHOUSE PIPELINE MAP
This production repository is engineered across 11 distinct structural blocks:
- **`01` to `04` Schema Engines:** Deploys clean relational configurations with explicit type tracking and foreign data bindings.
- **`05` to `07` Ingestion Layer:** Seeds operational tables with marketing metrics.
- **`08` to `10` Transformation & Analytics:** Cleans anomalies, formulates tracking metrics (CTR, CPC), and executes multi-table `INNER JOIN` operations.
- **`11_executive_summary.csv`:** Tabular final dataset output layer detailing asset conversions.

## 3. CORE ANALYTICAL SCRIPT PIPELINE
```sql
-- Executed across joined tracking boundaries inside SQLite
SELECT a.company_name, c.campaign_name, c.channel_type, p.conversions
FROM advertisers a
INNER JOIN campaigns c ON a.advertiser_id = c.advertiser_id
INNER JOIN ad_performance p ON c.campaign_id = p.campaign_id;
```

## Tools Used
- **Database Engine:** SQLite (Multi-Table relational schemas, JOIN optimization).
- **Architecture Layout:** Modular 11-file database mapping models.

 
