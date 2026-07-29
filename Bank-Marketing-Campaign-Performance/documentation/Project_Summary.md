# Project Summary

## Marketing Campaign Performance Analysis using PostgreSQL and Power BI

### Overview

This project was developed to simulate the responsibilities of a Business Analyst working within a marketing organization. The primary objective was to transform a large-scale marketing campaign dataset into actionable business insights by combining SQL-based analytical processing with interactive Power BI dashboards.

Rather than limiting the project to descriptive visualization, I approached it as an end-to-end business intelligence solution. The workflow included data preparation, database management, SQL business analysis, dashboard development, and executive reporting, closely following a real-world analytics pipeline.

The project analyzes approximately **10,000 marketing campaigns** executed across five digital marketing channels—Display, Search, Social, Email, and Influencer—to evaluate campaign performance, advertising efficiency, customer acquisition costs, profitability, and seasonal marketing trends.

---

# Project Objectives

The project was designed to answer several key business questions:

- Which marketing channel generates the highest revenue?
- Which channel contributes the most profit?
- Which campaigns deliver the highest Return on Ad Spend (ROAS)?
- Which campaigns provide the highest Return on Investment (ROI)?
- Which channels acquire customers at the lowest cost?
- Which campaigns generate the highest conversions?
- How does marketing performance change throughout the year?
- Which campaigns should receive additional investment?
- What strategic recommendations can improve future marketing performance?

---

# Dataset

The project uses a marketing campaign dataset containing approximately **10,000 campaign records** with business-related KPIs.

Key attributes include:

- Campaign ID
- Marketing Channel
- Campaign Cost
- Revenue
- Profit
- ROI
- ROAS
- Impressions
- Clicks
- Leads
- Conversions
- CTR
- CPC
- CPL
- CPA
- Customer Conversion Rate
- Campaign Start Date
- Month
- Quarter
- Weekday

---

# Project Workflow

## Phase 1 — Database Design

I imported the raw CSV dataset into PostgreSQL and created a structured relational database for analysis.

This phase involved:

- Creating the marketing analytics database
- Designing the campaign table
- Importing and validating the dataset
- Verifying data quality
- Checking missing values and duplicate records
- Reviewing column data types
- Understanding business metrics before analysis

---

## Phase 2 — SQL Business Analysis

Instead of using SQL only for data retrieval, I performed business-focused analytical queries similar to those expected from a Business Analyst or Marketing Analyst.

The SQL analysis covered:

### Channel Performance Analysis

- Revenue by marketing channel
- Profit contribution
- Campaign distribution
- Revenue share
- Profit share
- ROAS comparison
- ROI comparison

---

### Campaign Performance Analysis

Identification of:

- Highest revenue campaigns
- Most profitable campaigns
- Highest ROI campaigns
- Best ROAS campaigns
- Lowest CPA campaigns
- Highest conversion campaigns

---

### Time Intelligence Analysis

Marketing performance across:

- Months
- Quarters
- Weekdays

This helped identify seasonal performance trends and campaign consistency throughout the year.

---

### Customer Acquisition Analysis

Evaluation of:

- Cost Per Click (CPC)
- Cost Per Lead (CPL)
- Cost Per Acquisition (CPA)
- Lead Conversion Rate
- Customer Conversion Rate

---

### Advanced SQL Concepts Applied

Throughout the analysis I utilized:

- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Views
- GROUP BY
- ORDER BY
- HAVING
- Filtering
- Derived Metrics
- Business KPI Calculations

---

## Phase 3 — SQL Views

To improve dashboard performance and separate business logic from visualization, I created reusable SQL Views.

The views were designed to support different analytical perspectives:

- Channel Performance
- Campaign Analysis
- Time Intelligence
- Executive Dashboard Metrics

Using views made the Power BI development process significantly cleaner while demonstrating good database design practices.

---

## Phase 4 — Power BI Dashboard Development

The SQL views were connected directly to Power BI to build an interactive business dashboard.

The dashboard consists of four report pages.

### Page 1 — Executive Overview

Provides a high-level summary including:

- KPI Cards
- Top Revenue Campaigns
- Revenue vs Profit Analysis
- ROAS Distribution
- Campaign Summary Table

---

### Page 2 — Channel Performance

Focuses on marketing channel comparisons through:

- Revenue Contribution
- Marketing Funnel
- Profit Contribution
- Bubble Chart Analysis
- Performance Matrix
- Interactive Filtering

---

### Page 3 — Campaign Analysis

Examines individual campaign performance using:

- Revenue Rankings
- Campaign KPIs
- Campaign Comparison Table
- Profit vs Revenue Scatter Plot
- ROAS Distribution
- Campaign Filters

---

### Page 4 — Time Intelligence

Analyzes performance over time using:

- Monthly Revenue
- Monthly Profit
- Monthly ROAS
- Time-based Campaign Table
- Revenue Trend Analysis

---

## Interactive Features

The dashboard also includes:

- Cross-filtering
- Drill-down capability
- Synchronized slicers
- Channel filters
- Quarter filters
- Month filters
- Weekday filters
- Interactive tables
- Executive KPI cards

---

# Business Analysis

After completing the dashboard, I conducted a comprehensive business analysis by interpreting the visualizations and SQL outputs rather than simply presenting charts.

The analysis identified:

- Highest-performing marketing channels
- Most profitable campaigns
- Best customer acquisition channels
- Campaign efficiency
- Revenue distribution
- Seasonal marketing trends
- Funnel performance
- Customer conversion patterns

The project concludes with strategic business recommendations that could support marketing decision-making.

---

# Tools & Technologies

- PostgreSQL
- SQL
- Power BI Desktop
- CSV Dataset
- Git
- GitHub

---

# Skills Demonstrated

### Database Skills

- Database Design
- Data Import
- Data Validation
- SQL Query Writing
- SQL Optimization
- View Creation

---

### SQL Skills

- Joins
- Aggregate Functions
- Window Functions
- Ranking
- CASE Statements
- Common Table Expressions
- Business KPI Calculations
- Time Intelligence Queries

---

### Business Intelligence Skills

- KPI Design
- Dashboard Development
- Executive Reporting
- Interactive Visualization
- Performance Analysis
- Marketing Analytics

---

### Business Analysis Skills

- Requirement Analysis
- Marketing Performance Evaluation
- Customer Acquisition Analysis
- Campaign Performance Analysis
- Profitability Analysis
- Strategic Recommendation Development
- Data Storytelling
- Insight Generation

---

# Key Outcomes

Through this project, I demonstrated how raw marketing campaign data can be transformed into meaningful business insights using a structured analytics workflow.

By integrating PostgreSQL for analytical processing with Power BI for visualization, I built a complete business intelligence solution capable of supporting strategic marketing decisions.

More importantly, this project strengthened my understanding of how a Business Analyst translates data into actionable recommendations by combining technical analysis with business reasoning. It also reinforced best practices in SQL development, dashboard design, KPI reporting, and executive communication, providing hands-on experience with the complete lifecycle of a modern analytics project.