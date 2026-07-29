06_advanced_analysis.sql

WITH ranked_campaigns AS (
    SELECT
        campaignid,
        channel,
        revenue_usd,
        profit,
        ROW_NUMBER() OVER (
            PARTITION BY channel
            ORDER BY revenue_usd DESC
        ) AS rn
    FROM marketing_campaigns
)

SELECT
    campaignid,
    channel,
    revenue_usd,
    profit
FROM ranked_campaigns
WHERE rn = 1
ORDER BY revenue_usd DESC;

SELECT
    campaignid,
    channel,
    revenue_usd
FROM marketing_campaigns m
WHERE revenue_usd >
(
    SELECT AVG(revenue_usd)
    FROM marketing_campaigns
    WHERE channel = m.channel
)
ORDER BY revenue_usd DESC;

SELECT
    start_month,
    start_month_name,
    ROUND(SUM(revenue_usd),2) AS monthly_revenue,

    ROUND(
        SUM(SUM(revenue_usd))
        OVER (ORDER BY start_month),
        2
    ) AS cumulative_revenue

FROM marketing_campaigns
GROUP BY start_month, start_month_name
ORDER BY start_month;

SELECT
    campaignid,
    channel,
    revenue_usd,

    NTILE(4) OVER
    (
        ORDER BY revenue_usd DESC
    ) AS revenue_quartile

FROM marketing_campaigns;

SELECT
    campaignid,
    revenue_usd,

    LAG(revenue_usd)
    OVER
    (
        ORDER BY revenue_usd DESC
    ) AS previous_revenue,

    ROUND(
        revenue_usd -
        LAG(revenue_usd)
        OVER (ORDER BY revenue_usd DESC),
        2
    ) AS revenue_difference

FROM marketing_campaigns
ORDER BY revenue_usd DESC
LIMIT 20;

SELECT
    campaignid,
    channel,
    revenue_usd,

    ROUND(
        revenue_usd * 100 /
        SUM(revenue_usd)
        OVER (PARTITION BY channel),
        2
    ) AS channel_revenue_share

FROM marketing_campaigns
ORDER BY channel, revenue_usd DESC;

CREATE OR REPLACE VIEW vw_channel_summary AS

SELECT
    channel,
    COUNT(*) AS campaigns,
    ROUND(SUM(cost_usd),2) AS spend,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(AVG(roas),2) AS avg_roas,
    ROUND(AVG(cpa),2) AS avg_cpa,
    SUM(conversions) AS conversions
FROM marketing_campaigns
GROUP BY channel;

SELECT *
FROM vw_channel_summary;