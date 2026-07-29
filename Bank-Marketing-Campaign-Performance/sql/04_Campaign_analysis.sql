04_Campaign_analysis.sql

SELECT
    campaignid,
    channel,
    revenue_usd,
    profit,
    roas,
    conversions
FROM marketing_campaigns
ORDER BY revenue_usd DESC
LIMIT 10;

SELECT
    campaignid,
    channel,
    profit,
    revenue_usd,
    cost_usd,
    profit_margin
FROM marketing_campaigns
ORDER BY profit DESC
LIMIT 10;

SELECT
    campaignid,
    channel,
    roi,
    roas,
    profit_margin
FROM marketing_campaigns
ORDER BY roi DESC, roas DESC
LIMIT 10;

SELECT
    campaignid,
    channel,
    cpa,
    conversions,
    profit
FROM marketing_campaigns
ORDER BY cpa ASC
LIMIT 10;

SELECT
    campaignid,
    channel,
    conversions,
    leads,
    customer_conversion_rate
FROM marketing_campaigns
ORDER BY conversions DESC
LIMIT 10;

SELECT
    campaignid,
    channel,
    revenue_usd,
    profit,
    RANK() OVER (ORDER BY revenue_usd DESC) AS revenue_rank
FROM marketing_campaigns
ORDER BY revenue_rank
LIMIT 20;

SELECT
    campaignid,
    channel,
    profit,
    CASE
        WHEN profit >= 7000 THEN 'Excellent'
        WHEN profit >= 5000 THEN 'Good'
        WHEN profit >= 3000 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance_category
FROM marketing_campaigns
ORDER BY profit DESC;

