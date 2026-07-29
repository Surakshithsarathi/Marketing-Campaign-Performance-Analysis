03_Channel_analysis.sql

SELECT
    channel,
    COUNT(*) AS campaigns,
    ROUND(SUM(cost_usd),2) AS total_spend,
    ROUND(SUM(revenue_usd),2) AS total_revenue,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(AVG(roas),2) AS avg_roas,
    ROUND(AVG(roi),2) AS avg_roi,
    SUM(leads) AS total_leads,
    SUM(conversions) AS total_conversions
FROM marketing_campaigns
GROUP BY channel
ORDER BY total_profit DESC;

SELECT
    channel,
    ROUND(AVG(cpc),2) AS avg_cpc,
    ROUND(AVG(cpl),2) AS avg_cpl,
    ROUND(AVG(cpa),2) AS avg_cpa,
    ROUND(AVG(ctr),2) AS avg_ctr,
    ROUND(AVG(lead_conversion_rate),2) AS avg_lead_conversion_rate,
    ROUND(AVG(customer_conversion_rate),2) AS avg_customer_conversion_rate
FROM marketing_campaigns
GROUP BY channel
ORDER BY avg_cpa;

SELECT
    channel,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(
        SUM(revenue_usd) * 100 /
        (SELECT SUM(revenue_usd) FROM marketing_campaigns),
        2
    ) AS revenue_share_percent
FROM marketing_campaigns
GROUP BY channel
ORDER BY revenue DESC;

SELECT
    channel,
    ROUND(SUM(profit),2) AS profit,
    ROUND(
        SUM(profit) * 100 /
        (SELECT SUM(profit) FROM marketing_campaigns),
        2
    ) AS profit_share_percent
FROM marketing_campaigns
GROUP BY channel
ORDER BY profit DESC;

SELECT
    channel,
    ROUND(SUM(revenue_usd),2) AS revenue,
    RANK() OVER (
        ORDER BY SUM(revenue_usd) DESC
    ) AS revenue_rank
FROM marketing_campaigns
GROUP BY channel;

SELECT
    channel,
    COUNT(*) AS campaigns,
    ROUND(SUM(cost_usd),2) AS spend,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(AVG(roas),2) AS roas,
    ROUND(AVG(cpa),2) AS cpa,
    ROUND(AVG(ctr),2) AS ctr,
    SUM(conversions) AS conversions
FROM marketing_campaigns
GROUP BY channel
ORDER BY revenue DESC;

