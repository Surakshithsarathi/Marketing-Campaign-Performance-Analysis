02_kpi_analysis.sql

SELECT
    COUNT(*) AS total_campaigns,
    SUM(cost_usd) AS total_marketing_spend,
    SUM(revenue_usd) AS total_revenue,
    SUM(profit) AS total_profit,
    ROUND(AVG(roas),2) AS avg_roas,
    ROUND(AVG(roi),2) AS avg_roi,
    SUM(leads) AS total_leads,
    SUM(conversions) AS total_conversions
FROM marketing_campaigns;

SELECT
    ROUND(
        (SUM(profit) / SUM(revenue_usd)) * 100,
        2
    ) AS overall_profit_margin
FROM marketing_campaigns;

SELECT
    ROUND(AVG(cost_usd),2) AS avg_campaign_cost,
    ROUND(AVG(revenue_usd),2) AS avg_campaign_revenue,
    ROUND(AVG(profit),2) AS avg_campaign_profit,
    ROUND(AVG(conversions),2) AS avg_campaign_conversions
FROM marketing_campaigns;

SELECT
    COUNT(*) AS campaigns,
    SUM(cost_usd) AS spend,
    SUM(revenue_usd) AS revenue,
    SUM(profit) AS profit,
    ROUND(AVG(roas),2) AS roas,
    ROUND(AVG(cpa),2) AS avg_cpa
FROM marketing_campaigns;

## Executive KPI Analysis

The second stage of the SQL analysis focused on generating executive-level KPIs that summarize the overall performance of the marketing campaigns.

Key metrics calculated include:

- Total Campaigns
- Total Marketing Spend
- Total Revenue
- Total Profit
- Average ROAS
- Average ROI
- Total Leads
- Total Conversions
- Overall Profit Margin
- Average Campaign Performance

These KPIs provide a high-level overview of business performance and form the basis for executive reporting dashboards.