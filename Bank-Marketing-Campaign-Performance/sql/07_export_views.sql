07_export_views.sql

CREATE OR REPLACE VIEW vw_executive_summary AS

SELECT
    COUNT(*) AS total_campaigns,
    ROUND(SUM(cost_usd),2) AS total_spend,
    ROUND(SUM(revenue_usd),2) AS total_revenue,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(AVG(roas),2) AS average_roas,
    ROUND(AVG(roi),2) AS average_roi,
    SUM(leads) AS total_leads,
    SUM(conversions) AS total_conversions
FROM marketing_campaigns;

SELECT * FROM vw_executive_summary;

CREATE OR REPLACE VIEW vw_channel_dashboard AS

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
GROUP BY channel;

CREATE OR REPLACE VIEW vw_monthly_dashboard AS

SELECT
    start_month,
    start_month_name,
    COUNT(*) AS campaigns,
    ROUND(SUM(cost_usd),2) AS spend,
    ROUND(SUM(revenue_usd),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(AVG(roas),2) AS roas
FROM marketing_campaigns
GROUP BY start_month, start_month_name
ORDER BY start_month;

CREATE OR REPLACE VIEW vw_campaign_dashboard AS 
SELECT
    campaignid,
    channel,
    impressions,
    clicks,
    leads,
    conversions,
    cost_usd,
    revenue_usd,
    profit,
    roas,
    roi,
    ctr,
    cpc,
    cpl,
    cpa,
    campaign_duration
FROM marketing_campaigns;

SELECT * FROM vw_channel_dashboard;

SELECT * FROM vw_monthly_dashboard;

SELECT * FROM vw_campaign_dashboard LIMIT 20;