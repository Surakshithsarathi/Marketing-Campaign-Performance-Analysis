CREATE DATABASE marketing_campaign_analysis;

\c marketing_campaign_analysis

CREATE TABLE marketing_campaigns (
    campaignid VARCHAR(20),
    startdate DATE,
    enddate DATE,
    channel VARCHAR(30),
    impressions INT,
    clicks INT,
    leads INT,
    conversions INT,
    cost_usd NUMERIC(12,2),
    revenue_usd NUMERIC(12,2),
    roi NUMERIC(6,2),

    profit NUMERIC(12,2),
    roas NUMERIC(6,2),
    profit_margin NUMERIC(6,2),

    ctr NUMERIC(6,2),
    lead_conversion_rate NUMERIC(6,2),
    customer_conversion_rate NUMERIC(6,2),

    cpc NUMERIC(8,2),
    cpl NUMERIC(8,2),
    cpa NUMERIC(8,2),

    campaign_duration INT,

    start_year INT,
    start_month INT,
    start_month_name VARCHAR(20),
    quarter INT,
    weekday VARCHAR(20)
);

\copy marketing_campaigns FROM 'C:/Users/P Surakshith/OneDrive/Desktop/Surakshith- Projects/Bank-Marketing-Campaign-Performance/Data/processed/marketing_campaign_engineered.csv' DELIMITER ',' CSV HEADER;

SELECT COUNT(*)
FROM marketing_campaigns;

SELECT *
FROM marketing_campaigns
LIMIT 10;

SELECT
COUNT(*) FILTER (WHERE campaignid IS NULL) AS campaignid_nulls,
COUNT(*) FILTER (WHERE channel IS NULL) AS channel_nulls,
COUNT(*) FILTER (WHERE cost_usd IS NULL) AS cost_nulls,
COUNT(*) FILTER (WHERE revenue_usd IS NULL) AS revenue_nulls,
COUNT(*) FILTER (WHERE profit IS NULL) AS profit_nulls
FROM marketing_campaigns;

SELECT
MIN(startdate),
MAX(startdate),
MIN(enddate),
MAX(enddate)
FROM marketing_campaigns;
