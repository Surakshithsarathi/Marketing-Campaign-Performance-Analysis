05_time_analysis.sql

SELECT
    start_month_name,
    COUNT(*) AS campaigns,
    ROUND(SUM(cost_usd),2) AS spend,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(AVG(roas),2) AS avg_roas
FROM marketing_campaigns
GROUP BY start_month, start_month_name
ORDER BY start_month;

SELECT
    quarter,
    COUNT(*) AS campaigns,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(AVG(roas),2) AS avg_roas
FROM marketing_campaigns
GROUP BY quarter
ORDER BY quarter;

SELECT
    weekday,
    COUNT(*) AS campaigns,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(AVG(ctr),2) AS avg_ctr,
    ROUND(AVG(cpa),2) AS avg_cpa
FROM marketing_campaigns
GROUP BY weekday
ORDER BY revenue DESC;

SELECT
    campaign_duration,
    COUNT(*) AS campaigns,
    ROUND(AVG(revenue_usd),2) AS avg_revenue,
    ROUND(AVG(profit),2) AS avg_profit,
    ROUND(AVG(roas),2) AS avg_roas
FROM marketing_campaigns
GROUP BY campaign_duration
ORDER BY campaign_duration;

SELECT
    start_month_name,
    ROUND(SUM(profit),2) AS total_profit,
    DENSE_RANK() OVER (
        ORDER BY SUM(profit) DESC
    ) AS profit_rank
FROM marketing_campaigns
GROUP BY start_month_name
ORDER BY profit_rank;

